<%-- 
    Document   : soru5
    Created on : 21.Oca.2022, 21:02:50
    Author     : kursa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <link href="StyleSheet/soru.css" type="text/css" rel="stylesheet"/>
</head>
<body>
     
    <div class="soru">
        <p id="s-iç">
            1. Bilgiler geçici olarak hangi bellek üzerinde tutulur?
        </p>
    </div>
    
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>


    <div class="şıklar">
        <center>
        <label class="sıklar">
             <input id="a" type="checkbox" placeholder="A" class="radio" value="1" name="fooby[1][]" />Mal olan</label><br><br><br>
        <label class="sıklar">
            <input id="a" type="checkbox" placeholder="A" class="radio" value="1" name="fooby[1][]" />Akıllı olan</label><br><br><br>
        <label class="sıklar">
            <input id="a" type="checkbox" placeholder="A" class="radio" value="1" name="fooby[1][]" />Robotikten 45 alan</label><br><br><br>
        <label class="sıklar">
            <input id="a" type="checkbox" placeholder="A" class="radio" value="1" name="fooby[1][]" />Maldanda beter olan</label><br><br><br>
        </center> 
        <p class="harfler">A)</p>
        <p class="harfler">B)</p>
        <p class="harfler">C)</p>
        <p class="harfler">D)</p>
    </div>
    
    <div class="sag-panel">
    <center>
        <form class="iç1" action="" method="get">
            <input id="yonetici_btn" name="sonrakisoru" type="submit" value="SONRAKİ SORU" />
        </form>

        <div class="info">
            <br>
            <p>YUSUF FIRAT</p>
            <p>SİVAS CUMHURİYET ÜNİVERSİTESİ 2022-2023 ÖĞRETİM YILI VİZE SINAVI</p>
        </div>
    </center>
    </div>
    <%
        String sonrakisoru = request.getParameter("sonrakisoru");
        if (sonrakisoru != null) {
                response.sendRedirect("soru3.jsp");
            }
    %>
    <script>
       // the selector will match all input controls of type :checkbox
// and attach a click event handler 
$("input:checkbox").on('click', function() {
  // in the handler, 'this' refers to the box clicked on
  var $box = $(this);
  if ($box.is(":checked")) {
    // the name of the box is retrieved using the .attr() method
    // as it is assumed and expected to be immutable
    var group = "input:checkbox[name='" + $box.attr("name") + "']";
    // the checked state of the group/box on the other hand will change
    // and the current value is retrieved using .prop() method
    $(group).prop("checked", false);
    $box.prop("checked", true);
  } else {
    $box.prop("checked", false);
  }
});
    </script>
    
</body>
</html>
