<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍展示页面</title>
    <%--导入bootstrap样式--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-1.7.2.js"></script>
    <script>
        $(function () {
            // 给删除的 a 标签绑定单击事件，用于删除的确认提示操作
            $("a.delete").click(function () {
                //true则提交请求，false则反之
                return confirm("你确定要删除【" + $(this).parent().parent().find("td").eq(1).text() + "】?");
            });
            
            //判断查询框是否为空
            $("#query").click(function () {
                var queryBookName = $("#queryBookName").val();
                if (queryBookName == null || queryBookName == "") {
                    $(".errorMsg").text("不能为空！").show();
                    return false;
                }
            })
        })
    </script>

</head>
<body>
<div class="container">
    <%--清除浮动--%>
    <div class="row clearfix">
        <%--把屏幕分成12等份--%>
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>书籍列表 —— 显示所有书籍</small>
                </h1>
            </div>
        </div>
    </div>

        <%--添加书籍按钮--%>
    <div class="row">
        <%--添加按钮--%>
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/toAddBook">新增</a>
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/allBook">查询全部图书</a>
        </div>

        <%--查询框--%>
        <div class="col-md-4 column" style="float: right">
            <form action="${pageContext.request.contextPath}/book/queryBook" method="post" class="form-inline">
                <span class="errorMsg" style="color:red;font-weight: bold">${requestScope.msg}</span>
                <input type="text" name="queryBookName" id="queryBookName" class="form-control" placeholder="请输入要查询的书籍名称"/>
                <input type="submit" value="查询" class="btn btn-primary" id="query"/>
            </form>
        </div>
    </div>


    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <%--表头--%>
                <thead>
                    <tr>
                        <th>书籍编号</th>
                        <th>书籍名字</th>
                        <th>书籍数量</th>
                        <th>书籍详情</th>
                        <th>操作</th>
                    </tr>
                </thead>

                    <%--表内容，遍历从请求域中拿出--%>
                <tbody>
                    <c:forEach var="book" items="${requestScope.get('list')}">
                        <tr>
                            <td>${book.getBookID()}</td>
                            <td>${book.getBookName()}</td>
                            <td>${book.getBookCounts()}</td>
                            <td>${book.getDetail()}</td>
                            <td>
                                <a href="${pageContext.request.contextPath}/book/toUpdateBook?id=${book.getBookID()}">更改</a>
                                |
                                <a class="delete" href="${pageContext.request.contextPath}/book/deleteBook/${book.getBookID()}">删除</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
    <div style="display: flex;align-items: center;justify-content: center">
        <%--分页--%>
        <nav aria-label="Page navigation">
            <ul class="pagination">
                <li>
                    <a href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li>
                    <a href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </ul>
        </nav>
    </div>


</div>
</body>
</html>
