<!DOCTYPE html>
<html>
<head>
    <title>Vote em seu Herói!</title>
</head>
<body>

    <style>
    body {
        font-family: 'Segoe UI', sans-serif;
        background-color: #f0f2f5;
        margin: 0;
        padding: 20px;
    }

    form {
        max-width: 900px;
        margin: 0 auto;
        background-color: #fff;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0,0,0,0.05);
    }

    h2 {
        text-align: center;
        color: #2c3e50;
        margin-bottom: 30px;
    }

    .btn, input[type="submit"], input[type="button"] {
        background-color: #3498db;
        color: white;
        border: none;
        padding: 10px 20px;
        font-size: 15px;
        border-radius: 6px;
        cursor: pointer;
        margin-top: 15px;
        transition: background-color 0.3s ease;
    }

    .btn:hover, input[type="submit"]:hover, input[type="button"]:hover {
        background-color: #2980b9;
    }

    .aspNetDisabled {
        background-color: #ccc !important;
        cursor: not-allowed;
    }

    .gridview {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 20px;
    }

    .gridview th, .gridview td {
        border: 1px solid #ddd;
        padding: 10px;
        text-align: center;
    }

    .gridview th {
        background-color: #3498db;
        color: white;
    }

    .gridview tr:nth-child(even) {
        background-color: #f9f9f9;
    }

    .gridview tr:hover {
        background-color: #f1f1f1;
    }

    #lblMensagem {
        font-weight: bold;
        display: block;
        margin-top: 20px;
        font-size: 14px;
        text-align: center;
    }
</style>


   <form id="form1" runat="server">
    <h2>Vote em seu Herói Favorito</h2>
    <asp:GridView ID="gridVotacao" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" OnRowCommand="gridVotacao_RowCommand" OnRowDataBound="gridVotacao_RowDataBound">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="ID" />
            <asp:BoundField DataField="Nome" HeaderText="Nome" />
            <asp:BoundField DataField="Descricao" HeaderText="Descrição" />
            <asp:BoundField DataField="Votos" HeaderText="Votos" />
            <asp:ButtonField Text="Votar" CommandName="Votar" ButtonType="Button" />
        </Columns>
    </asp:GridView>

       <asp:Button ID="btnEnviar" runat="server" Text="Enviar" OnClick="btnEnviar_Click" />
<br /><br />
<asp:Label ID="lblMensagem" runat="server" ForeColor="Green" />

<asp:Button ID="btnResultado0" runat="server" Text="Ver Resultado" CssClass="btn" OnClick="btnResultado_Click" />


<script runat="server">

    Private Property TabelaHerois As System.Data.DataTable
        Get
            If ViewState("TabelaHerois") Is Nothing Then
                Dim dt As New System.Data.DataTable()
                dt.Columns.Add("Id", GetType(Integer))
                dt.Columns.Add("Nome", GetType(String))
                dt.Columns.Add("Descricao", GetType(String))
                dt.Columns.Add("Votos", GetType(Integer))

                dt.Rows.Add(1, "João", "Ajudou na enchente", 5)
                dt.Rows.Add(2, "Maria", "Cuida dos animais", 8)
                dt.Rows.Add(3, "Carlos", "Organizou mutirão de limpeza", 3)

                ViewState("TabelaHerois") = dt
            End If
            Return CType(ViewState("TabelaHerois"), System.Data.DataTable)
        End Get
        Set(value As System.Data.DataTable)
            ViewState("TabelaHerois") = value
        End Set
    End Property

    Private Property VotacaoFeita As Boolean
        Get
            Return If(ViewState("VotacaoFeita"), False)
        End Get
        Set(value As Boolean)
            ViewState("VotacaoFeita") = value
        End Set
    End Property

    Protected Sub Page_Load(ByVal sender As Object)

        If Not IsPostBack Then
            gridVotacao.DataSource = TabelaHerois
            gridVotacao.DataBind()
            btnEnviar.Visible = False
        Else
            btnEnviar.Visible = VotacaoFeita
        End If
    End Sub


    Protected Sub gridVotacao_RowCommand(ByVal sender As Object, ByVal e As GridViewCommandEventArgs)
        If e.CommandName = "Votar" Then
            ' Obtém o índice da linha a partir do CommandArgument
            Dim index As Integer = Convert.ToInt32(e.CommandArgument)
            ' Obtém o ID do herói usando DataKeys
            Dim idHeroi As Integer = Convert.ToInt32(gridVotacao.DataKeys(index).Value)

            ' Incrementa o voto no DataTable
            Dim dt As System.Data.DataTable = TabelaHerois
            For Each linha As System.Data.DataRow In dt.Rows
                If Convert.ToInt32(linha("Id")) = idHeroi Then
                    linha("Votos") = Convert.ToInt32(linha("Votos")) + 1
                    Exit For
                End If
            Next

            ' Atualiza ViewState e GridView
            TabelaHerois = dt
            gridVotacao.DataSource = dt
            gridVotacao.DataBind()

            ' Após atualizar os votos...
            VotacaoFeita = True
            btnEnviar.Visible = True
        End If
    End Sub

    Protected Sub gridVotacao_RowDataBound(sender As Object, e As GridViewRowEventArgs) Handles gridVotacao.RowDataBound
        If e.Row.RowType = DataControlRowType.DataRow Then
            Dim btn As Button = CType(e.Row.Cells(4).Controls(0), Button)
            btn.CommandArgument = e.Row.RowIndex.ToString()
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

        If Not IsPostBack Then
            gridVotacao.DataSource = TabelaHerois
            gridVotacao.DataBind()
            btnEnviar.Visible = False ' Oculta o botão até que haja votação
        Else
            btnEnviar.Visible = VotacaoFeita ' Mostra se já houve voto
        End If
    End Sub

    Protected Sub btnEnviar_Click(ByVal sender As Object, ByVal e As EventArgs)
        lblMensagem.Text = "Mensagem enviada com sucesso! Obrigado pelo contato."
    End Sub

    Protected Sub btnResultado_Click(ByVal sender As Object, ByVal e As EventArgs)
        ' Redireciona para a página do módulo de inscrição (sem acentos no nome do arquivo)
        Response.Redirect("Resultado.aspx")
    End Sub

</script>

    </form>

</body>
</html>
