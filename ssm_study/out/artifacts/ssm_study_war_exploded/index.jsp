<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>进入书籍首页</title>
    <style>
        a{
            /*对文本设置某种效果，如加下划线*/
            text-decoration: none;
            color: black;
            font-size: 18px;
        }
        h3{
            width: 180px;
            height: 38px;
            margin: 100px auto;
            text-align: center;
            line-height: 38px;
            background: deepskyblue;
            border-radius: 4px;
        }
    </style>
</head>
<body>
<h3>
    <a href="${pageContext.request.contextPath}/book/allBook?pageNo=1&pageSize=5">进入书籍页面</a>
</h3>

</body>
</html>
