using System;
using System.Web.UI.WebControls;

namespace ATIVIDADE_DE_WEBFORMS
{
    public partial class Calculadora : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                DropDownList1.Items.Add(new ListItem("+"));
                DropDownList1.Items.Add(new ListItem("-"));
                DropDownList1.Items.Add(new ListItem("x"));
                DropDownList1.Items.Add(new ListItem("÷"));
            }
        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedIndex > -1) 
            {
                double valor1, valor2;
                if (double.TryParse(value1.Text, out valor1) && double.TryParse(value2.Text, out valor2))
                {
                    double resultado = 0;

                  
                    switch (DropDownList1.SelectedValue)
                    {
                        case "+":
                            resultado = valor1 + valor2;
                            break;
                        case "-":
                            resultado = valor1 - valor2;
                            break;
                        case "x":
                            resultado = valor1 * valor2;
                            break;
                        case "÷":
                            if (valor2 != 0) 
                                resultado = valor1 / valor2;
                            else
                            {
                                
                            }
                            break;
                    }

                    
                    resultadoLabel.Text = "Resultado: " + resultado.ToString();
                }
                else
                {
                   
                }
            }
            else
            {
               
            }
        }

        protected void value2_TextChanged(object sender, EventArgs e)
        {
            
        }
    }
}
