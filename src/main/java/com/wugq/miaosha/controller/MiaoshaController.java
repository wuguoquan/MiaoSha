package com.wugq.miaosha.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.wugq.miaosha.domain.MiaoshaUser;
import com.wugq.miaosha.domain.Order;
import com.wugq.miaosha.result.CodeMsg;
import com.wugq.miaosha.service.GoodsService;
import com.wugq.miaosha.service.MiaoshaService;
import com.wugq.miaosha.vo.GoodsVo;

@Controller
@RequestMapping("/miaosha")
public class MiaoshaController {

    @Autowired
    GoodsService goodsService;

    @Autowired
    MiaoshaService miaoshaService;

    @RequestMapping("/do_miaosha")
    public String list(Model model,MiaoshaUser user,
                       @RequestParam("goodsId")long goodsId) {

        //判断是否已登录
        model.addAttribute("user", user);
        if(user == null) {
            return "login";
        }

        //判断库存
        GoodsVo goods = goodsService.getGoodsVoByGoodsId(goodsId);
        int stock = goods.getStockCount();
        if(stock <= 0) {
            model.addAttribute("errmsg", CodeMsg.MIAO_SHA_OVER.getMsg());
            return "miaosha_fail";
        }

        //减库存 下订单 写入秒杀订单
        Order orderInfo = miaoshaService.miaosha(user, goods);
        model.addAttribute("orderInfo", orderInfo);
        model.addAttribute("goods", goods);
        return "order_detail";
    }
}
