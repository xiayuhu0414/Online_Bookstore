package com.xiayuhu.ssm.Online_Bookstore.dao;

import com.xiayuhu.ssm.Online_Bookstore.entity.Commodity;

import java.util.List;

/**
 * @author xyh
 * @date 2021/10/8 13:42
 */
public interface CommodityDao {
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
    int addCommodity(Commodity commodity);
    //编辑商品
    int updateCommodity(Commodity commodity);
}
