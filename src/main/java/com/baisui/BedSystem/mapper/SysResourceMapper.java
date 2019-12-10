package com.baisui.BedSystem.mapper;

import com.baisui.BedSystem.entity.SysResource;

import java.util.List;
import java.util.Map;

public interface SysResourceMapper {

    int insert(SysResource record);

    int update(SysResource sysResource);

    String selectNewCode(String parentId);

    SysResource selectById(String resourceId);

    void deleteByCode(String code);

    List<Map> selectResourceTree();

    List<String> selectResourceKeyWords(String resourceIds);
}
