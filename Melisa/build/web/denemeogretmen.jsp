<%-- 
    Document   : denemeogretmen
    Created on : 19.Oca.2022, 23:17:18
    Author     : kursa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DataBase.database"%>
<%@page import="veriler.*"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <link href="StyleSheet/denemeyonetici.css" rel="stylesheet" type="text/css"/>

</head>
<body>
       <%

        Cookie [] cookies = request.getCookies();
        // maili hafızada tutmak için 
        HttpSession oturumm = request.getSession();
               String mail = "";
               boolean d = oturumm.getAttribute("Ymail") != null;
               if(d){
                   mail =oturumm.getAttribute("Ymail").toString();
               }
if(cookies != null){
    for(int i = 0; i < cookies.length; i++){
        if(cookies[i].getName().equals("mail")){
            mail = cookies[i].getValue();
            break;
        }
    }
}
    %>
    <div class="cizgi">
    <h1 class="baslik">SINAVA GİRİŞ</h1>
    

        
        <div class="info1" >
            <p>HOSGELDİN</p>
            <p><%out.print(mail);  %></p>
        </div>
        

    <form action="index.jsp">
            <button class="cikis" type="submit" name="cikis">ÇIKIŞ</button> 
        </form>
   
</div>

<div class="orta">
    <form action="">
        <textarea placeholder="soru" name="soru"></textarea>
        
        <input placeholder="a şıkkı" type="text" name="a"/>
        <input placeholder="b şıkkı" type="text" name="b"/>
        <input placeholder="c şıkkı" type="text" name="c"/>
        <input placeholder="d şıkkı" type="text" name="d"/>
        <select name="cevap">
            <option>a</option>
            <option>b</option>
            <option>c</option>
            <option>d</option>
        </select>
        <button type="submit" name="ekle">ekle</button>
    </form>
    <%
    database dt = new database();
    String soru = request.getParameter("soru");
    String cevap = request.getParameter("cevap");
    
    String a = request.getParameter("a");
    String b = request.getParameter("b");
    String c = request.getParameter("c");
    String ekle = request.getParameter("ekle");
    soru s = new soru(soru, cevap,a,b,c);
                if(ekle != null){
                    if (!soru.equals("") && !cevap.equals("")) {
                        dt.insertsoru(s);
                    }
                }
    %>

              </div>
</div>
</body>
</html>
