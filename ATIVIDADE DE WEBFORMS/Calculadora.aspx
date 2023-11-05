<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculadora.aspx.cs" Inherits="ATIVIDADE_DE_WEBFORMS.Calculadora" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Calculadora</title>
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
        }

        form {
            max-width: 500px;
            margin: 0 auto;
            padding: 50px;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        div, p {
            margin: 10px 0;
        }

        label {
            display: block;
            font-weight: bold;
        }

        input[type="text"], select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
            font-size: 16px;
        }

        .btnCalcular {
            display: block;
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 3px;
            font-size: 16px;
            cursor: pointer;
           
        }

        .btnCalcular:hover {
            background-color: #0056b3;
        }

        .result {
            font-size: 20px;
            text-align: center;
            margin-top: 20px;
        }

        .operacoes{
            width: 15%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
            font-size: 20px;
        }
    </style>
</head>
<body>
    <h1>Calculadora</h1>
    

    <form id="form1" runat="server">
        <div>
            Primeiro valor: <asp:TextBox ID="value1" runat="server"></asp:TextBox>
        </div>
         <p>
       <asp:DropDownList ID="DropDownList1" runat="server" class="operacoes"></asp:DropDownList>

        </p>
        <p>
            Segundo valor: <asp:TextBox ID="value2" runat="server"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
       
        <p>

        <asp:Button ID="btnCalcular" runat="server" Text="Calcular" OnClick="btnCalcular_Click" class="btnCalcular" />
        </p>
        <p class="result">
        <asp:Label ID="resultadoLabel" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>
