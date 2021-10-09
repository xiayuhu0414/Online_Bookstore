package com.xiayuhu.ssm.Online_Bookstore.enums;

/**
 * @author xyh
 * @date 2021/10/9 14:11
 */
public enum CommodityStatus {
    INSTOCK("Instock", "在售"),
    SELLIMH("Selling", "热卖"),
    DISCOUNT("Discount", "折扣"),
    OUT("out of stock", "缺货");

    private final String value;

    private final String message;


    CommodityStatus(String value, String message) {
        this.value = value;
        this.message = message;
    }
}
