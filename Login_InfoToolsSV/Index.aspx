<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Login_InfoToolsSV.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" />
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="Recursos/css/Estilos.css" rel="stylesheet" />

    <title>Inicio</title>
</head>
<body>
    <form id="formulario_index" class="form-control" runat="server">
        <div>
            <!-- <h1>Bienvenid@ al Sistema BL</h1> -->
            <asp:Label ID="lblBienvenida" runat="server" Text="" CssClass="h3"></asp:Label>
            <div>
                <asp:Button ID="BtnCerrar" runat="server" Text="Cerrar Sesión"  CssClass="btn btn-dark" OnClick="BtnCerrar_Click" />
            </div>
        </div>
    </form>
</body>
</html>
