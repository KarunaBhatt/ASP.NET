<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegForm.aspx.cs" Inherits="RegForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-image:url(');backgound-repeat:no-repeat;background-size:cover;">
    <form id="form1" runat="server">
    <div>
       <h1>SignIn</h1>
        </br>
        </br>
        <asp:TextBox ID="Tid" runat="server"></asp:TextBox>
         </br>
        </br>
         <asp:Label ID="Label2" runat="server" Text="Username :"></asp:Label>
        <asp:TextBox ID="TUser" runat="server"></asp:TextBox>
        </br>
        </br>
         <asp:Label ID="Label3" runat="server" Text="Password :"></asp:Label>
        <asp:TextBox ID="TPass" runat="server"></asp:TextBox>
        </br>
        </br>
        
         <asp:Label ID="Label4" runat="server" Text="Email :"></asp:Label>
        <asp:TextBox ID="TMail" runat="server"></asp:TextBox>
        </br>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TMail" ErrorMessage="Please Enter valide Email " ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </br>
        </br>

         <asp:Label ID="Label5" runat="server" Text="Mobile No :"></asp:Label>
        <asp:TextBox ID="TMoNo" runat="server"></asp:TextBox>
        </br>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TMoNo" ErrorMessage="Please Enter valid Phone No !" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
        </br>
        </br>
         <asp:Label ID="Label6" runat="server" Text="Address :"></asp:Label>
        <asp:TextBox ID="TAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
         &nbsp;</br>
        </br>
         </br>
        </br>
        <asp:Button ID="Button1" runat="server" Text="SUBMIT" OnClick="Button1_Click"></asp:Button>
    </div>
    </form>
</body>
</html>
