package com.ryou.purchase.service.impl;

import com.ryou.purchase.dao.ProductDao;
import com.ryou.purchase.dao.PurchaseRecordDao;
import com.ryou.purchase.pojo.ProductPo;
import com.ryou.purchase.pojo.PurchaseRecordPo;
import com.ryou.purchase.service.PurchaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class PurchaseServiceImpl implements PurchaseService {

    @Autowired
    private ProductDao productDao = null;

    @Autowired
    private PurchaseRecordDao purchaseRecordDao = null;

    @Override
    @Transactional
    public boolean purchase(Long userId, Long productId, int quantity) {
        ProductPo product = productDao.getProduct(productId);
        if(product == null || product.getStock() < quantity) {
            return false;
        }

        productDao.decreaseProduct(productId,quantity);
        PurchaseRecordPo pr = this.initPurchaseRecord(userId, product, quantity);
        purchaseRecordDao.insertPurchaseRecord(pr);
        return true;
    }

    private PurchaseRecordPo initPurchaseRecord(
            Long userId, ProductPo product, int quantity) {
        PurchaseRecordPo pr = new PurchaseRecordPo();
        pr.setNote("购买日志，时间:" + System.currentTimeMillis());
        pr.setPrice(product.getPrice());
        pr.setProductId(product.getId());
        pr.setQuantity(quantity);
        double total = product.getPrice() * quantity;
        pr.setTotal(total);
        pr.setUserId(userId);
        return pr;
    }
}
