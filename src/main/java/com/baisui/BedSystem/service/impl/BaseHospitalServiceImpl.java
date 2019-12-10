package com.baisui.BedSystem.service.impl;

import com.baisui.BedSystem.constants.ControllerConstant;
import com.baisui.BedSystem.constants.SaltConstant;
import com.baisui.BedSystem.entity.BaseHospital;
import com.baisui.BedSystem.entity.ChairDepartment;
import com.baisui.BedSystem.entity.HospitalUser;
import com.baisui.BedSystem.entity.dto.Chair_HospitalDTO;
import com.baisui.BedSystem.mapper.BaseHospitalMapper;
import com.baisui.BedSystem.mapper.ChairDepartmentMapper;
import com.baisui.BedSystem.mapper.HospitalUserMapper;
import com.baisui.BedSystem.service.BaseHospitalService;
import com.baisui.BedSystem.utils.*;
import com.baisui.BedSystem.utils.ehcache.BaseCacheAspect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/**
 * @description: ${description}
 * @author: Chenye
 * @date: 2019/9/26:9:55
 */
@Service
public class BaseHospitalServiceImpl implements BaseHospitalService {

    @Autowired
    private BaseHospitalMapper baseHospitalMapper;

    @Autowired
    private HospitalUserMapper hospitalUserMapper;

    @Autowired
    private ChairDepartmentMapper chairDepartmentMapper;

    @Autowired
    private BaseCacheAspect baseCacheAspect;

    /**
     * 插入医院表与医院管理员表
     *
     * @param baseHospital
     * @return
     */
    @Override
    @Transactional
    public WebResult insert(BaseHospital baseHospital) {
        if (StringUtils.isEmpty(baseHospital.getName())){
            return new WebResult("405","保存信息失败，医院名称不能为空",null);
        }
        if (StringUtils.isEmpty(baseHospital.getHospitalLevel())){
            return new WebResult("405","保存信息失败，医院等级不能为空",null);
        }
        if (StringUtils.isEmpty(baseHospital.getHospitalNature())){
            return new WebResult("405","保存信息失败，医院性质不能为空",null);
        }
        if (StringUtils.isEmpty(baseHospital.getType())){
            return new WebResult("405","保存信息失败，医院类型不能为空",null);
        }
        if (StringUtils.isEmpty(baseHospital.getHospitalTel())){
            return new WebResult("405","保存信息失败，医院电话不能为空",null);
        }
        if (StringUtils.isEmpty(baseHospital.getAddress())){
            return new WebResult("405","保存信息失败，医院地址不能为空",null);
        }
        if (StringUtils.isEmpty(baseHospital.getSigningDate())){
            return new WebResult("405","保存信息失败，签约时间不能为空",null);
        }
        if (StringUtils.isEmpty(baseHospital.getExpireDate())){
            return new WebResult("405","保存信息失败，服务到期时间不能为空",null);
        }
        if (StringUtils.isEmpty(baseHospital.getSalerName())){
            return new WebResult("405","保存信息失败，销售姓名不能为空",null);
        }
        if (StringUtils.isEmpty(baseHospital.getAccount())){
            return new WebResult("405","保存信息失败，医院联系人不能为空",null);
        }
        if (StringUtils.isEmpty(baseHospital.getGrade())){
            return new WebResult("405","保存信息失败，医院级别不能为空",null);
        }
        if (StringUtils.isEmpty(baseHospital.getSalesTel())){
            return new WebResult("405","保存信息失败，销售人员联系方式不能为空",null);
        }

        System.out.println("进入saveimpl" + baseHospital);

            baseHospital.setId(UUIDPK.getUUID(this));
            baseHospital.setServiceState(baseHospital.getSigningState());
            baseHospital.setCreateTime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
            System.out.println("============打印basehospital"+baseHospital);

            int result = baseHospitalMapper.insertSelective(baseHospital);

        if (result > 0) {
            HospitalUser hospitalUser = new HospitalUser();
            hospitalUser.setId(UUID.randomUUID().toString().replace("-",""));   //id
            hospitalUser.setUsername(baseHospital.getAccount()); //账号
            hospitalUser.setHospitalId(baseHospital.getId());    //医院id
            hospitalUser.setHospitalName(baseHospital.getName());//医院名称
            hospitalUser.setMobileno(baseHospital.getHospitalTel());   //手机号
            hospitalUser.setName(baseHospital.getContact());   //医院联系人
            //hospitalUser.setRoleIds(hospitalDTO.getRoleIds());//角色
            hospitalUser.setPassword(MD5.encode(
                    new StringBuffer(SaltConstant.PW_SALT).append(ControllerConstant.DEFAULT_PASSWORD).toString())); //密码
            hospitalUserMapper.insert(hospitalUser);
            baseCacheAspect.evict(ShiroPrincipalsCache.getKey(hospitalUser.getUsername()));
        }

        return new WebResult("200","保存成功",baseHospital);
    }

    /**
     * 更新医院信息
     * @param baseHospital
     * @return
     */
    @Override
    public WebResult update(BaseHospital baseHospital) {

       baseHospital.setUpdateTime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
       int result = baseHospitalMapper.updateByPrimaryKeySelective(baseHospital);
        System.out.println("进入update---------------:"+baseHospital);
        if (result > 0 ){
            return  new WebResult("200","更新成功",baseHospital);
        }

        return new WebResult("405","保存失败,请确认信息是否正确",null);
    }

    /**
     * 根据id删除医院
     * @param id
     * @return
     */
    @Override
    @Transactional
    public WebResult delete(String id) {
        int i = baseHospitalMapper.deleteByPrimaryKey(id);
        if (i > 0){
            List<ChairDepartment> lists = chairDepartmentMapper.selectByHospitalId(id);
            for (int j = 0; j <lists.size() ; j++) {
                int result = chairDepartmentMapper.delteChairDepartment(lists.get(i).getId());
                if (result <= 0 ){
                    throw new MyRuntimeException(new WebResult("404","删除失败",null),null);
                }
            }

            return  new WebResult("200","删除成功",null);
        }
        return new WebResult("405","删除失败",null);
    }

    /*
    查询所有医院的信息
     */
    @Override
    public DataGridPage selectAll(Map<String, String> params) {
//        List<BaseHospital> list = baseHospitalMapper.selectAll(params);
        List<BaseHospital> list = baseHospitalMapper.selectHospitalList(params);
        DataGridPage dataGridPage = new DataGridPage(list);
        return dataGridPage;
    }

    /**
     * 根据医院id查询详情
     * @param id
     * @return
     */
    @Override
    public BaseHospital findById(String id) {
        return baseHospitalMapper.selectByPrimaryKey(id);
    }

   /* @Override
    public List<BaseHospital> selectHospitalList() {
        return BaseHospitalMapper.selectHospitalList();
    }
  // BeanUtils.copyProperties(hospitalDTO, BaseHospital);
      /*  BaseHospital.setId(UUID.randomUUID().toString().replace("-",""));   //  主键id
        BaseHospital.setName(hospitalDTO.getName()); //  医院名称
        BaseHospital.setAddress(hospitalDTO.getAddress()); //  医院地址
        BaseHospital.setLev(hospitalDTO.getLev());  //   医院等级
        BaseHospital.setNature(hospitalDTO.getNature()); //  机构性质
        BaseHospital.setType(hospitalDTO.getType());  //  医院性质
        BaseHospital.setContact(hospitalDTO.getContact()); //  联系人
        BaseHospital.setTel(hospitalDTO.getTel());  //  联系电话
        BaseHospital.setSigningDate(hospitalDTO.getSigningDate());//签约时间
        BaseHospital.setExpireDate(hospitalDTO.getExpireDate());//到期时间
        BaseHospital.setServiceState(hospitalDTO.getServiceState());//服务状态
        BaseHospital.setSalerName(hospitalDTO.getSalerName());//销售人员名称
        BaseHospital.setAccount(hospitalDTO.getAccount());//账号
      //  BaseHospital.setPassword(hospitalDTO.getPassword());//密码
        BaseHospital.setManufacturer(hospitalDTO.getManufacturer());//生产厂家
        BaseHospital.setSigningState(hospitalDTO.getSigningState());//签约状态
        BaseHospital.setProvince(hospitalDTO.getProvince());//省
        BaseHospital.setCity(hospitalDTO.getCity());//市
        BaseHospital.setCountry(hospitalDTO.getCountry());//区
        BaseHospital.setCreateTime(hospitalDTO.getCreateTime());//创建时间
        BaseHospital.setUpdateTime(hospitalDTO.getUpdateTime());//更改时间
        BaseHospital.setRemark(hospitalDTO.getRemark());//备注
        BaseHospital.setGrade(hospitalDTO.getGrade());//等级
        //BaseHospital.setType("公里");
    @Override
    public HospitalInfo selectByHospitalName(String hospitalName) {
        return BaseHospitalMapper.selectByHospitalName(hospitalName);
    }*/
	
	
	 @Override
    public List<BaseHospital> findHospitalName() {

        return baseHospitalMapper.findHospitalName();
    }

    /**
     * 	查询医院id和名称
     */
    @Override
    public List<Chair_HospitalDTO> findHospitalByid() {
        List<Chair_HospitalDTO> list = baseHospitalMapper.findHospitalByid();
        return list;
    }
}
