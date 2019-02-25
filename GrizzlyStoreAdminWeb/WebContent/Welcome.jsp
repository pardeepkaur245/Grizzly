<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Add Product</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="styles\main.css" />
    <script src="scripts\main.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
   <c:set var="user" value="${param.username }" scope="session"></c:set>
  <form method="post">
<div  class="main_bodypage ">
    <div class="row">
        <div class="col">
            <img src="images/logo.jpg" width=200px  height=65px>
            <input  type="text" placeholder="Search" class="search_input"  >
            <i id="nav_search_icon" class="fa fa-search"></i>
        </div>
        <div class="mg60 float_left" >
                <label class="mg60 fa fa-bell " ></label>
                <label  class="mg20 ">Welcome , Admin  &lt; <c:out value="${sessionScope.user }"></c:out>&gt;</label>
                <button class="logoutbutton"><a href="logout.jsp">LogOut</a></button>
        </div>
    </div>
</div>

    
        <div class="border profileCard_left_pos" >
            <h3 class="profileCard_top">Profile <small style="float: right;">   Edit</small></h3>
            <img src="images/blank.jfif" class="blank_image_style" >
            <p style="text-align:center"><b style="font-size:30px">Helen cho</b> <br><br> ID <br> GRZLY17234<br><br>Designation<br>Sr.Admin<br><br>Office<br>NYC,NY,USA</p><br>
            
        </div>
        </form>
	<form method="post" action="listProduct">
        <div class="main_div_window" >
            <input type="submit" class="tabbar active" value="PRODUCTS" >
            
            <input type="Button" class="tabbar" value="VENDORS"><br><br><br>
            <div class="float_left">
            <div class="place_bottom_parent plus_div" >
                <label class="mg10">1</label>
               <!-- <input type="image" src="images/plus_sign.png" width=200px height=182px style="margin: 50px 100px" >-->
               <input type="file" name="filetoupload"/>
                <div class="place_bottom" ><p class="img_label">Add Images</p> </div>
            </div>
            <div class="Style_button" Style="padding-top:10px">
            <button>2</button>
            <button>3</button>
            <button>4</button>
            <button>5</button>
            </div>
            </div>
            </form>
            <form method="post" action="addProduct">
            <div class="float_left main_input_div" >
            <input type="text" class="main_input" name="productId" placeholder="Enter Product Id" ><br>
             <select class="main_input" name="productCategory" >
                <option>Category</option>
                <option>Electronics</option>
                <option>Grocery</option>
                <option>Fashion and Lifestyle</option>
            </select>
           <!--   <input type="text" class="main_input" name="productCategory" placeholder="Cat"><br>-->
            <input type="text" class="main_input" name="productName" placeholder="Name"><br>
            <input type="text" class="main_input" name="productDescription" placeholder="Description"><br>
            <input type="text" class="main_input" name="productPrice" placeholder="Price"><br>
            
            </div>
            <br>
           
            
            
       
    </div >

        <div class="place_bottom_parent place_bottom_div" >
        <div class="place_bottom" >
        <button  class="above_other ">Add</button>
        <button  class="above_other">Cancel</button>
        </div>
        </div>
    </form>
    
</body>
</html>