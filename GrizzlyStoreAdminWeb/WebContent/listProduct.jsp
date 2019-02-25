<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>List Product</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="styles/main.css" >
    <script src="scripts/main.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Insert title here</title>
</head>
<body>
<c:set var="user" value="${param.username }" scope="session"></c:set>

<form method="post" >
<div  class="main_bodypage ">
        <div class="row">
            <div class="col">
                <img src="images/logo.jpg" width=200px  height=65px>
                <input  type="text" placeholder="Search" class="search_input" >
                <i id="nav_search_icon" class="fa fa-search"></i>
            </div>
            <div class="mg60 float_left"  >
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

            <div class="main_divpag32">
                <div>
                    <input type="button" class="tabbar active" value="PRODUCTS" >
                    <input type="Button" class="tabbar" value="VENDORS">
                    <input type="Button" class="tabbar2" >
                </div>
                <div class="main_subdivpag32">
                    
                    
                    <select class="input_fieldpage2" disabled >
                                <option>Choose Category</option>
                    </select>
                    <input type="text" class="input_fieldpage2" placeholder="Search Category">
                    <i id="filtersubmitCategory" class="fa fa-search"></i>
                    <select class="input_fieldpage2"  >
                            <option disabled selected>Sort By</option>
                            <option>Brand</option>
                            <option>Rating</option>
                            <option>Category</option>
                    </select>
                    <button class="add_productbtn">Add Product</button>
                    
                </div>

                <div class="table_enhnc">
                        <table class="table table-bordered noBorder" style="border: 2px solid white;">
                                <thead>
                                  <tr>
                                    <th scope="col"></th>
                                    <th scope="col">Product List</th>
                                    <th scope="col">Brand</th>
                                    <th scope="col">Category</th>
                                    <th scope="col">Rating</th>
                                    <th scope="col"></th>
                                  </tr>
                                </thead>
                                <tbody >
                                
                                <c:forEach var="viewData" items="${list}">
                                  <tr>
                                    <td><div class="round">
                                            <input type="checkbox" id="checkbox" >
                                            <label for="checkbox"></label>
                                          </div>
                                        </td> 
                                    <td></td>
                                    <td><c:out value="${list}"></c:out></td>
                                    <td>Personal care</td>
                                    <td>4.7</td>
                                    <td>
                                            <button disabled>View</button>
                                            <button disabled>Block</button>
                                            <button disabled>Remove</button>
                                    </td>
                                  </tr>
                                  
                                  <tr>
                                        <td><div class="round">
                                                <input type="checkbox" id="checkbox1" />
                                                <label for="checkbox1"></label>
                                              </div>
                                            </td>
                                        <td>Shaver</td>
                                        <td>Braun</td>
                                        <td>Personal care</td>
                                        <td>4.8</td>
                                        <td>
                                                <button disabled>View</button>
                                                <button disabled>Block</button>
                                                <button disabled>Remove</button>
                                        </td>
                                      </tr>
                                      <tr>
                                            <td><div class="round">
                                                    <input type="checkbox" id="checkbox2" />
                                                    <label for="checkbox2"></label>
                                                  </div>
                                                </td>
                                    
                                            <td>Macbook Pro</td>
                                            <td>Apple</td>
                                            <td>Laptops</td>
                                            <td>4.9</td>
                                            <td>
                                                    <button disabled>View</button>
                                                    <button disabled>Block</button>
                                                    <button disabled>Remove</button>
                                            </td>
                                          </tr>    
                                          <tr>
                                                <td><div class="round">
                                                        <input type="checkbox" id="checkbox3" />
                                                        <label for="checkbox3"></label>
                                                      </div>
                                                    </td>
                                                <td>iMac 27"</td>
                                                <td>Apple</td>
                                                <td>Laptops</td>
                                                <td>4.6</td>
                                                <td>
                                                        <button disabled>View</button>
                                                        <button disabled>Block</button>
                                                        <button disabled>Remove</button>
                                                </td>
                                              </tr>
                                              <tr>
                                                    <td><div class="round">
                                                            <input type="checkbox" id="checkbox4" />
                                                            <label for="checkbox4"></label>
                                                          </div>
                                                        </td>
                                                    <td>Micron Pens</td>
                                                    <td>Sakura Pigma</td>
                                                    <td>Art Supplies</td>
                                                    <td>4.7</td>
                                                    <td>
                                                            <button disabled>View</button>  
                                                            <button disabled>Block</button>  
                                                            <button disabled>Remove</button>  
                                                    </td>
                                                  </tr>

                                                  <tr>
                                                        <td><div class="round">
                                                                <input type="checkbox" id="checkbox5" />
                                                                <label for="checkbox5"></label>
                                                              </div>
                                                            </td>
                                    
                                                        <td>Paint Markers</td>
                                                        <td>Copic</td>
                                                        <td>Art Supplies</td>
                                                        <td>4.2</td>
                                                        <td>
                                                                <button disabled>View</button>
                                                                <button disabled>Block</button>
                                                                <button disabled>Remove</button>
                                                        </td>
                                                      </tr>

</c:forEach>
                                 
                                </tbody>
                              </table>
                </div>
                
            </div>

            


</body></form>

</html>