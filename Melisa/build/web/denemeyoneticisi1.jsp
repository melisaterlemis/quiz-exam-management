<%-- 
    Document   : denemeyoneticisi1
    Created on : 20.Oca.2022, 02:01:55
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
    <h1 class="baslik">ÖĞRETMEN AYARI</h1>
    
        
        <div class="info1" >
            <p>ADMİN</p>
            <p>ADMİN</p>
        </div>
        
    <form action="index.jsp">
        <button class="cikis" type="submit" name="cikis">ÇIKIŞ</button> 
    </form>
   
</div>

<div class="orta">
    <form action="denemeyonetici.jsp">
        <button class="next" type="submit" name="next">ÖĞRENCİ AYARI</button> 
    </form>
    <div class="kayt">
    <form action="">
    <label>isim</label>
    <input name="isim" type="text"/>
    <label>soyisim</label>
    <input name="soyisim" type="text"/>
    <label>dogumtarih</label>
    <input name="dogumtarih" type="text"/>
    <label>tc</label>
    <input name="tc" type="text"/>
     <label>email</label>
    <input name="email" type="text"/>
     <label>kullanici adı</label>
    <input name="kullaniciadi" type="text"/>
    <label>sifre</label>
    <input name="sifre" type="text"/>
    <button type="submit" name="kaydet">kaydet</button>
</form>
</div>
<%
                database dt = new database();
                String isim =request.getParameter("isim");
                String soyisim =request.getParameter("soyisim");
                String tc =request.getParameter("tc");
                String email =request.getParameter("email");
                String dogumtarih =request.getParameter("dogumtarih");
                String kullaniciadi =request.getParameter("kullaniciadi");
                String sifre =request.getParameter("sifre");
                String kaydet = request.getParameter("kaydet");
                ogretmenler ogretmen = new ogretmenler(isim, soyisim, tc, email, dogumtarih, sifre, kullaniciadi);
                
                if(kaydet != null){
                    if (!isim.equals("") && !soyisim.equals("")&& !tc.equals("")&& !email.equals("")
                            && !dogumtarih.equals("")&& !sifre.equals("")&& !kullaniciadi.equals("")) {
                        dt.insertOgretmen(ogretmen);
                    }
                }
%>

<table id="personel_tablo">
                    <tr>
                        <th>isim</th>
                        <th>soyisim</th>
                        <th>tc</th>
                        <th>email</th>
                        <th>dogumtarih</th>
                        <th>kullaniciadi</th>
                        <th>sifre</th>
                    </tr>
               <%
                  database database =  new database();
                  ResultSet result = database.ogretmenTablo();
                while (result.next()) {
                        out.print("<tr>");
                        out.print("<td>" + result.getString("isim")+"</td>" );
                        out.print("<td>" + result.getString("soyisim")+"</td>");
                        out.print("<td>" + result.getString("tc")+"</td>");
                        out.print("<td>" + result.getString("email")+"</td>");
                        out.print("<td>" + result.getString("dogumtarih")+"</td>");
                        out.print("<td>" + result.getString("kullaniciadi")+"</td>");
                        out.print("<td>" + result.getString("sifre")+"</td>");
                       %>
                        <td><a href="denemeyoneticisi1.jsp?id=<%= result.getString("id")%>">Bilgileri Sil</a></td>
                        <td><a href="denemeyoneticisi1.jsp?edit=<%= result.getString("id")%>">Güncelle</a></td>
                       <%
                        out.print("<tr>");
                    }
                        HttpSession oturum = request.getSession(true);
                        String sil = request.getParameter("id");
                        String guncelle = request.getParameter("edit");
                        oturum.setAttribute("edit", guncelle);
                        
                        if(sil != null){
                            database.ogretmensil(Integer.valueOf(sil));
                            response.sendRedirect("denemeyoneticisi1.jsp");
                        }
                        if(guncelle != null){
                           response.sendRedirect("ogretmenguncelle.jsp");
                        }
              %>



              </table>
              </div>
</body>
</html>
