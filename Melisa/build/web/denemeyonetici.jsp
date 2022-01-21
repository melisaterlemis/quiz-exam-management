<%-- 
    Document   : denemeyonetici
    Created on : 19.Oca.2022, 22:53:55
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
    <link href="StyleSheet/denemeyonetici.css" type="text/css" rel="stylesheet"/>
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
    <form action="denemeyoneticisi1.jsp">
        <button class="next" type="submit" name="next">ÖĞRETMEN AYARI</button> 
    </form>
<div class="kayt">
<form action="">
    <label>isim</label> 
    <input name="isim" type="text"/>
    <label>soyisim</label>
    <input name="soyisim" type="text"/>
    <label>tc</label>
    <input name="tc" type="text"/>
    <label>ogrencino</label>
    <input name="ogrencino" type="text"/>
    <label>dogumtarih</label>
    <input name="dogumtarih" type="text"/>
    <label>sifre</label>
    <input name="sifre" type="text"/>
    <button type="submit" name="kaydet">kaydet</button>
</form>
</div>
<%
                String isim =request.getParameter("isim");
                String soyisim =request.getParameter("soyisim");
                String tc =request.getParameter("tc");
                String ogrencino =request.getParameter("ogrencino");
                String dogumtarih =request.getParameter("dogumtarih");
                String sifre =request.getParameter("sifre");
                String kaydet = request.getParameter("kaydet");
                ogrenciler ogrenci = new ogrenciler(isim, soyisim, tc, ogrencino, dogumtarih, sifre);
                database dt = new database();
                if(kaydet != null){
                    if (!isim.equals("") && !soyisim.equals("")&& !tc.equals("")&& !ogrencino.equals("")
                            && !dogumtarih.equals("")&& !sifre.equals("")) {
                        dt.insertOgrenci(ogrenci);
                    }
                }
%>
<table id="personel_tablo">
                    <tr>
                        <th>isim</th>
                        <th>soyisim</th>
                        <th>tc</th>
                        <th>ogrencino</th>
                        <th>dogumtarih</th>
                        <th>sifre</th>
                        <th>sil</th>
                        <th>güncelle</th>
                    </tr>
               <%
                  database database =  new database();
                  ResultSet result = database.ogrenciTablo();
                while (result.next()) {
                        out.print("<tr>");
                        out.print("<td>" + result.getString("isim")+"</td>" );
                        out.print("<td>" + result.getString("soyisim")+"</td>");
                        out.print("<td>" + result.getString("tc")+"</td>");
                        out.print("<td>" + result.getString("ogrencino")+"</td>");
                        out.print("<td>" + result.getString("dogumtarih")+"</td>");
                        out.print("<td>" + result.getString("sifre")+"</td>");
                       %>
                        <td><a href="denemeyonetici.jsp?id=<%= result.getString("id")%>">Bilgileri Sil</a></td>
                        <td><a href="denemeyonetici.jsp?edit=<%= result.getString("id")%>">Güncelle</a></td>
                       <%
                        out.print("<tr>");
                    }
                        HttpSession oturum = request.getSession(true);
                        String sil = request.getParameter("id");
                        String guncelle = request.getParameter("edit");
                        oturum.setAttribute("edit", guncelle);
                        
                        if(sil != null){
                            database.ogrencisil(Integer.valueOf(sil));
                            response.sendRedirect("denemeyonetici.jsp");
                        }
                        if(guncelle != null){
                           response.sendRedirect("ogrenciguncelle.jsp");
                        }
              %>



              </table>
              </div>
</body>
</html>
