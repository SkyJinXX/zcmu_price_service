using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Word = Microsoft.Office.Interop.Word;

public partial class users : System.Web.UI.Page
{
    SqlConnection objConnection = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Write("<script>alert('请先登录');window.location.href='backstageManagementPage.aspx'</script>");

        }
        objConnection.ConnectionString = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
    }

    /// <summary>
    /// 读取 word文档 返回内容
    /// </summary>
    /// <param name="path"></param>
    /// <returns></returns>
    public static string GetWordContent(string path)
    {
        try
        {
            Word.Application app = new Microsoft.Office.Interop.Word.Application();
            Type wordType = app.GetType();
            Word.Document doc = null;
            object unknow = Type.Missing;
            app.Visible = false;
            object file = path;
            doc = app.Documents.Open(ref file,
                ref unknow, ref unknow, ref unknow, ref unknow,
                ref unknow, ref unknow, ref unknow, ref unknow,
                ref unknow, ref unknow, ref unknow, ref unknow,
                ref unknow, ref unknow, ref unknow);
            int count = doc.Paragraphs.Count;
            StringBuilder sb = new StringBuilder();
            for (int i = 1; i <= count; i++)
            {

                sb.Append(doc.Paragraphs[i].Range.Text.Trim());
            }

            doc.Close(ref unknow, ref unknow, ref unknow);
            wordType.InvokeMember("Quit", System.Reflection.BindingFlags.InvokeMethod, null, app, null);
            doc = null;
            app = null;
            //垃圾回收
            GC.Collect();
            GC.WaitForPendingFinalizers();
            string temp = sb.ToString();
            //if (temp.Length > 200)
            //    return temp.Substring(0, 200);
            //else
            return temp;
        }
        catch
        {
            return "";
        }
    }


    string t= DateTime.Now.ToString();
    protected void Button1_Click(object sender, EventArgs e)
    {
        objConnection.ConnectionString = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
        objConnection.Open();
        string strName = FileUpload1.PostedFile.FileName;//使用fileupload控件获取上传文件的文件名
        if (strName != "")//如果文件名存在
        {
            bool fileOK = false;
            int i = strName.LastIndexOf(".");//获取。的索引顺序号，在这里。代表图片名字与后缀的间隔
            string kzm = strName.Substring(i);//获取文件扩展名的另一种方法 string fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName).ToLower();
            string newName = Guid.NewGuid().ToString();//生成新的文件名，保证唯一性
            string juedui = Server.MapPath("~\\announcement\\");//设置文件保存的本地目录绝对路径，对于路径中的字符“＼”在字符串中必须以“＼＼”表示，因为“＼”为特殊字符。或者可以使用上一行的给路径前面加上＠
            string newFileName = juedui + strName;
            if (FileUpload1.HasFile)//验证 FileUpload 控件确实包含文件
            {
                String[] allowedExtensions = { ".docx" };
                for (int j = 0; j < allowedExtensions.Length; j++)
                {
                    if (kzm == allowedExtensions[j])
                    {
                        fileOK = true;
                    }
                }
            }
            if (fileOK)
            {
                try
                {
                    // 检查文件是否存在
                    if (File.Exists(newFileName))
                    {
                        HttpContext.Current.Response.Write("<script>alert('文件已存在，请重新上传。');</script>");
                    }
                    else
                    {
                        FileUpload1.SaveAs(newFileName);
                        HttpContext.Current.Response.Write("<script>alert('文件已成功上传。');</script>");
                        //HttpContext.Current.Response.Write("<script>alert('数据插入成功。');</script>");
                        /*将word存入数据库
                        StreamReader sr = new StreamReader(newFileName);
                        string line = null;
                        while ((line = sr.ReadLine()) != null)
                        {
                            string[] spilt = line.Split(new char[] { ' ' });
                            String sql2 = string.Format("insert into announcement(article) values('{0}' )"
                                   , spilt[0]);
                            aa.CommandText = sql2;
                            aa.ExecuteNonQuery();
                            
                        }
                        */
                    }
                }
                catch {
                   
                }
                String s = GetWordContent(newFileName);
            }
            else
            {
                Response.Write("<script>alert('不能上传该类型文件')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('请选择文件')</script>");
        }
        
        String SqlStr = "insert into announcement values ('" + TextBox1.Text + "','" + "','"+t+"', '"
                            + (String)DropDownList1.SelectedValue + "')";
        SqlCommand cmd = new SqlCommand(SqlStr, objConnection);
        cmd.CommandText = SqlStr;
        cmd.ExecuteScalar();
        objConnection.Close();
    }
}