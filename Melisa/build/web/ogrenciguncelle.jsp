<%-- 
    Document   : ogrenciguncelle
    Created on : 20.Oca.2022, 16:31:37
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
        <lable>ogrencino</lable>
        <input type="text" name="ogrencino"/>
        <lable>dogumtarih</lable>
        <input type="text" name="dogumtarih"/>
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
        String ogrencino =request.getParameter("ogrencino");
        String dogumtarih =request.getParameter("dogumtarih");
        String sifre =request.getParameter("sifre");
        String guncelle = request.getParameter("guncelle");
        String iptal = request.getParameter("iptal");
        HttpSession oturum = request.getSession();
        
        String edit;
        if (guncelle != null) {
            edit=oturum.getAttribute("edit").toString();
                if (!isim.equals("")&&!soyisim.equals("")&&!tc.equals("")&&!ogrencino.equals("")&&!dogumtarih.equals("")&&
                    !sifre.equals("")&&edit != null) {
                    dt.ogrenciGuncelle(Integer.valueOf(edit), isim, soyisim, tc, ogrencino, dogumtarih, sifre);
                    response.sendRedirect("denemeyonetici.jsp");
                }
            }
        if(iptal != null){
            response.sendRedirect("denemeyonetici.jsp");
        }
    %>
    </div>
</body>
</html>
