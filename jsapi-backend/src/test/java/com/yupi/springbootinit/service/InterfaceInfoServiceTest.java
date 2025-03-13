package com.yupi.springbootinit.service;

//package com.yupi.springbootinit.service;

//package com.yupi.project.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.js.jsapicommon.model.entity.InterfaceInfo;
import com.yupi.springbootinit.mapper.InterfaceInfoMapper;
import org.junit.jupiter.api.Assertions;
// 自动生成的包不对，要改成这个
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;

@SpringBootTest
public class InterfaceInfoServiceTest {

    @Resource
    private InterfaceInfoService InterfaceInfoService;
    @Resource
    private InterfaceInfoMapper interfaceInfoMapper;
    @Test
    public void getInterfaceInfod(){

        String url = "http://localhost:8123/api/name/user";
        String method = "POST";
        QueryWrapper<InterfaceInfo> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("url", url);
        queryWrapper.eq("method", method);
        System.out.println("------------"+interfaceInfoMapper.selectOne(queryWrapper)+"---------------");
    }
}