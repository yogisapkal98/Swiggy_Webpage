var popup = new Popup();

function Popup()
{
	this.hidePopup=hidePopup;
	this.loginshow=loginshow;
	this.loginoff=loginoff;
	this.regshow=regshow;
	this.regoff=regoff;


	function loginshow()
	{
		console.log(" In js login show");
		//$(".error").css("display","block");
		$("#popup").show();
		$("#login").show();
	}

	function loginoff()
	{
		console.log(" In js login off");
		$("#popup").hide();
		$("#login").hide();
		$("#loginform").trigger('reset');
		$(".error").text("");
		//$("input-box.error").remove();
		//$(".error").removeClass("error");
	}

	function regshow()
	{
		console.log(" In js reg show");
		$("#popup").show();
		$("#reg").show();
		$("#login").hide();
		//$(".error").css("display","none");
	}

	function regoff()
	{
		console.log(" In js reg off");
		$("#popup").hide();
		$("#reg").hide();
		$("#regform").trigger('reset');
		$(".error").text("");
	}



	function hidePopup()
	{
		$("#popup").hide();
		$("#login").hide();
		$("#reg").hide();
		$("#regform").trigger('reset');
		$("#loginform").trigger('reset');
		$(".error").text("");
	}

}


//Registration Form Validation
var validation = new Validation();

function Validation()
{
	this.fnamevalid=fnamevalid;
	this.numbervalid=numbervalid;
	this.emailvalid=emailvalid;
	this.addressvalid=addressvalid;
	this.pwdvalid=pwdvalid;
	this.formvalid=formvalid;
	this.restrictalphabets=restrictalphabets;
	this.restrict_number=restrict_number;
	this.checkTrueOnButton=checkTrueOnButton;
	this.eachtrue=eachtrue;

	function fnamevalid()
	{
		var name=$("#fname").val();
		var namept=/^([a-zA-Z]){3,10}$/;

		if (name==null || name==undefined || name=='')
		{
			$("#uname-error").text("*Required Field");
			return false;
		}

		else if(namept.test(name))
		{
			$("#uname-error").text("");
			return name;
			//$("#uname-error").css("display","none");
		}
		else
		{
			$("#uname-error").text("Last name should be 3 to 10 character");
			return false;
		}

	}


	function numbervalid()
	{ 
		var num=$("#number").val();
		let numpt=/^(^[789])([0-9]){9}$/;
		if (num==null || num==undefined || num=='')
		{
			$("#number-error").text("*Required Field");
			return false;
		}
		else if (numpt.test(num))
		{
			$("#number-error").text("");
			return num;
		}
		else
		{
			$("#number-error").text("*Mobile Number Must Be 10 digit eg: 789*******");
			return false;
		}
	}

	function emailvalid()
	{ 
		var email=$("#email").val();
		let regex=/^([_\-\.0-9a-zA-Z]+)@([_\-\.0-9a-zA-Z]+)\.([a-z]{2,3})$/;
		if (email==null || email==undefined || email=='')
		{
			$("#email-error").text("*Required Field");
			return false;
		}
		else if (regex.test(email))
		{
			$("#email-error").text("");
			return email;
		}
		else
		{
			$("#email-error").text("*invalid Email id");
			return false;
		}
	}

	function addressvalid()
	{ 
		var adress=$("#address").val();

		if (adress==null || adress==undefined || adress=='')
		{
			$("#address-error").text("*Required Field");
			return false;
		}
		else
		{ 
			$("#address-error").text("");
			return adress;
		}
	}

	function pwdvalid()
	{ 
		var name=$("#password").val();
		let regex=/(?=^.{6,}$)((?=.*\d)(?=.*[A-Z])(?=.*[a-z])|(?=.*\d)(?=.*[^A-Za-z0-9])(?=.*[a-z])|(?=.*[^A-Za-z0-9])(?=.*[A-Z])(?=.*[a-z])|(?=.*\d)(?=.*[A-Z])(?=.*[^A-Za-z0-9]))^.*/;

		if (name==null || name==undefined || name=='')
		{
			$("#pwd-error").text("*Required Field");
			return false;
		}
		else if(regex.test(name))
		{
			$("#pwd-error").text("");
			return name;
		}
		else
		{ 
			$("#pwd-error").text("Password Must contain Upper case and Special characters");
			return false;
		}
	}

	function restrictalphabets(e)
	{
		var x=e.which||e.keycode;
		if((x>=48 && x<=57)|| x==8 || (x>= 35 && x<=40) || x==47)
		{
			return true;
		}
		else
			return false;
	}

	function restrict_number(key) 
	{
		var keycode = (key.which) ? key.which : key.keyCode;

		if ((keycode > 64 && keycode < 91) || (keycode > 96 && keycode < 123))  
		{     
			return true;    
		}
		else
		{
			return false;
		}  
	}

	function checkTrueOnButton()
	{
		if(fnamevalid() || numbervalid()|| emailvalid() || addressvalid() || pwdvalid() )
		{
			return true;
		}
		else
		{
			return false;
		}    
	}

	function eachtrue()
    {
        if(fnamevalid() && numbervalid() && emailvalid() && addressvalid() && pwdvalid())
        {
            return true;   
        }
        else
        {
            return false;
        }    
    }

	function formvalid(event)
	{
		var fname=$("#fname").val();
		var num=$("#number").val();
		var email=$("#email").val();
		var adress=$("#address").val();
		var password=$("#password").val();

		if(validation.fnamevalid()==null && validation.fnamevalid()==undefined && validation.fnamevalid()=='')
		{
			$("#uname-error").text("*Required Field");
			return false;

		}
		else if(validation.numbervalid()==null && validation.numbervalid()==undefined && validation.numbervalid()=='')
		{
			$("#number-error").text("*Required Field");
			return false;
		}
		else if(validation.emailvalid()==null && validation.emailvalid()==undefined && validation.emailvalid()=='')
		{
			$("#email-error").text("*Required Field");
			return false;
		}
		else if(validation.addressvalid()==null && validation.addressvalid()==undefined && validation.addressvalid()=='')
		{
			$("#address-error").text("*Required Field");
			return false;
		}
		else if(validation.pwdvalid()==null && validation.pwdvalid()==undefined && validation.pwdvalid()=='')
		{
			$("#pwd-error").text("*Required Field");
			return false;
		}
		else if(validation.fnamevalid() || validation.numbervalid() || validation.emailvalid() || validation.addressvalid() || validation.pwdvalid())
		{
			//$("#regform").trigger('reset');
			return true;
			$("#regform").trigger('reset');
		}
		else
		{
			return false;
			$("#regform").trigger('reset');
			event.preventDefault();
		}
	}
}


//LOGIN page validation


var loginvalidation = new LoginValidation();

function LoginValidation()
{
	this.unamevalid=unamevalid;
	this.passvalid=passvalid;
	this.Loginformvalid=Loginformvalid;

	function unamevalid()
	{
		var uname = $("#loginname").val();
		console.log("entered");
		var unamept = /^([_\-\.0-9a-zA-Z]+)@([_\-\.0-9a-zA-Z]+)\.([a-z]{2,3})$/;
		if (uname==null || uname==undefined || uname=='')
		{
			$("#unameerror").text("*Required Field");
			return false;
		}
		else if (unamept.test(uname))
		{
			$("#unameerror").text("");
			return uname;

		}
		else
		{
			$("#unameerror").text("*Enter valid Email");
			return false;
		}
	}


	function passvalid()
	{
		var uname = $("#loginpass").val();
		var passpt = /(?=^.{6,}$)((?=.*\d)(?=.*[A-Z])(?=.*[a-z])|(?=.*\d)(?=.*[^A-Za-z0-9])(?=.*[a-z])|(?=.*[^A-Za-z0-9])(?=.*[A-Z])(?=.*[a-z])|(?=.*\d)(?=.*[A-Z])(?=.*[^A-Za-z0-9]))^.*/;
		if (uname==null || uname==undefined || uname=='')
		{
			$("#passerror").text("*Required Field");
			return false;
		}
		else if (passpt.test(uname))
		{
			$("#passerror").text("");
			return uname;

		}
		else
		{
			$("#passerror").text("*Enter valid Password");
			return false;

		}
	}

	function Loginformvalid()
	{
		var fname=$("#loginname").val();
		var lname=$("#loginpass").val();

		if(loginvalidation.unamevalid()==null && loginvalidation.unamevalid()==undefined && loginvalidation.unamevalid()=='')
		{
			$("#unameerror").text("*Required");
		}
		else if(loginvalidation.passvalid()==null && loginvalidation.passvalid()==undefined && loginvalidation.passvalid()=='')
		{
			$("#passerror").text("*Required");
		}
		else if( loginvalidation.unamevalid() || loginvalidation.passvalid() )
		{
			return true;
		}
		else
		{
			$("#loginform").trigger('reset');
			event.preventDefault();
		}
	}
}

var citiesByState = {2: ["Ahmedabad","Surat","Rajkot"],1: ["Mumbai","Pune","Nashik"],4: ["kochi","Kanpur"]}
function makeSubmenu(id) {
	if(id.length==0) document.getElementById("citySelect").innerHTML = "<option></option>";
	else {
		var citiesOptions = "";
		var value = $('#'+id+' :selected').val();
		for(cityId in citiesByState[value])
		{
			citiesOptions+="<option>"+citiesByState[value][cityId]+"</option>";
		}
		document.getElementById("citySelect").innerHTML = citiesOptions;
	}
}
function displaySelected() { 
	var country = document.getElementById("countrySelect").value;
	var city = document.getElementById("citySelect").value;
	//alert(country+"\n"+city);
}
function resetSelection() {
	document.getElementById("countrySelect").selectedIndex = 0;
	document.getElementById("citySelect").selectedIndex = 0;
}


var validate = new Validate();

function Validate()
{
	this.setInfo = setInfo;

	function setInfo ()
	{
		var username =$("#email").val();

		if(username.length >= 3)
		{
			$.ajax({
				url:"check.jsp",
				type:"post",
				data:"email="+username,
				dataType:"text",
				success:function(data)
				{
					$("#email-error").html(data);
				} 
			});
		}
		else
		{
			$("#email-error").html(" ");
		}

	}
}