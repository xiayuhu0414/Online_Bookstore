package com.xiayuhu.ssm.Online_Bookstore.entity;

import lombok.Data;

@Data
public class User {
    private Integer userId;
    private String userName;
    private String userPass;
    private String userPhone;
    private String userGender;
    private String userEmail;
    private String userRole;
    private String userAddress;
}
