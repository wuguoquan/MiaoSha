package com.wugq.miaosha.redis;

/**
 * Created by wuguoquan on 3/11/18.
 */
public class UserKey extends BasePrefix{

    private UserKey(String prefix) {
        super(prefix);
    }
    public static UserKey getById = new UserKey("id");
    public static UserKey getByName = new UserKey("name");
}
