package com.example.demo.product;

import com.example.demo.exception.NotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ProductServices {
    @Autowired
    private ProductRepository productRepository;

    public List<ProductEntity> findAll() {
        return productRepository.findAll();
    }

    public List<ProductEntity> findAllQuery() {
        return productRepository.findAllQuery();
    }

    public ProductEntity findById(int id) throws NotFoundException{

        List<ProductEntity> list = productRepository.findAll();
        for(ProductEntity productEntity: list) {
            if(productEntity.getID() == id) {
                return productEntity;
            }
        }
        throw new NotFoundException("not found");
    }

    public ProductEntity addKK(ProductEntity productEntity) {
        productRepository.addKK(productEntity.getTen_dong_gop(),productEntity.getNgay_bat_dau(), productEntity.getNgay_ket_thuc()
                );

        return productEntity;
    }

    public Boolean updateData(int id, ProductEntity productEntity) {
        try {
            Optional<ProductEntity> Data = productRepository.findById(id);
            if (Data.isPresent()) {
                productEntity.setID(id);
                productRepository.save(productEntity);
                return true;
            } else return false;
        } catch (Exception e) {
            return false;
        }
    }

    public PageDTO findAllPage(int activePage, int pageSize) {
        // int ra page thứ activePage - 1, số lượng pageSize
        Pageable firstPage = PageRequest.of(activePage - 1, pageSize);
        // Hàm findAll có sẵn để trả về đối tượng page;
        Page<ProductEntity> findAllPage = productRepository.findAll(firstPage);
        int totalPage = (int)Math.ceil((double) productRepository.findAll().size()/pageSize);
        PageDTO pageDTO = new PageDTO();
        pageDTO.setTotalPage(totalPage);
        pageDTO.setProductEntityList(findAllPage.getContent()); // trả về List<ProductEntity>
        return pageDTO;
    }
}
