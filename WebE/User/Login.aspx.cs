using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebE.User
{
    public partial class Login : System.Web.UI.Page
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        public static string user = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }
        protected void btLogin_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text != "" && txtPassword.Text != "")
            {
                Session["username"] = txtUsername.Text;
                Session["password"] = txtPassword.Text;
                var data = from q in db.Logins
                           where q.Username == txtUsername.Text
                           && q.Password == txtPassword.Text
                           select q;
                var dete = from q in db.Admins
                           where q.admin1 == txtUsername.Text
                           && q.pass == txtPassword.Text
                           select q;
                if (data != null && data.Count() > 0)
                {
                    Response.Redirect("~/Accpage.aspx");
                    user = data.First().Username;
                }
                else
                {
                    Response.Redirect("~/Manage.aspx");
                    user = data.First().Username;
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Kiểm tra lại thông tin')", true);
            }
        }
    }
}