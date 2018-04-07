package com.wugq.miaosha.dao;

import com.wugq.miaosha.domain.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

/**
 * Created by wuguoquan on 3/11/18.
 */
@Mapper
public interface UserDao {

    @Select("select * from demo_user where id = #{id}")
    public User getById(@Param("id")int id	);

    @Insert("insert into demo_user(id, name)values(#{id}, #{name})")
    public int insert(User user);

}
