using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebE.User
{
    public partial class Cart : System.Web.UI.UserControl
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        public Ticket isp = new Ticket();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["IdTicket"] != null && Request.QueryString["IdTicket"].ToString() != "")
            {
                long Idsp = Convert.ToInt32(Request.QueryString["IdTicket"].ToString());
                loadSP(Idsp);
            }
            else
            {
                Response.Redirect("error.aspx");
            }
        }
        void loadSP(long IDTicket)
        {
            var data = from q in db.Tickets
                       where q.IdTicket == IDTicket
                       select q;
            if (data != null && data.Count() > 0)
            {
                isp = data.First();

            }
        }

    }
}