<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>购买产品测试</title>
    <script type="text/javascript"
            src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="js/MyFirst.js"></script>
</head>
<script type="text/javascript">
    //for (var i=1;i<=50000;i++) {
        var params = {
            userId : 1,
            productId : 1,
            quantity : 3
        };
        $.post("./purchase",params,function(result){
            alert(result.message);
        });
    //}

</script>
<body>
<p>正式进军JS</p>
<h1 id="we">抢购产品测试</h1>
<div id="pro">商品数量</div>
<button onclick="myFirst()">见证奇迹</button>
<button onclick="addPro()">添加产品</button>
</body>
</html>