package DataBase;

import java.sql.*;
import veriler.*;
public class database {
    static final String DB_URL = "jdbc:mysql://localhost:3306/quizsinavyonetimi";
    static final String USER="root";
    static final String PASSWORD="root";
    
    public boolean KontrolYonetici(String kullaniciadi, String sifre){
        Connection con =null;
        Statement st = null;
        ResultSet rst=null;
        boolean durum = false;
        try {
           Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            st = con.createStatement();
            String sql ="SELECT * FROM yonetici";
            rst = st.executeQuery(sql);

            while(rst.next()){
                if(rst.getString("kullaniciadi").equals(kullaniciadi) && rst.getString("sifre").equals(sifre)){
                    System.out.println("YÖNETİCİ BULDU");
                    durum = true;
                    break;
                }else{
                    durum = false;
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(" HATA : "+ e );

        }
        return durum;
    }
    public boolean KontrolOgrenci(String tc, String sifre){
        Connection con =null;
        Statement st = null;
        ResultSet rst=null;
        boolean durum = false;
        try {
           Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            st = con.createStatement();
            String sql ="SELECT * FROM ogrenci";
            rst = st.executeQuery(sql);

            while(rst.next()){
                System.out.println("tc ="+rst.getString("tc"));
                if(rst.getString("tc").equals(tc) && rst.getString("sifre").equals(sifre)){
                    System.out.println("YÖNETİCİ BULDU");
                    durum = true;
                    break;
                }else{
                    durum = false;
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(" HATA : "+ e );

        }
        return durum;
    }
    public boolean KontrolOgretmen (String kullaniciadi, String sifre){
        Connection con =null;
        Statement st = null;
        ResultSet rst=null;
        boolean durum = false;
        try {
           Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            st = con.createStatement();
            String sql ="SELECT * FROM ogretmen";
            rst = st.executeQuery(sql);

            while(rst.next()){
                if(rst.getString("kullaniciadi").equals(kullaniciadi) && rst.getString("sifre").equals(sifre)){
                    System.out.println("YÖNETİCİ BULDU");
                    durum = true;
                    break;
                }else{
                    durum = false;
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(" HATA : "+ e );

        }
        return durum;
    }
     public static void insertOgrenci(ogrenciler ogrenciler) {

        Connection con =null;
        PreparedStatement psnt = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            String sql ="INSERT INTO ogrenci(isim,soyisim,tc,ogrencino,dogumtarih,sifre) VALUES( ?, ?, ?, ?, ?, ?)";
            psnt = con.prepareStatement(sql);
            
            psnt.setString(1,ogrenciler.getIsim());
            psnt.setString(2,ogrenciler.getSoyisim());
            psnt.setString(3,ogrenciler.getTc());
            psnt.setString(4,ogrenciler.getOgrencino());
            psnt.setString(5,ogrenciler.getDogumtarih());
            psnt.setString(6,ogrenciler.getSifre());
           
            psnt.executeUpdate();
           // veri tabanı kullanıldıktan sonra kapatılıyor

            psnt.close();
            con.close();
        } catch (Exception e) {
            System.out.println("HATA :  "+ e);
        }
    }
      public static void insertsoru(soru soru) {

        Connection con =null;
        PreparedStatement psnt = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            String sql ="INSERT INTO sinav(soru,cevap,a,b,c) VALUES( ?, ?,?, ?,?)";
            psnt = con.prepareStatement(sql);
            
            psnt.setString(1,soru.getSoru());
            psnt.setString(2,soru.getCevap());
            psnt.setString(3,soru.getA());
            psnt.setString(4,soru.getB());
            psnt.setString(5,soru.getC());
           
            psnt.executeUpdate();
           // veri tabanı kullanıldıktan sonra kapatılıyor

            psnt.close();
            con.close();
        } catch (Exception e) {
            System.out.println("HATA :  "+ e);
        }
    }
      public ResultSet soruTablo(int id){
        Connection con =null;
        Statement st = null;
        ResultSet rst=null;

        try {
           Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            st = con.createStatement();
            String sql ="SELECT FROM sinav WHERE id='"+id+"'";
            rst = st.executeQuery(sql);

        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(" HATA : "+e );
        }
        return rst;
    }
      
    public  void sorusil(int id){
     Connection conn = null;
         PreparedStatement sorgu = null;


          try {
             Class.forName("com.mysql.jdbc.Driver");
             conn = DriverManager.getConnection(DB_URL, USER, PASSWORD);
             sorgu = conn.prepareStatement("DELETE   FROM sinav WHERE id='" + id + "'");
             sorgu.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace();

        }
    }
     public ResultSet ogrenciTablo(){
        Connection con =null;
        Statement st = null;
        ResultSet rst=null;

        try {
           Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            st = con.createStatement();
            String sql ="SELECT * FROM ogrenci";
            rst = st.executeQuery(sql);

        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(" HATA : "+e );
        }
        return rst;
    }
    public  void ogrencisil(int id){
     Connection conn = null;
         PreparedStatement sorgu = null;


          try {
             Class.forName("com.mysql.jdbc.Driver");
             conn = DriverManager.getConnection(DB_URL, USER, PASSWORD);

             sorgu = conn.prepareStatement("DELETE   FROM ogrenci WHERE id='" + id + "'");
             sorgu.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace();

        }
    }
    
   public static void ogrenciGuncelle(int ID, String isim, String soyisim, String tc, String ogrencino, String dogumtarih, String sifre){
        Connection conn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            PreparedStatement sorgu = conn.prepareStatement("UPDATE ogrenci SET isim ='" + isim + "', soyisim='" + soyisim + "', tc='" + tc + "', ogrencino='" +
                    ogrencino +  "', dogumtarih='" + dogumtarih + "', sifre='" + sifre + "' WHERE id='" + ID + "'");
            sorgu.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace();
            System.out.println("KULLANICI GÜNCELLEMEDE HATA");
        }
    } 
   public static void insertOgretmen(ogretmenler ogretmenler) {

        Connection con =null;
        PreparedStatement psnt = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            String sql ="INSERT INTO ogretmen(isim,soyisim,tc,email,dogumtarih,kullaniciadi,sifre) VALUES( ?, ?, ?, ?, ?, ?, ?)";
            psnt = con.prepareStatement(sql);
            
            psnt.setString(1,ogretmenler.getIsim());
            psnt.setString(2,ogretmenler.getSoyisim());
            psnt.setString(3,ogretmenler.getTc());
            psnt.setString(4,ogretmenler.getEmail());
            psnt.setString(5,ogretmenler.getDogumtarih());
             psnt.setString(6,ogretmenler.getKullaniciadi());
            psnt.setString(7,ogretmenler.getSifre());
           
           
            psnt.executeUpdate();
           // veri tabanı kullanıldıktan sonra kapatılıyor

            psnt.close();
            con.close();
        } catch (Exception e) {
            System.out.println("HATA :  "+ e);
        }
    }
   public ResultSet ogretmenTablo(){
        Connection con =null;
        Statement st = null;
        ResultSet rst=null;

        try {
           Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            st = con.createStatement();
            String sql ="SELECT * FROM ogretmen";
            rst = st.executeQuery(sql);

        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(" HATA : "+e );
        }
        return rst;
    }
   public  void ogretmensil(int id){
     Connection conn = null;
         PreparedStatement sorgu = null;


          try {
             Class.forName("com.mysql.jdbc.Driver");
             conn = DriverManager.getConnection(DB_URL, USER, PASSWORD);

             sorgu = conn.prepareStatement("DELETE   FROM ogretmen WHERE id='" + id + "'");
             sorgu.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace();

        }
    }
   
   public static void ogretmenGuncelle(int ID, String isim, String soyisim, String tc, String email, String dogumtarih, String sifre,String kullaniciadi){
        Connection conn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            PreparedStatement sorgu = conn.prepareStatement("UPDATE ogretmen SET isim ='" + isim + "', soyisim='" + soyisim + "', tc='" + tc + "', email='" +
                    email +  "', dogumtarih='" + dogumtarih + "', sifre='" + sifre +  "', kullaniciadi='" + kullaniciadi +"' WHERE id='" + ID + "'");
            sorgu.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace();
            System.out.println("KULLANICI GÜNCELLEMEDE HATA");
        }
    } 
}
