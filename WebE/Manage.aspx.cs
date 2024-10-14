using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebE
{
    public partial class Manage : System.Web.UI.Page
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }
        }
        private void LoadData()
        {
            var data = from cd in db.Tickets
                       select cd;
            if (data != null)
            {
                gridadd.DataSource = data.ToList();
                gridadd.DataBind();
            }
        }
        protected void gridadd_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            if (((LinkButton)e.CommandSource).CommandName == "GetIdSanPham")
            {
                long idNewSelect = Convert.ToInt64(gridadd.DataKeys[e.Item.ItemIndex].ToString());
                var dataadd = from bv in db.Tickets
                              where bv.IdTicket == idNewSelect
                              select bv;
                if (dataadd != null && dataadd.Count() > 0)
                {
                    Response.Redirect("Update.aspx?IdTicket=" + idNewSelect.ToString());
                }

            }
            if (((LinkButton)e.CommandSource).CommandName == "GetIddelete")
            {
                long idNewSelect = Convert.ToInt64(gridadd.DataKeys[e.Item.ItemIndex].ToString());
                var dataadd = from bv in db.Tickets
                              where bv.IdTicket == idNewSelect
                              select bv;
                if (dataadd != null && dataadd.Count() > 0)
                {
                    Ticket infoA = dataadd.First();
                    db.Tickets.DeleteOnSubmit(infoA);
                    db.SubmitChanges();
                    LoadData();
                }
            }
        }
        protected void gridadd_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
        {
            gridadd.CurrentPageIndex = e.NewPageIndex;
            LoadData();
        }
    }
}