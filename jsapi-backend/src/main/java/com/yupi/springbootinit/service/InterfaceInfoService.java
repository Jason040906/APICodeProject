package com.yupi.springbootinit.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.js.jsapicommon.model.entity.InterfaceInfo;
//import com.yupi.springbootinit.model.entity.InterfaceInfo;

/**
* @author Jason
* @description 针对表【interface_info(接口信息)】的数据库操作Service
* @createDate 2025-03-04 16:02:47
*/
public interface InterfaceInfoService extends IService<InterfaceInfo> {

    void validInterfaceInfo(InterfaceInfo interfaceInfo, boolean add);
}
