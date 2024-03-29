<%@page import="aplication.User"%>
<%@page import="java.util.ArrayList"%>
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
            <div class="col-12 mt-5">
                <%
                    User usuarioLogado = (User)session.getAttribute("usuarioLogado");
                    if (usuarioLogado == null) {
                        RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                        rd.forward(request, response);
                    } else {
                        ArrayList<User> lista = (ArrayList<User>)request.getAttribute("usuarios");
                        String suspenso = new String();
                %>
                <h4>Usuários</h4>
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Nome</th>
                            <th scope="col">CPF</th>
                            <th scope="col">Acesso Suspenso?</th>
                            <th scope="col">Opções</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% for (int i = 0; i < lista.size(); i++) {
                            if (lista.get(i).getSuspenso().equals("N")) {
                                suspenso = "Não";
                            } else {
                                suspenso = "Sim";
                            }
                        %>
                        <tr>
                            <td><%=lista.get(i).getId()%></td>
                            <td><%=lista.get(i).getNome()%></td>
                            <td><%=lista.get(i).getCpf()%></td>
                            <td><%=suspenso%></td>
                            <td>
                                <div class="btn-group" role="group" aria-label="Basic example">
                                    <a type="button" class="btn btn-info" href="Controller_User?option=suspender&id_usuario=<%=lista.get(i).getId()%>">Suspender</a>
                                    <a type="button" class="btn btn-info" href="Controller_User?option=editar&id_usuario=<%=lista.get(i).getId()%>">Editar</a>
                                    <a type="button" class="btn btn-danger" href="Controller_User?option=excluir&id_usuario=<%=lista.get(i).getId()%>">Excluir</a>
                                </div>
                            </td>
                        </tr>
                        <% } %>
                    </tbody>
                </table>
                <% } %>
            </div>
        </div>
        <!-- JavaScript (Opcional) -->
        <!-- jQuery primeiro, depois Popper.js, depois Bootstrap JS -->
	    <%@include file="scripts.html" %>
    </body>
</html>
