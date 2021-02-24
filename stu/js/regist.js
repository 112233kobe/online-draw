
//验证用户名
function validateName(){
    var x=document.getElementById("pName").value;
    var text=document.getElementById("nameText");
    if( x == "" || x == null ){
    	text.style.height = 20 + "px";
        text.innerHTML = "用户名不能为空";
        
    }
    if( x != null ){
        text.innerHTML = null;
        text.style.height = 0 + "px";
    }
    if( x.length > 8 ){
    	text.style.height = 20 + "px";
        text.innerHTML = "长度过长，请重新输入"
    }
}
// 验证密码
function validatePassword1(){
    var x=document.getElementById("password1").value;
    var text=document.getElementById("password1Text");
    if( x == "" || x == null ){
    	text.style.height = 20 + "px";
        text.innerHTML = "密码不能为空";
        
    }
    if( x != null ){
        text.innerHTML = null;
        text.style.height = 0 + "px";
    }
    if( x.length > 16 ){
    	text.style.height = 20 + "px";
        text.innerHTML = "密码长度过长，请重新输入";
    }
}
//再次验证密码
function validatePassword2(){
    var x1=document.getElementById("password1").value;
    var x2=document.getElementById("password2").value;
    var text=document.getElementById("password2Text");
    var flag = true;
    for( var i=0 ; i<x2.length ; i++ ){
        if( x2[i] != x1[i] ){
            flag = false;
            break;
        }
    }
    if(x2==""||x2==null){
    	text.style.height = 20 + "px";
        text.innerHTML = "密码不能为空";
    }
    
    if(x2!=null && flag == true){
        text.innerHTML = null;
        text.style.height = 0 + "px";
    }
    if( x2!=null && flag==false){
    	text.style.height = 20 + "px";
        text.innerHTML = "两次密码不同，请重新输入";
    }
    if( x1.length != x2.length ){
    	text.style.height = 20 + "px";
        text.innerHTML = "两次密码不一致";
    }
}
function validateTel(){
    var x=document.getElementById("pTel").value;
    var text=document.getElementById("telText");
    if(x==""||x==null){
    	text.style.height = 20 + "px";
        text.innerHTML = "请输入手机号";
    }
    if(x.length!=11 && x.length!=0){
    	text.style.height = 20 + "px";
        text.innerHTML = "手机号位数不正确，请检查是否为11位！";
    }
    if( x.length == 11)
    {
        text.innerHTML = null;
        text.style.height = 0 + "px";
    }
}