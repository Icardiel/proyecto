<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PowerLife.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Powerlife | Control de Acceso</title>
    <link href="Resources/css/estilos.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
</head>
<body>
    <div class="container well contenedor">
        <div class="row">
            <div class="col-xl-12">
                <asp:Image ID="logo" ImageUrl="../Resources/Images/PL.png" runat="server" />
            </div>

            <div class="col-xl-12">                
                <h2>Iniciar Sesión</h2>
            </div>
        </div>
        <form runat="server" class="form-horizontal">
            <asp:ScriptManager ID="smLogin" runat="server"></asp:ScriptManager>
            <div class="form-group">
                <div class="col-sm-12">
                    <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control" MaxLength="10" CausesValidation="false" placeholder="Usuario"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvUsuario" runat="server" ErrorMessage="Campo Obligatorio" Display="Dynamic" ForeColor="Red" ControlToValidate="txtUsuario"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-12">
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Campo Obligatorio" Display="Dynamic" ForeColor="Red" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group col-sm-12">
                <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" OnClick="Ingresar_Click" CssClass="form-control btn btn-primary" />
                <asp:CheckBox ID="chkRecordarClave" runat="server" />
                Recordar Password
            </div>
        </form>
    </div>
</body>
</html>
