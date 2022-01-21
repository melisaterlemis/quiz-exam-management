<%-- 
    Document   : ogretmenguncelle
    Created on : 20.Oca.2022, 17:00:14
    Author     : kursa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DataBase.database"%>
<%@page import="java.sql.*"%>
<%@page import="veriler.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="StyleSheet/denemeyonetici.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div class="cizgi">
    <h1 class="baslik">ÖĞRENCİ AYARI</h1>
        
        <div class="info1" >
            <p>ADMİN</p>
            <p>ADMİN</p>
        </div>

    <form action="index.jsp">
        <button class="cikis" type="submit" name="cikis">ÇIKIŞ</button> 
    </form>
   
</div>

<div class="orta">
     <form action="">
        <lable>isim</lable>
        <input type="text" name="isim"/>
        <lable>soyisim</lable>
        <input type="text" name="soyisim"/>
        <lable>tc</lable>
        <input type="text" name="tc"/>
        <lable>email</lable>
        <input type="text" name="email"/>
        <lable>dogumtarih</lable>
        <input type="text" name="dogumtarih"/>
        <lable>kullanıcı adı</lable>
        <input type="text" name="kullaniciadi"/>
        <lable>sifre</lable>
        <input type="text" name="sifre"/>
        <button type="submit" name="guncelle">güncelle</button>
        <button type="submit" name="iptal">iptal</button>
    </form>
    <%
        database dt = new database();
        String isim =request.getParameter("isim");
        String soyisim =request.getParameter("soyisim");
        String tc =request.getParameter("tc");
        String email =request.getParameter("email");
        String dogumtarih =request.getParameter("dogumtarih");
        String kullaniciadi =request.getParameter("kullaniciadi");
        String sifre =request.getParameter("sifre");
        String guncelle = request.getParameter("guncelle");
        String iptal = request.getParameter("iptal");
        HttpSession oturum = request.getSession();
        
        String edit;
        if (guncelle != null) {
            edit=oturum.getAttribute("edit").toString();
                if (!isim.equals("")&&!soyisim.equals("")&&!tc.equals("")&&!email.equals("")&&!dogumtarih.equals("")&&
                        !kullaniciadi.equals("")&&!sifre.equals("")&&edit != null) {
                    dt.ogretmenGuncelle(Integer.valueOf(edit), isim, soyisim, tc, email, dogumtarih, sifre, kullaniciadi);
                    response.sendRedirect("denemeyoneticisi1.jsp");
                }
            }
        if(iptal != null){
            response.sendRedirect("denemeyoneticisi1.jsp");
        }
    %>
    </div>
</body>
</html>
