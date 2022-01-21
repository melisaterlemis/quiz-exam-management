package veriler;

public class ogrenciler {
    private String isim;
    private String soyisim;
    private String tc;
    private String ogrencino;
    private String dogumtarih;
    private String sifre;
    public ogrenciler(String isim,String soyisim,String tc,String ogrencino,String dogumtarih,String sifre){
        this.isim = isim;
        this.soyisim = soyisim;
        this.tc = tc;
        this.ogrencino = ogrencino;
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

    public String getOgrencino() {
        return ogrencino;
    }

    public void setOgrencino(String ogrencino) {
        this.ogrencino = ogrencino;
    }

    public String getDogumtarih() {
        return dogumtarih;
    }

    public void setDogumtarih(String dogumtarih) {
        this.dogumtarih = dogumtarih;
    }

    public String getSifre() {
        return sifre;
    }

    public void setSifre(String sifre) {
        this.sifre = sifre;
    }
}
