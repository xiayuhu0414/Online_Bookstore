package com.xiayuhu.ssm.Online_Bookstore.enums;

/**
 * @author xyh
 * @date 2021/10/8 14:11
 */
public enum UserRole {
    ADMIN("admin","管理员"),
    USER("user","用户");
    private final String value;

    private final String message;

    private UserRole(String value, String message) {
        this.value = value;
        this.message = message;
    }

    public String getValue() {
        return value;
    }

}
