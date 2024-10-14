using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebE.User
{
    public partial class Tickets : System.Web.UI.UserControl
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        public static List<Ticket> tk = new List<Ticket>();
        protected void Page_Load(object sender, EventArgs e)
        {
            Loadtk();
        }
        void Loadtk()
        {
            var data = from q in db.Tickets
                       select q;

            if (data != null && data.Count() > 0)
            {
                tk = data.ToList();
            }
        }
    }
}