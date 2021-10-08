package com.xiayuhu.ssm.Online_Bookstore.entity;

import lombok.Data;

/**
 * @author xyh
 * @date 2021/10/8 13:46
 */
@Data
public class Commodity {
    private Integer serialNumber;
    private String title;
    private String author;
    private String introduction;
    private String sort;
    private Double price;
    private String isbn;
    private Integer amount;
    private String cover;
}
