package com.example.demo.product;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public interface ProductRepository extends JpaRepository<ProductEntity, Integer> {
    @Query(value = "select * from dong_gop ", nativeQuery = true)
    List<ProductEntity> findAllQuery();

    @Modifying
    @Transactional
    @Query(value = "insert into dong_gop(ten_dong_gop, ngay_bat_dau, ngay_ket_thuc) " +
            "values (:ten_dong_gop, :ngay_bat_dau, :ngay_ket_thuc)", nativeQuery = true)
    void addKK(@Param("ten_dong_gop") String ten_dong_gop, @Param("ngay_bat_dau") String ngay_bat_dau,
               @Param("ngay_ket_thuc") String ngay_ket_thuc);

    @Modifying
    @Transactional
    @Query(value = "update dong_gop " +
            "set ten_dong_gop = :ten_dong_gop, ngay_bat_dau = :ngay_bat_dau, ngay_ket_thuc = :ngay_ket_thuc where ID = :ID",
            nativeQuery = true)
    void updateData(@Param("ID") Integer ID, @Param("ten_dong_gop") String ten_dong_gop,
                    @Param("ngay_bat_dau") String ngay_bat_dau, @Param("ngay_ket_thuc") String ngay_ket_thuc);
}
