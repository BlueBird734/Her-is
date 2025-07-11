﻿<!DOCTYPE html>
<html lang="pt-BR">
<head runat="server">
    <meta charset="utf-8" />
    <title>Heróis do Bairro</title>

    <style >
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f4f4f4;
}

.container {
    width: 85%;
    margin: 0 auto;
    padding: 20px;
    background-color: #fff;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    height: 3104px;
        }

h1 {
    text-align: center;
    font-weight: bold;
    text-transform: uppercase;
    color: #333;
    margin-bottom: 100px;
}

p {
    text-align: justify;
    line-height: 1.6;
    color: #555;
    font-size: 1.1em;
    margin-bottom: 15px;
}
.button.is-primary {
    background-color: #007BFF;
    border-color: #007BFF;
}
.field {
            margin-bottom: 15px;
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"], textarea {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
        }

        input[type="file"] {
            margin-top: 5px;
        }

        .btn {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #0056b3;
        }
</style>

</head>
<body>
     <form id="form1" runat="server">

        <div class="container">
            <h1>Heróis das Ruas</h1>
            <h2><strong>♦Bem-vindo ao Heróis das Ruas♦</strong></h2>


<p><strong>🌟 Onde os pequenos gestos constroem grandes mudanças</strong></p>

<p>Você já parou para pensar em quem mantém o seu bairro mais limpo, seguro e acolhedor?
    Aqui no Heróis das Ruas, celebramos as pessoas que, com atitudes simples e generosas, fazem toda a diferença na vida da comunidade.

Não são superpoderes que movem esses heróis — são ações como:</p>
	<p>•	🧹 Recolher o lixo das ruas por conta própria</p>
	<p>•	🧓 Ajudar vizinhos idosos ou com dificuldades</p>
	<p>•	🌻 Cuidar de jardins comunitários</p>
	<p>•	👮‍♂ Promover segurança e respeito</p>
	<p>•	🤝 Organizar ações solidárias e eventos culturais</p>

<p><strong>Quem são esses heróis?</strong></p>

<p>São cidadãos como você: moradores que se importam com o lugar onde vivem e fazem questão de deixar tudo melhor para todos. Este site é o espaço para contar suas histórias, inspirar novas atitudes e mostrar que a verdadeira transformação começa com um bom exemplo.</p>

⸻

       <p><strong>💬 Queremos ouvir sua história!</strong></p> 

<p>Você conhece ou é um Herói do Bairro? Compartilhe sua história conosco! Sua atitude pode inspirar muitas outras</p>

             <label class="label">Fale Conosco</label>
<div class="control">
<asp:Panel ID="pnlFormulario2" runat="server" Width="1306px" >
<!-- Formulário 1 -->
<asp:TextBox ID="TextBox2" runat="server" CssClass="input" placeholder="Digite sua resposta" Width="721px"></asp:TextBox> &nbsp;<asp:Label ID="Label2" runat="server" ForeColor="Green">
    <asp:Button ID="btnFaleConosco1" runat="server" OnClick="btnFaleConosco_Click" Text="Enviar" />
     </asp:Label>
    <br />
            </asp:Panel>
</div>


            <formv>

            <br />
            <br />

                <a href="https://www.exemplo.com">
    <img src="https://th.bing.com/th/id/OIP.W8wrr8KX3Yetxdbf6d26nwHaCc?w=272&h=115&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3" 
        alt="Descrição da imagem">
</a><br />
      <asp:Label ID="lblConfirmacao" runat="server" ForeColor="Green" />
            <br />
            <br />

               <p><strong>O que são?</strong></p>

<p>Heróis das Ruas são pessoas comuns, como garis, catadores e voluntários, que ajudam a melhorar a comunidade com dedicação, mesmo sem reconhecimento. Eles tornam o bairro mais limpo, seguro e acolhedor.</p>

<p><strong>Para que servem?</strong></p>

<p>Os heróis das Ruas melhoram a qualidade de vida da comunidade, mantendo o ambiente limpo, seguro e unido. Suas ações mostram que atitudes simples e solidárias podem transformar o lugar onde vivemos e inspirar outros a ajudar também.

Exs de iniciativas e instituições:</p>

<p>O Blog da BRK Ambiental (Saneamento em Pauta), promove a educação ambiental e o saneamento básico no Brasil. Traz conteúdos sobre água, esgoto, sustentabilidade e dicas para o consumo consciente, além de divulgar ações da empresa.

Pimp My Carroça: É um projeto social criado pelo artista Mundano que valoriza catadores de recicláveis, reformando carroças e oferecendo apoio como saúde e educação. A iniciativa destaca a importância desses profissionais para o meio ambiente e os reconhece como heróis invisíveis.
            </p>
            <p>

                            <a href="https://www.exemplo.com">
    <img src="https://th.bing.com/th/id/OIP.TgFZf3Dte_7GAHYbXZmlIAHaE7?w=277&h=184&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3" 
        alt="Descrição da imagem">
</a>
            </p>
            <p>
                Um herói do bairro <strong>é uma pessoa comum</strong> que faz a diferença na sua comunidade por meio de ações positivas, mesmo sem buscar fama ou recompensa. Algumas coisas que um herói do bairro pode fazer incluem:

Ajudar vizinhos idosos ou com dificuldades, como carregar compras ou cuidar do jardim.</p>

<p>Organizar mutirões de limpeza, plantio de árvores ou manutenção de áreas públicas.</p>

<p>Proteger crianças no trajeto para a escola, ajudando como um "guarda da rua".</p>

<p>Promover a solidariedade, arrecadando alimentos, roupas ou brinquedos para quem precisa.</p>

<p>Combater injustiças e denunciar situações perigosas ou ilegais para melhorar a segurança do bairro.</p>

<p>Incentivar o esporte ou a cultura, organizando torneios, oficinas ou eventos comunitários.</p>


<p>Essas atitudes mostram que qualquer pessoa pode ser um herói, desde que se preocupe com o bem-estar coletivo e aja com empatia e responsabilidade.
            </p>

                                        <p>

                                        <a href="https://www.exemplo.com">
    <img src="https://th.bing.com/th/id/OIP.tgEDV_evPGXfSZcIHftP6gAAAA?w=199&h=150&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3" 
        alt="Descrição da imagem">
</a>
    
            <p>

    <asp:Button ID="btnHeroisDosLixos0" runat="server" Text="Ver Heróis dos Lixos" CssClass="btn" OnClick="btnHeroisDosLixos_Click" />
            </div>

            <p>
                &nbsp;</p>

            &nbsp;<asp:Label ID="lblMensagem" runat="server" ForeColor="Red" />
</div>

        </div>
     </formv>

               
           <script runat="server">
               Protected Sub btnFaleConosco_Click(sender As Object, e As EventArgs) Handles btnFaleConosco1.Click
                   ' Verifica se o usuário escreveu alguma coisa
                   If Not String.IsNullOrWhiteSpace(TextBox2.Text) Then
                       ' Mensagem de sucesso (você pode redirecionar ou salvar no banco aqui)
                       Label2.ForeColor = System.Drawing.Color.Green
                       Label2.Text = "Obrigado por compartilhar! Sua história será analisada."

                       ' Aqui você pode chamar um método para salvar a mensagem ou redirecionar:
                       ' Response.Redirect("FormularioDeRespostas.aspx")
                   Else
                       ' Alerta de campo obrigatório
                       Label2.ForeColor = System.Drawing.Color.Red
                       Label2.Text = "Por favor, digite sua história antes de enviar."
                   End If
               End Sub


               ' Evento do botão "Ver Heróis dos Lixos"
               Protected Sub btnHeroisDosLixos_Click(sender As Object, e As EventArgs) Handles btnHeroisDosLixos0.Click
                   ' Aqui você pode redirecionar para uma página que mostra os heróis dos lixos
                   Response.Redirect("HeroisDosLixos.aspx")
               End Sub

</script>

            </div>
</form>
 
</body>
</html>