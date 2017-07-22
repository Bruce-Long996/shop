<%--
  Created by IntelliJ IDEA.
  User: 文辉
  Date: 2017/7/22
  Time: 13:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Visual Admin Dashboard - Preferences</title>
    <meta name="description" content="">
    <meta name="author" content="templatemo">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,700' rel='stylesheet'
          type='text/css'>
    <link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/templatemo-style.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <script src="${pageContext.request.contextPath}/js/sweetalert.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/sweetalert.css">

</head>
<body>
<!-- Left column -->
<div class="templatemo-flex-row">
    <jsp:include page="sidebar.jsp"/>
    <!-- Main content -->
    <div class="templatemo-content col-1 light-gray-bg">
        <jsp:include page="goodsNav.jsp"/>
        <div class="templatemo-content-container">
            <div class="templatemo-content-widget no-padding">
                <div class="panel panel-default table-responsive">
                    <table id="goodsinfo" class="table table-striped table-bordered templatemo-user-table">
                        <thead>
                        <tr>
                            <td><a href="" class="white-text templatemo-sort-by">id<span class="caret"></span></a></td>
                            <td><a href="" class="white-text templatemo-sort-by">商品名<span class="caret"></span></a></td>
                            <td><a href="" class="white-text templatemo-sort-by">价格<span class="caret"></span></a></td>
                            <td><a href="" class="white-text templatemo-sort-by">数量<span class="caret"></span></a></td>
                            <td><a href="" class="white-text templatemo-sort-by">类别<span class="caret"></span></a></td>
                            <td>详情</td>
                            <td>编辑</td>
                            <td>删除</td>
                        </tr>
                        </thead>
                        <tbody>
                        <%--<c:forEach items="${pageInfo.list}" var="goods" varStatus="num">
                            <tr>
                                <td>${goods.goodsid}</td>
                                <td>${goods.goodsname}</td>
                                <td>${goods.price}</td>
                                <td>${goods.num}</td>
                                <td>${goods.detailcate}</td>
                                <td><a href="" class="templatemo-link">详情</a></td>
                                <td><button href="" class="templatemo-edit-btn">编辑</button></td>
                                <td><button href="" class="templatemo-delete-btn">删除</button></td>
                            </tr>
                        </c:forEach>--%>
                        </tbody>
                    </table>
                </div>
            </div>

            <div class="pagination-wrap" id="page-div-nav">
                <div class="page-info" id="page-info-area">
                    <%--当前第${pageInfo.pageNum}页，总共${pageInfo.pages}页，总共${pageInfo.total}记录--%>
                </div>
                <%--<ul class="pagination">
                    <li>
                        <a href="${pageContext.request.contextPath}/admin/goods/show?page=1" aria-label="Next">
                            <span aria-hidden="true">首页</span>
                        </a>
                    </li>

                    <c:if test="${pageInfo.hasPreviousPage}">
                        <li>
                            <a href="${pageContext.request.contextPath}/admin/goods/show?page=${pageInfo.pageNum - 1}" aria-label="Previous">
                                <span aria-hidden="true"><i class="fa fa-backward"></i></span>
                            </a>
                        </li>
                    </c:if>

                    <c:forEach items="${pageInfo.navigatepageNums}" var="pageNums">
                        <c:if test="${pageNums == pageInfo.pageNum}">
                            <li class="active"><a href="${pageContext.request.contextPath}/admin/goods/show?page=${pageNums}">${pageNums}</a></li>
                        </c:if>
                        <c:if test="${pageNums != pageInfo.pageNum}">
                            <li><a href="${pageContext.request.contextPath}/admin/goods/show?page=${pageNums}">${pageNums}</a></li>
                        </c:if>
                    </c:forEach>

                    <c:if test="${pageInfo.hasNextPage}">
                        <li>
                            <a href="${pageContext.request.contextPath}/admin/goods/show?page=${pageInfo.pageNum + 1}" aria-label="Next">
                                <span aria-hidden="true"><i class="fa fa-forward"></i></span>
                            </a>
                        </li>
                    </c:if>
                    <li>
                        <a href="${pageContext.request.contextPath}/admin/goods/show?page=${pageInfo.pages}" aria-label="Next">
                            <span aria-hidden="true">末页</span>
                        </a>
                    </li>
                </ul>--%>
            </div>
        </div>
    </div>
</div>
<div id="path" style="display: none;">${pageContext.request.contextPath}</div>
<!-- JS -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.2.min.js"></script>
<!-- jQuery -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/templatemo-script.js"></script>
<script src="${pageContext.request.contextPath}/js/goodsManage.js"></script>
<!-- Templatemo Script -->
<script>
    $(document).ready(function () {
        // Content widget with background image
        var imageUrl = $('img.content-bg-img').attr('src');
        $('.templatemo-content-img-bg').css('background-image', 'url(' + imageUrl + ')');
        $('img.content-bg-img').hide();
    });
</script>
</body>
</html>