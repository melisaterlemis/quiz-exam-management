

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <title>HOŞGELDİNİZ!</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="StyleSheet/index.css" type="text/css" rel="stylesheet"/>
</head>
<body>
    <center>
    <div class="d-üst">
    
     <h1>
        SINAV GİRİŞ MERKEZİ
     </h1>
    
    </div>
    
    <div class="d-iç">
        <form class="iç1" action="yonetici.jsp" method="get">
            <input id="yonetici_btn" type="submit" value="YÖNETİCİ GİRİŞİ" />
        </form><br>

        <form class="iç2" action="ogrenci.jsp" method="get">
            <input  id="user_btn" type="submit" value="ÖĞRENCİ GİRİŞİ" />
        </form><br>

        <form class="iç3" action="ogretmen.jsp" method="get">
            <input  id="admin_btn" type="submit" value="ÖĞRETMEN GİRİŞİ" />
        </form>
    </center>
    </div>
</body>
</html>

