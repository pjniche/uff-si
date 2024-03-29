<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Meta tags Obrigatórias, Bootstrap CSS -->
        <%@include file="header.html" %>
    </head>
    <body>
        <div class="container">
		    <!-- Conteúdo aqui -->
            <div class="col-8 mt-5">
                <%
                    if (request.getAttribute("mensagem") != null) {
                        String mensagem = (String)request.getAttribute("mensagem");
                %>
                        <script>
                            alert("<%=mensagem%>");
                        </script>
                <% } %>
                <h3>Acessar o Sistema</h3>
                <form method="POST" action="Login">
			        <div class="form-group">
				        <label for="usuario">CPF</label>
				        <input type="text" class="form-control cpf" name="usuario" id="usuario" placeholder="Ex: xxx.xxx.xxx-xx" required>
			        </div>
			        <div class="form-group">
				        <label for="senha">Senha</label>
				        <input type="password" maxlength="255" class="form-control" name="senha" id="senha" placeholder="Digite a sua senha." required>
			        </div>
			        <button type="submit" class="btn btn-info">Login</button>
		        </form>
                <p></p>
                <div><a class="text-info" href="index.jsp">Retornar</a></div>
            </div>
	    </div>

        <!-- JavaScript (Opcional) -->
        <!-- jQuery primeiro, depois Popper.js, depois Bootstrap JS -->
	    <%@include file="scripts.html" %>
    </body>
</html>
