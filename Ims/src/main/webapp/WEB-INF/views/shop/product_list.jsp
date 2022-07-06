<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <style>
      body{
  background-color: #f6f7f9;
}

.custom-badge{

      background-color: #343a40!important;
    color: #fff;
    font-size: 11px;
    padding: 5px;
    padding-left: 11px;
    padding-right: 11px;
    border-radius: 7px;
}


.card{

  border:none;
  padding: 15px;
  cursor: pointer;
}


.time i{

  color: #cacacaa3;
}
  </style>
<meta charset="UTF-8">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<title>Insert title here</title>
</head>
<body>

<%@ include file="../include/menu.jsp" %>

<div class="container mt-5">

    <div class="d-flex justify-content-between align-items-center mb-3">

        <span>Hottest Giveaways</span>
        <span class="custom-badge text-uppercase">See More</span>
        
    </div>



    <div class="row">

        <div class="col-md-3" style="margin-top: 20px;">

            <div class="card">

                <div class="d-flex justify-content-between align-items-center">

                    <div class="d-flex flex-row align-items-center time">

                      <i class="fa fa-clock-o"></i>
                      <small class="ml-1">#####</small>

                        
                    </div>

                    <img src="https://i.imgur.com/suuFVrQ.png" width="20">피자
                    
                </div>


                <div class="text-center">
                    
                    <img src="https://i.imgur.com/TbtwkyW.jpg" width="250">
                </div>

                <div class="text-center">

                    <h5>Amazon Echo</h5>
                    <span class="text-success">$200 value</span>
                    

                </div>
                
            </div>
            
        </div>



        


    </div>
       

   </div>







</body>
</html>