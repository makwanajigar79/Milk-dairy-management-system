<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
<html> 
<head>
    <title>Default</title>
 </head>
    <body>    
    <center><h2>
        Welcome to milk dairy
    </h2>
     <div class="slideshow-container">
     
<div class="mySlides fade">
    <img src="images/img2.jpg" height="400px" width="700px"/>
 
</div>

<div class="mySlides fade">
    <img src="images/img3.jpg" height="400px" width="700px"/>
</div>
    <div class="mySlides fade">
      <img src="images/img1.jpg" height="400px" width="700px"/>
    </div>


</div>
<br />
</center>
<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>


<script type="text/jscript">
let slideIndex = 0;
showSlides();

function showSlides() {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 3000); // Change image every 3 seconds
}
</script>
</body>
</html>
</asp:Content>
