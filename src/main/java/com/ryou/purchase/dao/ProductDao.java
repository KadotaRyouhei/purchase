package com.ryou.purchase.dao;

import com.ryou.purchase.pojo.ProductPo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface ProductDao {
    public ProductPo getProduct(Long id);

    public int addProduct(ProductPo po);

    public int insertProduct(ProductPo po);

    public int decreaseProduct(@Param("id") Long id,
                               @Param("quantity") int quantity);
}
