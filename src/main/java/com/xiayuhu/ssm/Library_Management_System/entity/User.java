package com.xiayuhu.ssm.Library_Management_System.entity;

import lombok.Data;

@Data
public class User {
    private int userId;

    private String userName;

    private String userPass;

    private String userNickname;

    private String userEmail;

    private String userRole;
}
