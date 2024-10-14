using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebE
{
    public partial class Add : System.Web.UI.Page
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ClearForm();
            }
        }

        protected void btnThemmoi_Click(object sender, EventArgs e)
        {
            if (txtTen.Text != "")
            {
                Ticket infoSP = new Ticket();
                infoSP.Header = txtTen.Text;
                if (FileUploadanh.HasFile)
                {
                    infoSP.Img = FileUploadanh.FileName;
                    FileUploadanh.SaveAs(Server.MapPath("Ticket\\") + infoSP.Img);
                }
                infoSP.Price = txtPr.Text;
                infoSP.Location = txtLc.Text;
                infoSP.Date = txtDate.Text;
                infoSP.Quantity = TxtQu.Text;
                db.Tickets.InsertOnSubmit(infoSP);
                db.SubmitChanges();
                ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Thêm mới thành công!!!')", true);
                ClearForm();
                Response.Redirect("Quanly.aspx");
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Nhập lại thông tin cho phù hợp!!!')", true);

            }
        }
        private void ClearForm()
        {
            txtTen.Text = "";
            txtPr.Text = "";
            txtLc.Text = "";
            txtDate.Text = "";
            TxtQu.Text = "";
        }
    }
}