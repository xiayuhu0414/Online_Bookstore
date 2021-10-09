package com.xiayuhu.ssm.Online_Bookstore.entity;

import lombok.Data;

import java.io.Serializable;

@Data
public class User implements Serializable {
    private static final long serialVersionUID = -1038897351672911219L;
    private Integer userId;
    private String userName;
    private String userPass;
    private String userPhone;
    private String userGender;
    private String userEmail;
    private String userRole;
    private String userAddress;
}
