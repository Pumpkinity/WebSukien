using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebE.User
{
    public partial class Detail : System.Web.UI.UserControl
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        public static List<Dt> listdt = new List<Dt>();
        public static List<Cate> listCa = new List<Cate>();
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadCa();
            if (Request.QueryString["IdCate"] != null && Request.QueryString["IdCate"].ToString() != "")
            {
                long idca = Convert.ToInt32(Request.QueryString["IdCate"].ToString());
                LoadDETAIL(idca);
            }
            else
            {
                Response.Redirect("error.aspx");
            }
        }
        void LoadDETAIL(long idca)
        {
            try
            {
                var data = from q in db.Dts
                           where q.idcat== idca
                           select q;
                if (data != null && data.Count() > 0)
                {
                    listdt = data.ToList();
                }

            }
            catch
            {
                Response.Redirect("error.aspx");
            }

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