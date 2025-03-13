package com.js.jsapicommon.service;

import com.js.jsapicommon.model.entity.InterfaceInfo;

/**
* @author Jason
* @description 针对表【interface_info(接口信息)】的数据库操作Service
* @createDate 2025-03-04 16:02:47
*/
public interface InnerInterfaceInfoService  {

    /**
     * 从数据库中查询模拟接口是否存在（请求路径、请求方法、请求参数）
     *
     */
    InterfaceInfo getInterfaceInfo(String path, String method);

}
