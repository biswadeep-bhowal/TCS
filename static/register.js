
function validate() 
{ 
    
    var abc=document.forms["myForm"]["first_name"].value;
    if(abc=="")
    {
        alert("Please enter the first name");
        return false;
    }
    
    var def=document.forms["myForm"]["last_name"].value;
    if(def=="")
    {
      alert("Please enter the last name");
      return false;
    }
   
 
    var email = document.forms["myForm"]["email"].value;
    var re = "^[_a-zA-Z0-9-]+(\.[_a-zA-Z0-9-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.(([0-9]{1,3})|([a-zA-Z]{2,3})|(aero|coop|info|museum|name))$"
    var x=email.match(re);
   
    if(x)
    {
    }
    else
    {
      alert("Email-id not in correct format");
      return false;
    }      
              
    var pass=document.forms["myForm"]["password"].value;
    var checks="(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[^A-Za-z0-9])(?=.{8,})"
    var res=pass.match(checks);
    if(res)
    {
    }
    else
    {
      alert("Password must contain atleast 1 small, 1 capital, 1 numeric, 1 special character and must be atleast 8 characters long");
      return false;
    }
}