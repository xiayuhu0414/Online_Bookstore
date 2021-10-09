package com.xiayuhu.ssm.Online_Bookstore.entity;

import lombok.Data;

import java.io.Serializable;

/**
 * @author xyh
 * @date 2021/10/8 13:46
 */
@Data
public class Commodity implements Serializable {
    private static final long serialVersionUID = 1L;
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
