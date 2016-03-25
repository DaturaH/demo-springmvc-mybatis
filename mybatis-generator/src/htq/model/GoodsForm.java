package htq.model;

public class GoodsForm {
    private Integer big;

    private String creatime;

    private Float freeprice;

    private String from1;

    private Integer id;

    private String introduce;

    private String name;

    private Float nowprice;

    private Integer number;

    private Integer small;

    private String priture;

    private Integer mark;

    public Integer getBig() {
        return big;
    }

    public void setBig(Integer big) {
        this.big = big;
    }

    public String getCreatime() {
        return creatime;
    }

    public void setCreatime(String creatime) {
        this.creatime = creatime == null ? null : creatime.trim();
    }

    public Float getFreeprice() {
        return freeprice;
    }

    public void setFreeprice(Float freeprice) {
        this.freeprice = freeprice;
    }

    public String getFrom1() {
        return from1;
    }

    public void setFrom1(String from1) {
        this.from1 = from1 == null ? null : from1.trim();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce == null ? null : introduce.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Float getNowprice() {
        return nowprice;
    }

    public void setNowprice(Float nowprice) {
        this.nowprice = nowprice;
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public Integer getSmall() {
        return small;
    }

    public void setSmall(Integer small) {
        this.small = small;
    }

    public String getPriture() {
        return priture;
    }

    public void setPriture(String priture) {
        this.priture = priture == null ? null : priture.trim();
    }

    public Integer getMark() {
        return mark;
    }

    public void setMark(Integer mark) {
        this.mark = mark;
    }
}