package veriler;

public class soru {
    private String soru;
    private String cevap;
    private String a;
    private String b;
    private String c;
    public soru(String soru,String cevap,String a,String b, String c){
        this.soru = soru;
        this.cevap = cevap; 
        this.a = a;
        this.b = b; 
        this.c = c; 
    }

    public String getSoru() {
        return soru;
    }

    public void setSoru(String soru) {
        this.soru = soru;
    }

    public String getCevap() {
        return cevap;
    }

    public void setCevap(String cevap) {
        this.cevap = cevap;
    }

    public String getA() {
        return a;
    }

    public void setA(String a) {
        this.a = a;
    }

    public String getB() {
        return b;
    }

    public void setB(String b) {
        this.b = b;
    }

    public String getC() {
        return c;
    }

    public void setC(String c) {
        this.c = c;
    }

}
