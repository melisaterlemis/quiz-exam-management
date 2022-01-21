<%-- 
    Document   : ogretmen
    Created on : 16.Oca.2022, 16:54:34
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
        <link href="StyleSheet/ogrenci.css" type="text/css" rel="stylesheet"/>
        <title>ÖĞRETMEN GİRİŞİ</title>
</head>
<body>
    <center>

        <div class="d-üst">
            <h1>ÖĞRETMEN GİRİŞİ</h1>
        </div>

    <div id="formdiv">
        <form action="">
            <input id="kullaniciadi" type="text" name="kullaniciadi" placeholder="Kullanıcı Adı"/><br>
            <input id="sifre" type="password" name="sifre" placeholder="Şifre"/><br>
            <label class="unut">Beni Unutma: </label>
            <input class="unut1" type="checkbox" name="unutma" /> 
            <button id="giris" type="submit" name="giris" style="margin-top:10px;">Giriş</button>
        </form>
    </div>
    </center>

<%
            database database = new database();
            String KullaniciAdi = request.getParameter("kullaniciadi");
            String sifre = request.getParameter("sifre");
            String giris = request.getParameter("giris");
            session.setAttribute("Kadi", KullaniciAdi);
            
             Cookie ckMail = null;
            Cookie ckSifre = null;
            Cookie ckDurum = null;
            String name = "";
            String pass = "";
            boolean durum = request.getParameter("unutma") != null;
            
            
            
            if(giris != null && !KullaniciAdi.equals("") && !sifre.equals("")){
             ckDurum = new Cookie("durum", "true");
             ckMail = new Cookie("mail", KullaniciAdi);
             ckSifre = new Cookie("sifre", sifre);
    
    
}
         Cookie[] allCookies = request.getCookies();
         if (allCookies != null) {
                 for(Cookie cook: allCookies){
                     if(cook.getName().equalsIgnoreCase("mail")){
                         name = cook.getValue();
                     }
                     else if(cook.getName().equalsIgnoreCase("sifre")){
                         pass = cook.getValue();
                     }
                 }
             }
         
        if(allCookies != null){
             for(int i = 0; i < allCookies.length; i++){
             if(allCookies[i].getValue().contains("true")){
                 System.out.println("request.getContextPath():" + request.getContextPath());
                      response.sendRedirect("denemeogretmen.jsp");
                      break;
                  }
             else{
                 System.out.println("bulunamadi");
             }
         }
         }
            
            
            
            
            
            
                  if(giris !=null){
                      if (database.KontrolOgretmen(KullaniciAdi, sifre)) {
                          if(durum){
                         ckDurum.setMaxAge(1000);
                         response.addCookie(ckDurum);
                         ckMail.setMaxAge(1000);
                         response.addCookie(ckMail);
                         ckSifre.setMaxAge(1000);
                         response.addCookie(ckSifre);
                        }
                         System.out.println("YÖNETİCİ GELDİ" +request.getContextPath() );

                                response.sendRedirect("denemeogretmen.jsp");
                            }
                      else{
                          System.out.println("GİRİŞ BİLGİLERİ SIKINTILI");
                      }
                  }
%>



</body>
</html>
