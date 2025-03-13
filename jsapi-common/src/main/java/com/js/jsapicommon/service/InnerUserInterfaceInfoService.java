package com.js.jsapicommon.service;

import com.js.jsapicommon.model.entity.UserInterfaceInfo;

/**
* @author Jason
* @description 针对表【user_interface_info(用户调用接口关系)】的数据库操作Service
* @createDate 2025-03-11 16:40:10
*/
public interface InnerUserInterfaceInfoService  {
    void validUserInterfaceInfo(UserInterfaceInfo userInterfaceInfo, boolean add);


    /**
     * 调用接口统计
     * @param interfaceInfoId
     * @param userId
     * @return
     */
    boolean invokeCount(long interfaceInfoId,long userId);
}
