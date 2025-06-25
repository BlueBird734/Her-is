<!DOCTYPE html>
<html lang="pt-BR">
<head runat="server">
    <meta charset="utf-8" />
    <title>Cadastro de Necessidades do Bairro</title>
    
</head>
<body>

    <style>
    body {
        font-family: 'Segoe UI', sans-serif;
        background-color: #f2f5f7;
        margin: 0;
        padding: 20px;
    }

    form {
        max-width: 700px;
        margin: auto;
        background: #ffffff;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 4px 12px rgba(0,0,0,0.1);
    }

    h2 {
        text-align: center;
        color: #2c3e50;
        margin-bottom: 30px;
    }

    .form-group {
        margin-bottom: 20px;
    }

    label {
        display: block;
        margin-bottom: 5px;
        font-weight: 600;
        color: #34495e;
    }

    .form-control {
        width: 100%;
        padding: 10px;
        font-size: 14px;
        border: 1px solid #ccc;
        border-radius: 6px;
        box-sizing: border-box;
        background-color: #fdfdfd;
    }

    .form-control:focus {
        border-color: #3498db;
        outline: none;
        box-shadow: 0 0 5px rgba(52,152,219,0.5);
    }

    .btn {
        background-color: #3498db;
        color: white;
        border: none;
        padding: 12px 25px;
        font-size: 16px;
        border-radius: 6px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .btn:hover {
        background-color: #2980b9;
    }

    #lblMensagem {
        font-weight: bold;
        font-size: 14px;
        margin-top: 15px;
        display: block;
        text-align: center;
    }
</style>


    <form id="form1" runat="server">
        <h2>Cadastro de Necessidades do Bairro</h2>

        <div class="form-group">
            <label>Nome do Morador:</label>
            <asp:TextBox ID="txtNome" runat="server" CssClass="form-control" Width="270px" />
        </div>

        <div class="form-group">
            <label>Categoria de Demanda:</label>
            <asp:DropDownList ID="ddlCategoria" runat="server" CssClass="form-control" Width="294px">
                <asp:ListItem Text="Selecione uma categoria" Value="" />
                <asp:ListItem Text="Infraestrutura" />
                <asp:ListItem Text="Segurança" />
                <asp:ListItem Text="Limpeza" />
                <asp:ListItem Text="Evento Social" />
            </asp:DropDownList>
        </div>

        <div class="form-group">
            <label>Descrição da Demanda:</label>
            <asp:TextBox ID="txtDescricao" runat="server" TextMode="MultiLine" Rows="5" CssClass="form-control" Height="182px" Width="276px" />
        </div>

        <div class="form-group">
    <label>Adicione o Local:</label>
</div>
        Bairro<br />
        <asp:TextBox ID="txtBairro0" runat="server" CssClass="form-control" Width="276px" />
        <br />
        <br />
        Casa<br />
        <asp:TextBox ID="txtCasa0" runat="server" CssClass="form-control" Width="275px" />
        <br />
        <br />
        Lojas<br />
        <asp:TextBox ID="txtLojas0" runat="server" CssClass="form-control" Width="273px" />
        <br />
        <br />
        Ruas<br />
        <asp:TextBox ID="txtRuas0" runat="server" CssClass="form-control" Width="272px" />
        <br />
        <br />

<br />

        <asp:Button ID="btnRegistrar" runat="server" Text="Registrar Demanda" CssClass="btn" OnClick="btnRegistrar_Click" />

        <br /><br />
        <asp:Label ID="lblMensagem" runat="server" ForeColor="Green" />

      

<script runat="server">

    Protected Sub Page_Load(sender As Object, gridLocais As Object, e As EventArgs)
        If Not IsPostBack Then
            Dim dt As New Data.DataTable()
            dt.Columns.Add("Bairro")
            dt.Columns.Add("Casa")
            dt.Columns.Add("Lojas")
            dt.Columns.Add("Ruas")

            dt.Rows.Add("Centro", "Casa 01", "Loja A", "Rua 10")
            dt.Rows.Add("Vila Nova", "Casa 02", "Loja B", "Rua 12")
            dt.Rows.Add("Jardim", "Casa 03", "Loja C", "Rua 5")

            gridLocais.DataSource = dt
            gridLocais.DataBind()
        End If
    End Sub

    ' Essa é a definição da classe (estrutura do objeto)
    Public Class Demanda
        Public Property Nome As String
        Public Property Categoria As String
        Public Property Descricao As String
        Public Property Local As String
    End Class

    Protected Sub btnRegistrar_Click(ByVal sender As Object, ByVal e As EventArgs)
        ' Validação simples
        If String.IsNullOrWhiteSpace(txtNome.Text) OrElse
           String.IsNullOrWhiteSpace(ddlCategoria.SelectedValue) OrElse
           String.IsNullOrWhiteSpace(txtDescricao.Text) Then

            lblMensagem.ForeColor = Drawing.Color.Red
            lblMensagem.Text = "Por favor, preencha todos os campos corretamente."
            Return
        End If

        ' 🔽 Aqui está a criação de uma referência de objeto
        Dim novaDemanda As New Demanda()

        ' Preenche a instância (objeto) com os dados do formulário
        novaDemanda.Nome = txtNome.Text
        novaDemanda.Categoria = ddlCategoria.SelectedValue
        novaDemanda.Descricao = txtDescricao.Text


        ' (Aqui você pode salvar em lista, banco de dados, etc.)

        ' Mensagem de sucesso
        lblMensagem.ForeColor = Drawing.Color.Green
        lblMensagem.Text = "Demanda registrada com sucesso!"

        ' Limpa campos
        txtNome.Text = ""
        ddlCategoria.ClearSelection()
        txtDescricao.Text = ""
    End Sub

</script>



    </form>
</body>
</html>
