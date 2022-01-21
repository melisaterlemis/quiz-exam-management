<%-- 
    Document   : denemeogrenci
    Created on : 19.Oca.2022, 22:59:30
    Author     : kursa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>SINAVLAR</title>
    <link href="StyleSheet/denemeogrenci.css" type="text/css" rel="stylesheet"/>
</head>
<body>    
    <div class="cizgi">
    <h1 class="baslik">SINAVA GİRİŞ</h1>
        
        <div class="info1" >
            <p>KURŞAD TALHA</p>
            <p>KURT</p>
        </div>
        
    <form action="index.jsp">
            <button class="cikis" type="submit" name="cikis">ÇIKIŞ</button> 
        </form>
   
</div>

<div class="orta">
    <div class="fizik">
        <h1 class="a">FİZİK</h1>
        <h1 class="a1">2. DÖNEM 2. SINAVI </h1>
        <form action="sinav.jsp">
            <button class="gir" type="submit">SINAVA BAŞLA</button> 
        </form>
    </div>
    
    <div class="turkce">
        <h1 class="b">TÜRKÇE</h1>
        <h1 class="b">2. DÖNEM 2. SINAVI </h1>
        <form action="sinav.jsp">
            <button class="gir" type="submit">SINAVA BAŞLA</button> 
        </form>
    </div>
</div>

</body>
</html>
