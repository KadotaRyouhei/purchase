<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link rel="stylesheet" href="css/Test.css"/>
    <link rel="stylesheet" href="css/Base.css"/>
    <title>购买产品测试</title>
    <script type="text/javascript"
            src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="js/MyFirst.js"></script>
</head>

<body>
<p>正式进军JS</p>
<h1 id="we">抢购产品测试</h1>
<div id="pro">商品数量</div>
<button onclick="myFirst()">见证奇迹</button><br/>
<button onclick="addPro()">添加产品</button>
<button onclick="fastBuyPro()">抢购产品</button>
<div>
    <button onclick="myFirst()">测试一</button><br/>
    <button onclick="addPro()">测试二</button>
    <button onclick="fastBuyPro()">测试三</button><br/>
    <p class="p1"> 测试段落一</p>

</div>
<div class="wrapper-double-float" id="wrapper">
    <div class="left" >
        左边固定宽度，高度不固定 </br> </br></br></br>高度有可能会很小，也可能很大。
    </div>
    <div class="right" >
        这里的内容可能比左侧高，也可能比左侧低。宽度需要自适应。</br>
        基本的样式是，两个div相距20px, 左侧div宽 120px
    </div>
</div>
<div class="divsuntitle">
    <img class="suntitle" src="images/sunglasses.png" alt="太阳镜标题">
    <button class="btntitle">网络请求调试</button>
    <button class="btntitle">埋点调试</button>
    <button class="btntitle">远程控制台</button>
    <button class="btntitle">注册应用</button>
</div>
<div class="divpath" style="margin-top: 10px">
    <p class="pInline">首页 / </p>
    <p class="pInline" id="curPath">远程控制台</p>
</div>
<div class="divConnStatus" style="margin-top: 10px;">
    <div class="connStatusLeft">
        <p style=" color: #46b151">连接服务器成功</p>
    </div>
    <div class="connStatusRight">
        <p style=" background-color: white">100061</p>
    </div>
</div>

</body>
</html>