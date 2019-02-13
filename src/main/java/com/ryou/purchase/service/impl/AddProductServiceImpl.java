package com.ryou.purchase.service.impl;

import com.ryou.purchase.dao.ProductDao;
import com.ryou.purchase.pojo.ProductPo;
import com.ryou.purchase.service.AddProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class AddProductServiceImpl implements AddProductService {

    @Autowired
    private ProductDao productDao = null;

    @Override
    @Transactional
    public boolean addProduct(Long productId) {
        ProductPo productPo = this.initProduct(productId);
        ProductPo product = productDao.getProduct(productId);
        int stock;
        if(product == null) {
            stock = productDao.insertProduct(productPo);
        } else {
            stock = productDao.addProduct(productPo);
        }

        return stock > 0;
    }

    private ProductPo initProduct(Long productId) {
        ProductPo pr = new ProductPo();
        pr.setId(productId);
        pr.setPrice(11.9);
        pr.setProductName("Calbee");
        pr.setVersion(1);
        pr.setStock(5);
        pr.setNote("calbee note");
        return pr;
    }

}
