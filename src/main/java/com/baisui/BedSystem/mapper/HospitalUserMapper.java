package com.baisui.BedSystem.mapper;

import com.baisui.BedSystem.entity.HospitalUser;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * @description: ${description}
 * @author: Chenye
 * @date: 2019/9/27:14:52
 */
public interface HospitalUserMapper {

    /**
     * 管理模块分页带条件查询
     *
     * @param param
     * @return
     * @author xieyu
     * @dateTime 2017/08/10
     */
    List<HospitalUser> QueryList(Map<String, String> param);

    int insert(HospitalUser hospitalUser);

    int update(HospitalUser hospitalUser);

    List<HospitalUser> selectUserByPage(Map map);

    HospitalUser selectByAccount(String username);

    List<HospitalUser> selectSub(@Param("hospitalId") String hospitalId);
}
