package com.xiayuhu.ssm.Online_Bookstore.entity;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;
/**
 * @author xyh
 * @date 2021/10/8 13:53
 */
@Data
public class Order implements Serializable {
    private static final long serialVersionUID = -1038897351672911219L;
    private Integer orderNumber;
    private Integer orderCommodityNumber;
    private Integer orderUserId;
    private String orderTitle;
    private String orderUserName;
    private String orderUserPhone;
    private String orderUserAddress;
    private String orderStatus;
    private Integer orderPurchaseQuantity;
    private Double orderTotalPrice;
    private Date orderData;
}
