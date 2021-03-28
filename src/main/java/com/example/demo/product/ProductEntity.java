package com.example.demo.product;



import javax.persistence.*;

@Entity
@Table(name = "dong_gop")

public class ProductEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer ID;

    @Column(name = "ten_dong_gop")
    private String ten_dong_gop;

    @Column(name = "ngay_bat_dau")
    private String ngay_bat_dau;

    @Column(name = "ngay_ket_thuc")
    private String ngay_ket_thuc;


    public ProductEntity() {}

    public ProductEntity(Integer ID, String ten_dong_gop, String ngay_bat_dau, String ngay_ket_thuc) {
        this.ID = ID;
        this.ten_dong_gop = ten_dong_gop;
        this.ngay_bat_dau = ngay_bat_dau;
        this.ngay_ket_thuc = ngay_ket_thuc;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getTen_dong_gop() {
        return ten_dong_gop;
    }

    public void setTen_dong_gop(String ten_dong_gop) {
        this.ten_dong_gop = ten_dong_gop;
    }

    public String getNgay_bat_dau() {
        return ngay_bat_dau;
    }

    public void setNgay_bat_dau(String ngay_bat_dau) {
        this.ngay_bat_dau = ngay_bat_dau;
    }

    public String getNgay_ket_thuc() {
        return ngay_ket_thuc;
    }

    public void setNgay_ket_thuc(String ngay_ket_thuc) {
        this.ngay_ket_thuc = ngay_ket_thuc;
    }
}
