function myFirst()
{
    document.getElementById("we").innerHTML="这里是最新的内容……";
}

function addPro()
{
    var params = {
        productId : 1
    };
    $.post("./addpro",params,function(result){
        alert(result.message);
    });
}

function fastBuyPro()
{
    var params = {
        userId : 1,
        productId : 1,
        quantity : 2
    };
    $.post("./purchase",params,function(result){
        alert(result.message);
    });
}


