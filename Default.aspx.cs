using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    private Dictionary<int, string> dictCarFactory = new Dictionary<int, string>();

    protected void Page_Load(object sender, EventArgs e)
    {
        //DropDownList1_SelectedIndexChanged(sender, e);
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
     //   DropDownList2.Items.Clear();

    }

}