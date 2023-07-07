package model;

import java.util.Date;

public class Product {
    private int id;
    private String name;
    private int price;
    private String info;
    private String manufactor;

    public Product() {
    }

    public Product(int id, String name, int price, String info, String manufactor) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.info = info;
        this.manufactor = manufactor;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public String getManufactor() {
        return manufactor;
    }

    public void setManufactor(String manufactor) {
        this.manufactor = manufactor;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", info='" + info + '\'' +
                ", manufactor='" + manufactor + '\'' +
                '}';
    }
}
