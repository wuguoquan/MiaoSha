package com.wugq.miaosha.controller;

import com.wugq.miaosha.result.Result;
import com.wugq.miaosha.service.MiaoshaUserService;
import com.wugq.miaosha.vo.LoginVo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.validation.Valid;

/**
 * Created by wuguoquan on 3/11/18.
 */
@Controller
@RequestMapping("/login")
public class LoginController {

    private static Logger log = LoggerFactory.getLogger(LoginController.class);

    @Autowired
    MiaoshaUserService userService;

    @RequestMapping("/to_login")
    public String toLogin(){
        return "login";
    }

    @RequestMapping("/do_login")
    @ResponseBody
    public Result<Boolean> doLogin(@Valid LoginVo loginVo){
        log.info(loginVo.toString());
        userService.login(loginVo);
        return Result.success(true);
    }
}
