package veriler;

public class yoneticiler {
    private String isim;
    private String soyisim;
    private String tc;
    private String email;
    private String dogum;
    private String kullaniciadi;
    private String sifre;
    private String adres;
    private String numara;
    public yoneticiler(String isim,String soyisim,String tc,String email,String dogum,String sifre,String kullaniciadi,String adres,String numara){
        this.isim = isim;
        this.soyisim = soyisim;
        this.tc = tc;
        this.kullaniciadi = kullaniciadi;
        this.dogum = dogum;
        this.sifre = sifre;
        this.email = email;
        this.adres = adres;
        this.numara = numara;
    }

    public String getIsim() {
        return isim;
    }

    public void setIsim(String isim) {
        this.isim = isim;
    }

    public String getSoyisim() {
        return soyisim;
    }

    public void setSoyisim(String soyisim) {
        this.soyisim = soyisim;
    }

    public String getTc() {
        return tc;
    }

    public void setTc(String tc) {
        this.tc = tc;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDogum() {
        return dogum;
    }

    public void setDogum(String dogum) {
        this.dogum = dogum;
    }

    public String getKullaniciadi() {
        return kullaniciadi;
    }

    public void setKullaniciadi(String kullaniciadi) {
        this.kullaniciadi = kullaniciadi;
    }

    public String getSifre() {
        return sifre;
    }

    public void setSifre(String sifre) {
        this.sifre = sifre;
    }

    public String getAdres() {
        return adres;
    }

    public void setAdres(String adres) {
        this.adres = adres;
    }

    public String getNumara() {
        return numara;
    }

    public void setNumara(String numara) {
        this.numara = numara;
    }
    
}
