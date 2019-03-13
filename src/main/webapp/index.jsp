<html>
<head>
    <script src="${pageContext.request.contextPath}/js/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            $("#btn").click(function () {
                $.ajax({
                    type: "POST",
                    url: "${pageContext.request.contextPath}/update",
                    contentType: false,
                    processData: false,
                    data: new FormData($("#fileForm")[0]),
                    success: function (data) {
                        alert(data)
                    }
                });
            });
        });

    </script>
</head>
<body>
<form id="fileForm" name="fileForm" enctype="multipart/form-data">
    <input type="file" name="file" id="file"/>
    <button id="btn" type="button">提交</button>
</form>
<a href="${pageContext.request.contextPath}/downLoad">下载</a>

</body>
</html>
