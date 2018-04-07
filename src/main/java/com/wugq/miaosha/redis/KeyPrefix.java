package com.wugq.miaosha.redis;

/**
 * Created by wuguoquan on 3/11/18.
 */
public interface KeyPrefix {

    public int expireSeconds();

    public String getPrefix();

}
