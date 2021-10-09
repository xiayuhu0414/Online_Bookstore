package com.xiayuhu.ssm.Online_Bookstore.service.impl;


import com.xiayuhu.ssm.Online_Bookstore.service.CommodityService;
import org.springframework.stereotype.Service;


import com.xiayuhu.ssm.Online_Bookstore.dao.CommodityDao;
import com.xiayuhu.ssm.Online_Bookstore.entity.Commodity;
import com.xiayuhu.ssm.Online_Bookstore.service.CommodityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


/**
 * @author xyh
 * @date 2021/10/8 13:45
 */

@Service
public class CommodityServiceImpl implements CommodityService {

    @Autowired
    private CommodityDao commodityDao;
    @Override
    public List<Commodity> listCommodity() {
        return null;
    }

    @Override
    public List<Commodity> listCommodityBySort(String sort) {
        return null;
    }

    @Override
    public Commodity getCommodityByIsbn(String isbn) {
        return null;
    }

    @Override
    public Commodity getCommodityByAuthor(String author) {
        return null;
    }

    @Override
    public Commodity getCommodityByTitle(String title) {
        return null;
    }

    @Override
    public void addCommodity(Commodity commodity) {

    }

    @Override
    public void updateCommodity(Commodity commodity) {

    }

}
