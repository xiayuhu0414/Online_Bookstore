package com.xiayuhu.ssm.Online_Bookstore.entity;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * @author xyh
 * @date 2021/10/9 9:52
 */
@Data
public class Comment implements Serializable {
    private static final long serialVersionUID = 1L;
    private Integer commentId;
    private Integer commentCommodityNumber;
    private String commentCommodityName;
    private String commentCommoditySort;
    private Integer commentUserID;
    private String commentUserName;
    private String commentContent;
    private Date commentDate;
}
