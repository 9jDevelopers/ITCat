using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class New_attractions : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
       
            string AttractionsID = Request.Form["txtAttractionsID"];
            string Attractions_name = Request.Form["txtAttractions_name"];
            string Attractions_title = Request.Form["txtAttractions_title"];
            string Level_RadioButton = Request.Form["lang"];
            string Address = Request.Form["AddressTextBox"];
            string OpenTime = Request.Form["OpenTimeTextBox"];
            string Introduce = Request.Form["IntroduceTextBox"];
            string AttractionsTraffic = Request.Form["attractions_traffic"];
            string Contact = Request.Form["contact"];
            string AttractionsAnnotation = Request.Form["Attractions_annotation"];
            string AdministratorName = Request.Form["AdministratorName-TextBox"];
        
    }
   
}