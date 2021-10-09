package com.xiayuhu.ssm.Online_Bookstore.enums;

/**
 * @author xyh
 * @date 2021/10/8 14:12
 */
public enum OrderStatus {
    NONPAYMENT("Nonpayment", "未付款"),
    PAID("Paid", "已付款"),
    FULFILLED("Fulfilled", "已配货"),
    DELIVERED("Delivered", "已发货"),
    RETURN("Return", "退货"),
    CHECKED("Checked", "已确认");

    private final String value;

    private final String message;

    private OrderStatus(String value, String message) {
        this.value = value;
        this.message = message;
    }
}
