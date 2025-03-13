package com.yupi.springbootinit.service.impl.inner;

import com.js.jsapicommon.model.entity.UserInterfaceInfo;
import com.js.jsapicommon.service.InnerUserInterfaceInfoService;
import com.yupi.springbootinit.service.UserInterfaceInfoService;
import org.apache.dubbo.config.annotation.DubboService;

import javax.annotation.Resource;

@DubboService
public class InnerUserInterfaceInfoServiceImpl implements InnerUserInterfaceInfoService {
    @Override
    public void validUserInterfaceInfo(UserInterfaceInfo userInterfaceInfo, boolean add) {

    }

    @Resource
    private UserInterfaceInfoService userInterfaceInfoService;

    @Override
    public boolean invokeCount(long interfaceInfoId, long userId) {
        //调用注入的 userInterfaceInfoService 的 invokeCount 方法


        return userInterfaceInfoService.invokeCount(interfaceInfoId, userId);
    }
}
