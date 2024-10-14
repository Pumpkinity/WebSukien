using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebE
{
    public partial class Update : System.Web.UI.Page
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        public static long idSelect = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }
        }
        private void LoadData()
        {
            string strId = Request.QueryString["IdTicket"];
            if (strId != "")
            {
                var data = from cd in db.Tickets
                           where cd.IdTicket == Convert.ToInt64(strId)
                           select cd;
                if (data != null)
                {
                    Ticket infoSP = data.First();
                    idSelect = infoSP.IdTicket;
                    txtTen.Text = infoSP.Header;
                    imgsp.ImageUrl = "..\\Ticket\\" + infoSP.Img;
                    txtPr.Text = infoSP.Price;
                    txtLc.Text = infoSP.Location;
                    txtDate.Text = infoSP.Date;
                    TxtQu.Text = infoSP.Quantity;
                }
            }
        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (txtTen.Text != "")
            {
                var data = from cd in db.Tickets
                           where cd.IdTicket == idSelect
                           select cd;
                if (data != null)
                {
                    Ticket infoSP = data.First();
                    infoSP.Header = txtTen.Text;
                    if (FileUploadanh.HasFile)
                    {
                        infoSP.Img = FileUploadanh.FileName;
                        FileUploadanh.SaveAs(Server.MapPath("Ticket\\") + infoSP.Img);
                    }
                    infoSP.Price = txtPr.Text;
                    infoSP.Location = txtLc.Text;
                    infoSP.Date= txtDate.Text;
                    infoSP.Quantity = TxtQu.Text;
                    db.SubmitChanges();
                    ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Cập nhật thành công!!!')", true);
                    Response.Redirect("Manage.aspx");
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Vui lòng nhập lại thông tin!!!')", true);

            }
        }
    }
}