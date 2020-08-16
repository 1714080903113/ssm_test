<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍展示页面</title>
    <%--导入bootstrap样式--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<div class="container">
    <%--清除浮动--%>
    <div class="row clearfix">
        <%--把屏幕分成12等份--%>
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改书籍</small>
                </h1>
            </div>
        </div>
    </div>

    <%--新增书籍表单--%>

    <form action="${pageContext.request.contextPath}/book/updateBook" method="post">
        <%--出现的问题，提交sql语句，修改失败，初次考虑是事务问题，配置完事务，依旧失败。原来是前端少些了ID--%>
        <input type="hidden" name="bookID" value="${book.bookID}"/>
        <div class="form-group">
            <label>书籍名称：</label>
            <input type="text" name="bookName" class="form-control" value="${book.getBookName()}" required>
        </div>
        <div class="form-group">
            <label>书籍数量：</label>
            <input type="text" name="bookCounts" class="form-control" value="${book.getBookCounts()}" required>
        </div>
        <div class="form-group">
            <label>书籍详情：</label>
            <input type="text" name="detail" class="form-control" value="${book.getDetail()}" required>
        </div>
        <div class="form-group">
            <input type="submit" value="修改" class="form-control">
        </div>
    </form>
</div>
</body>
</html>
