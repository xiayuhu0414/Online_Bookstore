package com.xiayuhu.ssm.Online_Bookstore.service;


import com.xiayuhu.ssm.Online_Bookstore.entity.Commodity;

import java.util.List;


/**
 * @author xyh
 * @date 2021/10/8 13:45
 */
public interface CommodityService {

    //商品列表
    List<Commodity> listCommodity();
    //通过类别查询商品
    List<Commodity> listCommodityBySort(String sort);
    //通过ISBN查询
    Commodity getCommodityByIsbn(String isbn);
    //通过作者查询
    Commodity getCommodityByAuthor(String author);
    //通过书名查询
    Commodity getCommodityByTitle(String title);
    //增加商品
    void addCommodity(Commodity commodity);
    //编辑商品
    void updateCommodity(Commodity commodity);

}
