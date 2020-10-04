             var  ran;
			/**********验证码生成**********/
			function  YZM(){
				
				//4位随机整数
			    ran=Math.floor(Math.random()*9000+1000);
				//获得span对象
				var span =document.getElementById("yzm_span");
				
				span.innerText=ran;
			}
			
			/****************手机号的检验*********************/
				function checkPhone(){
					var reg=/^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}/
					return check("phone",reg);
					
				}
			
			
			
			
			/*********校验用户名方法**************/
			
			function  checkName(){
		
				//汉字的正则表达式
				var  reg=/^[\u4e00-\u9fa5]{2,4}$/;
				
				return check("uname",reg);
			}
			
			
			
			
			/*********密码验证方法**************/
			
			function  checkPwd(){
				//密码的正则表达式
				
				var  reg=/^\d{3,6}$/;
				
			return	check("pwd",reg);
			}
			
			/*********确认密码验证方法**************/
			
			function  checkPwd2(){
			//获得密码的值
			var  pwd2=document.getElementById("pwd2");
			
			var  val2=pwd2.value;
			
			var  pwd=document.getElementById("pwd");
			
			var  val=pwd.value;
			//获得span对象
			var span =document.getElementById("pwd2_span");
			
			if(val2==null||val2==""){
				
				
				span.innerText="×"+"密码不能为空";
				
				span.style.color="red";
				
				return false;
				
			}else if(val==val2){
				
				span.innerText="√"+"密码一致";
				
				span.style.color="green";
				
				return true;
				
			}else{
				span.innerText="×"+"密码不一致";
				
				span.style.color="red";
				
				return false;
				
			}
			
			}
			
			
			
			/***********提取公共的部分***************/
			function  check(id,reg){
			
				//获得id的值
				var  uname=document.getElementById(id);
				
				var  val=uname.value;
				
				//获得alt属性
				var  alt=uname.alt;
				
				//获得span对象
				var span =document.getElementById(id+"_span");
				
				if(val==null||val==""){
					
					
					span.innerText="×"+alt+"不能为空";
					
					span.style.color="red";
					
					return false;
					
				}else if(reg.test(val)){
					
					span.innerText="√"+alt+"合法";
					
					span.style.color="green";
					
					return true;
					
				}else{
					span.innerText="×"+alt+"不合法";
					
					span.style.color="red";
					
					return false;
				}
			}
			
			/*******验证码输入校验********************/
			function  checkYZM(){
				
				
				//获得自己输入的验证码
				
				var  yzm=document.getElementById("yzm").value;
				
				//获得span标签
				var  span =document.getElementById("yzm2_span");
				
				if(ran==yzm){
					
					span.style.color="green";
					span.innerText="验证码正确";
					
					return true;
					
				}else {
					
					span.style.color="red";
					span.innerText="验证码不正确";
					
					return false;
				}
				
				
			}
			
			
			function zong(){
				
			  var  flag=checkName()&&checkPwd()&&checkYZM()&&checkPhone()&&checkPwd2();
				
				
		     return flag;		
			}
			function zong2(){
				
			  var  flag=checkPwd()&&checkPhone();
				
				
			 return flag;		
			}
			/*
			 
			 * 
			 * 正则表达式：
			 *    
			 * 正则表达式是对于数据格式进行一定的规范限制
			 * 
			 * 
			 * ^：开始
			 * [0-9]  [a-z A-Z] :数字  字母
			 * 
			 * {2,4} ：段域 至少是2位  最多是4位
			 * {3}:指定范围就是3位
			 * {2,}:至少是2位
			 *  $:结束
			 * 
			 * \d：[0-9]
			 * 
			 * \w[0-9 a-z A-Z]
			 * 
			 * */
			