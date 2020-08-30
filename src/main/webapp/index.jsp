<%@ page import="java.util.List" %>
<%@ page import="pl.sda.twitter.persistance.entities.TbArticle" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="articleService" scope="request" class="pl.sda.twitter.services.ArticleService"></jsp:useBean>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
<head>

    <jsp:include page="include/meta.jsp"/>
    <title>SDA Twitter Lista artykułów</title>
    <meta name="description" content="lista artykułów">
    <meta name="keyword" content="lista, artykół, sda, twitter">
</head>
<body>
<jsp:include page="include/header.jsp"/>


<main role="main">
    <%
        List<TbArticle> articles = articleService.getArticles();
        pageContext.setAttribute("articles", articles);
    %>

    <div class="jumbotron">
        <div class="container">
            <h1 class="display-3">Hello, world!</h1>
            <p>This is a template for a simple marketing or informational website. It includes a large callout called a
                jumbotron and three supporting pieces of content. Use it as a starting point to create something more
                unique.</p>
            <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more &raquo;</a></p>
        </div>
    </div>

    <div class="container">
        <c:forEach items="${articles}" var="article">
            <div class="row">
                <div>
                    <h2>Heading</h2>
                    <p>${article.getContent()}</p>
                    <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
                </div>
            </div>
        </c:forEach>


    </div>
    </div>
</main>
<jsp:include page="include/footer.jsp"/>
</body>
</html>

