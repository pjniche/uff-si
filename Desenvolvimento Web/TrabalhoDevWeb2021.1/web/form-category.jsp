<%@page import="aplication.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Meta tags Obrigatórias, Bootstrap CSS -->
        <%@include file="header.html" %>
    </head>
    <body>
        <div class="container">
            <!-- Menu de navegação -->
            <%@include file="navbar-admin.jsp" %>

		    <!-- Conteúdo aqui -->
            <div class="col-8 mt-5">
                <%
                    User usuarioLogado = (User)session.getAttribute("usuarioLogado");
                    if (usuarioLogado == null) {
                        RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                        rd.forward(request, response);
                    }
                %>
                <form method="POST" action="Controller_Category">
                    <input type="hidden" maxlength="11" class="form-control" name="id" id="id" value="0" required>
                    <div class="mb-3">
                        <label for="categoria" class="form-label">Categoria</label>
                        <input type="text" maxlength="20" class="form-control" name="categoria" id="categoria" placeholder="Digite o nome da nova categoria." required>
                    </div>
                    <button type="submit" class="btn btn-info">Cadastrar Categoria</button>
                </form>
            </div>
        </div>

        <!-- JavaScript (Opcional) -->
        <!-- jQuery primeiro, depois Popper.js, depois Bootstrap JS -->
	    <%@include file="scripts.html" %>
    </body>
</html>
