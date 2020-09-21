package ua.zetchenko.factory.model;

import javax.persistence.*;

@Entity
@Table(name = "works")
public class Work {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "start")
    private String start;

    @Column(name = "finish")
    private String finish;

    @Column(name = "adress")
    private String adress;

    @Column(name = "type")
    private String type;

    @Column(name = "price")
    private String price;

    @Column(name = "mark")
    private String mark;

    @Column(name = "zav")
    private String zav;

    @Column(name = "plomb")
    private String plomb;

    @Column(name = "phone")
    private String phone;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getStart() {
        String[] parts = start.split("-");
        start = parts[2] + "-" + parts[1] + "-" + parts[0];
        return start;
    }

    public void setStart(String start) {
        this.start = start;
    }

    public String getFinish() {
        String[] parts = finish.split("-");
        finish = parts[2] + "-" + parts[1] + "-" + parts[0];
        return finish;
    }

    public void setFinish(String finish) {
        this.finish = finish;
    }

    public String getAdress() {
        return adress;
    }

    public void setAdress(String adress) {
        this.adress = adress;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getMark() {
        return mark;
    }

    public void setMark(String mark) {
        this.mark = mark;
    }

    public String getZav() {
        return zav;
    }

    public void setZav(String zav) {
        this.zav = zav;
    }

    public String getPlomb() {
        return plomb;
    }

    public void setPlomb(String plomb) {
        this.plomb = plomb;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}
