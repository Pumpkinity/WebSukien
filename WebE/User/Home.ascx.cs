using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebE.User
{
    public partial class Home : System.Web.UI.UserControl
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        public static List<Cate> listCa = new List<Cate>();
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadCa();
        }
        void LoadCa()
        {
            var data = from q in db.Cates
                       select q;

            if (data != null && data.Count() > 0)
            {
                listCa = data.ToList();
            }
        }
    }
}