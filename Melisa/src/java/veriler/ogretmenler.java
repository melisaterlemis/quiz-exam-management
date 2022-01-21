package veriler;
public class ogretmenler {
    private String isim;
    private String soyisim;
    private String tc;
    private String email;
    private String dogumtarih;
    private String kullaniciadi;
    private String sifre;
    public ogretmenler(String isim,String soyisim,String tc,String email,String dogumtarih,String sifre,String kullaniciadi){
        this.isim = isim;
        this.soyisim = soyisim;
        this.tc = tc;
        this.email = email;
        this.kullaniciadi = kullaniciadi;
        this.dogumtarih = dogumtarih;
        this.sifre = sifre;
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

    public String getDogumtarih() {
        return dogumtarih;
    }

    public void setDogumtarih(String dogumtarih) {
        this.dogumtarih = dogumtarih;
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
    
}
