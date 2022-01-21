<%-- 
    Document   : ogrenci
    Created on : 16.Oca.2022, 15:38:13
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
        <title>ÖĞRENCİ GİRİŞ</title>
        <link href="StyleSheet/ogrenci.css" type="text/css" rel="stylesheet"/>
</head>
<body>
    
    <center>

        <div class="d-üst">
            <h1>ÖĞRENCİ GİRİŞİ</h1>
        </div>

    <div id="formdiv">
        <form action="">
            <input id="kullaniciadi" type="text" name="tc" placeholder="tc"/><br>
            <input id="sifre" type="password" name="sifre" placeholder="Şifre"/><br>
            <button id="giris" type="submit" name="giris" style="margin-top:10px;">Giriş</button>
        </form>
    </div>
    </center>
    <%
            database dt = new database();
            String tc = request.getParameter("tc");
            String sifre = request.getParameter("sifre");
            String giris  = request.getParameter("giris");
             if(giris != null){
                 System.out.println(tc+sifre);
                      if (dt.KontrolOgrenci(tc, sifre)) {
                                response.sendRedirect("denemeogrenci.jsp");
                            }
                      else{
                          System.out.println("GİRİŞ BİLGİLERİ SIKINTILI");
                      }
                  }
    %>
</body>
</html>
