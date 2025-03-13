package com.js.jsapiinterface.controller;


import com.js.jsapiclientsdk.client.JsApiClient;
import cn.hutool.core.convert.Convert;
import cn.hutool.core.util.CharsetUtil;
import com.js.jsapiclientsdk.model.User;
import com.js.jsapiclientsdk.utils.SignUtils;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.io.InputStream;

/**
 * 名称 API
 *
 * @author yupi
 */
@RestController
@RequestMapping("name")
public class NameController {
    @GetMapping("/")
    public String getNameByGet(String name) {
        return "GET 你的名字是" + name;
    }

    @PostMapping("/")
    public String getNameByPost(@RequestParam String name) {
        return "POST 你的名字是" + name;
    }

//    @PostMapping("/user")
//    public String getUserNameByPost(@RequestBody User user) {
//        return "POST 用户名字是" + user.getUsername();
//    }

//@PostMapping("/user")
//public String getUserNameByPost(@RequestBody User user, HttpServletRequest request) {
//    // 从请求头中获取名为 "accessKey" 的值
//    String accessKey = request.getHeader("accessKey");
//    // 从请求头中获取名为 "secretKey" 的值
//    String secretKey = request.getHeader("secretKey");
//    // 如果 accessKey 不等于 "yupi" 或者 secretKey 不等于 "abcdefgh"
//    if (!accessKey.equals("jason123456") || !secretKey.equals("js123456")){
//        // 抛出一个运行时异常，表示权限不足
//        throw new RuntimeException("无权限");
//    }
//    // 如果权限校验通过，返回 "POST 用户名字是" + 用户名
//    return "POST 用户名字是" + user.getUsername();
//}

    @PostMapping("/user")
    public String getUserNameByPost(@RequestBody User user, HttpServletRequest request, InputStream inputStream) {
        // 从请求头中获取参数
//        String accessKey = request.getHeader("accessKey");
//        String nonce = request.getHeader("nonce");
//        String timestamp = request.getHeader("timestamp");
//        String sign = request.getHeader("sign");
////        String body = request.getHeader("body");
//        // 从请求体中获取参数(转换编码)
//        String body = Convert.convertCharset((request.getHeader("body")), CharsetUtil.ISO_8859_1, "UTF-8");
//        // todo 实际情况应该是去数据库中查是否已分配给用户
//        if (!accessKey.equals("jason123456")){
//            throw new RuntimeException("无权限");
//        }
//        // 校验随机数，模拟一下，直接判断nonce是否大于10000
//        if (Long.parseLong(nonce) > 10000) {
//            throw new RuntimeException("无权限");
//        }
//
//        // todo 时间和当前时间不能超过5分钟
////        if (timestamp) {}
//
//        // todo 实际情况从数据库中查到secretKey
//        String serverSign = SignUtils.genSign(body,"js123456");
//        if(!sign.equals(serverSign)){
//            throw new RuntimeException("无权限");
//        }

        return "POST 用户名字是" + user.getUsername();
    }

}
