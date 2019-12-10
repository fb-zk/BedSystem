package com.baisui.BedSystem.service.impl;

import com.baisui.BedSystem.constants.ControllerConstant;
import com.baisui.BedSystem.entity.SysRole;
import com.baisui.BedSystem.mapper.SysRoleMapper;
import com.baisui.BedSystem.mapper.SysUserMapper;
import com.baisui.BedSystem.service.SysRoleService;
import com.baisui.BedSystem.utils.DataGridPage;
import com.baisui.BedSystem.utils.StrUtils;
import com.baisui.BedSystem.utils.UUIDPK;
import com.baisui.BedSystem.utils.WebResult;
import com.baisui.BedSystem.utils.ehcache.BaseCacheAspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import java.util.List;
import java.util.Map;

@Service
public class SysRoleImpl implements SysRoleService {

    private static final Logger logger = LoggerFactory.getLogger(SysRoleImpl.class);

//    @Autowired
//    private SqlSessionTemplate sqlSessionTemplate;

    @Autowired
    private SysRoleMapper sysRoleMapper;

    @Autowired
    private SysUserMapper sysUserMapper;

    @Autowired
    private BaseCacheAspect baseCacheAspect;

    /**
     *  删除角色管理(连带用户列表一起删除)
     * @param roleId
     * @return
     */
    @Override
    public WebResult deleteRoleByRoleId(String roleId) {

        int i = sysRoleMapper.deleteById(roleId);
        if (i == 0){
            return new WebResult("500","删除失败",null);
        }
        return new WebResult("200","删除成功",null);
    }

    /**
     * 添加角色信息
     * @param sysRole
     * @return
     */
    @Override
    @Transactional
    public WebResult inserRoleInfo(SysRole sysRole) {
//        if (sysRole == null){
//            return new WebResult("504","角色信息为空，提交失败",null);
//        }
        if (StringUtils.isEmpty(sysRole.getName())){
            return new WebResult("504","保存角色信息失败，角色名为空",null);
        }
        if (StringUtils.isEmpty(sysRole.getType())){
            return new WebResult("504","保存角色信息失败，角色类型不能为空",null);
        }
        if (StringUtils.isEmpty(sysRole.getKeyWord())){
            return new WebResult("504","保存角色信息失败，角色关键字不能为空",null);
        }
        sysRole.setRoleId(UUIDPK.getUUID(this));
        sysRoleMapper.insert(sysRole);
        return new  WebResult("200","角色信息保存成功",sysRole);
    }

    /**
     *  分页查询角色列表
     * @param params
     * @return
     */
    @Override
    public DataGridPage selectRoleByPage(Map<String, String> params) {

        List<SysRole> list =  sysRoleMapper.selectRoleByPage(params);
        DataGridPage dataGridPage = new DataGridPage(list);
        return dataGridPage;
    }

    /**
     * 判断角色名是否存在
     * @param name
     * @return
     */
    @Override
    public WebResult queryRoleNameExist(String name) {

        SysRole sysRole = sysRoleMapper.queryRoleNameExist(name);
        if (sysRole != null){
            return new WebResult("504","角色名已存在",sysRole);
        }
        return new WebResult("200","角色名可用",sysRole);
    }

    @Override
    public SysRole selectById(String roleId) {
        logger.info("调用SysRoleImpl中selectById方法,根据id查询角色信息");

        return sysRoleMapper.selectById(roleId);


    }

    @Override
    public WebResult updateById(SysRole sysRole) {
        if (StringUtils.isEmpty(sysRole.getName())){
            return new WebResult("504","保存角色信息失败，角色名为空",null);
        }
        if (StringUtils.isEmpty(sysRole.getType())){
            return new WebResult("504","保存角色信息失败，角色类型不能为空",null);
        }
        if (StringUtils.isEmpty(sysRole.getKeyWord())){
            return new WebResult("504","保存角色信息失败，角色关键字不能为空",null);
        }
        int update = sysRoleMapper.update(sysRole);

        return new WebResult("200","修改成功！",null);
    }





    @Override
    public List<SysRole> selectListById(String roleIds) {
        logger.info("调用SysRoleImpl中selectListById方法,查询多个角色信息");
//        return sqlSessionTemplate.selectList("com.app.manager.entity.SysRole.selectListById", StrUtils.stringToColumn(roleIds));
        return sysRoleMapper.selectListById(StrUtils.stringToColumn(roleIds));
    }

    @Override
    public List<SysRole> selectRoleList(){
        logger.info("调用SysRoleImpl中selectRoleList方法,查询角色信息");
//        return sqlSessionTemplate.selectList("com.app.manager.entity.SysRole.selectRoleList");
        return sysRoleMapper.selectRoleList();
    }

//    @Override
//    public SysRole insertOrUpdate(SysRole role) throws Exception {
//
//        logger.info("调用SysRoleImpl中insertOrUpdate方法,新增或修改");
//        try {
//            if (StrUtils.isEmpty(role.getRoleId())) {
//                role.setRoleId(UUIDPK.getUUID(this));
//                //  原生
////                sqlSessionTemplate.insert("com.app.manager.entity.SysRole.insert", role);
//                sysRoleMapper.insert(role);
//            } else {
//                //  原生
////                sqlSessionTemplate.update("com.app.manager.entity.SysRole.update", role);
//                sysRoleMapper.update(role);
//            }
//            baseCacheAspect.clear();
//        } catch (Exception e) {
//            e.printStackTrace();
//            throw e;
//        }
//        return role;
//    }

    @Override
    public int deleteById(String roleId) {
        logger.info("调用SysRoleImpl中deleteById方法,删除角色信息");
        try {
            //  原生
//            sqlSessionTemplate.delete("com.app.manager.entity.SysRole.deleteById", StrUtils.stringToColumn(roleId));
            sysRoleMapper.deleteById(roleId);
            return ControllerConstant.SUCCESS;
        } catch (Exception e) {
            return ControllerConstant.ERROR;
        }
    }

    @Override
    public List<SysRole> selectRoleByType(String type) throws Exception {
        //  原生
//        return sqlSessionTemplate.selectList("com.app.manager.entity.SysRole.selectRoleByType", type);
        return sysRoleMapper.selectRoleByType(type);
    }



    @Override
    public SysRole getSysRoleById(String id) {
        return sysRoleMapper.selectByPrimaryKey(id);
    }

    @Override
    public SysRole getSysRoleByName(String roleName) {
        return sysRoleMapper.getSysRoleByName(roleName);
    }
}
