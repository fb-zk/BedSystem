package com.baisui.BedSystem.service.impl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import com.baisui.BedSystem.entity.ChairDepartment;
import com.baisui.BedSystem.entity.ChairInfo;
import com.baisui.BedSystem.entity.Factory;
import com.baisui.BedSystem.entity.dto.Chair_BindDTO;
import com.baisui.BedSystem.entity.dto.Chair_Depart_HospitalDTO;
import com.baisui.BedSystem.entity.dto.Chair_EchoDTO;
import com.baisui.BedSystem.mapper.BaseHospitalMapper;
import com.baisui.BedSystem.mapper.ChairDepartmentMapper;
import com.baisui.BedSystem.mapper.ChairInfoMapper;
import com.baisui.BedSystem.mapper.FactoryMapper;
import com.baisui.BedSystem.service.ChairService;
import com.baisui.BedSystem.utils.DataGridPage;
import com.baisui.BedSystem.utils.StrUtils;
import com.baisui.BedSystem.utils.TimeFormat;
import com.baisui.BedSystem.utils.UUIDPK;
import com.baisui.BedSystem.utils.WebResult;

@Transactional //事务回滚
@Service
public class ChairServiceImpl implements ChairService {
	
	@Autowired
	ChairInfoMapper chairInfoMapper;
	
	@Autowired
	FactoryMapper factoryMapper;
	
	@Autowired
	BaseHospitalMapper baseHospitalMapper;
	

	
	//查询所有的椅子(单表查CHAIR_INFO)
	@Override
	public ArrayList<ChairInfo> selectAllChair(Map<String, String> map) {
		ArrayList<ChairInfo> selectAllChair = chairInfoMapper.selectAllChair(map);
		return selectAllChair;
	}

	//查询绑定的椅子(联查)
	@Override
	public DataGridPage selectBindingChair(Map<String, String> map) {
		List<Chair_BindDTO> selectBindingList = chairInfoMapper.selectBindingChair(map);
		DataGridPage dataGridPage=new DataGridPage(selectBindingList);
		return dataGridPage;
	}
	
	/**
	 * 保存或者修改椅子对象
	 * @throws Exception 
	 */
	
	@Override
	public void saveChair(ChairInfo chair){
		chair.setId(UUIDPK.getUUID(chair));//生成uuid主键
		chair.setCreateTime(TimeFormat.nyrhms(new Date()));
		chair.setUpdateTime(TimeFormat.nyrhms(new Date()));//新增时，两者时间相同
		chairInfoMapper.saveChair(chair);
	}
	
	/**
	 * 	更新椅子信息
	 */
	@Override
	public void updateChair(Chair_EchoDTO chair_EchoDTO) {
		Pattern p = Pattern.compile("[\u4e00-\u9fa5]");//中文正则
		
		//对象信息转换
		ChairInfo chair=new ChairInfo();
		chair.setId(chair_EchoDTO.getId());
		chair.setCode(chair_EchoDTO.getCode());
		
		//医院名称和科室名称是中文处理
		String str_Hospital=chair_EchoDTO.getHospitalId();
		String str_Department=chair_EchoDTO.getDepartmentId();
	    Matcher m1 = p.matcher(str_Hospital);
	    if (null != str_Hospital ) {
	    	if (m1.find()) {
		    	//医院和科室包含中文处理
		    	Map<String, String> map = new HashMap<String, String>();
		    	map.put("str_HospitalName", str_Hospital);
		    	map.put("str_DepartmentName", str_Department);
		    	List<Chair_Depart_HospitalDTO> list = baseHospitalMapper.findByName(map);
		    	for (Chair_Depart_HospitalDTO chairList : list) {
		    		//传入医院id
		    		chair.setHospitalId(chairList.getHospitalId());
		    		if (null != str_Department) {//科室为空则不保存任何内容
		    			//传入科室id
			    		chair.setDepartmentId(chairList.getDepartmentId());
					}
		    		
				}
		    }else {
		    	//传入的医院和科室是id而不是名称，则直接存入
		    	chair.setHospitalId(str_Hospital);
		    	chair.setDepartmentId(str_Department);
			}
		}
	   
	    
	    //厂商名称是中文处理
	    String str_FactoryName=chair_EchoDTO.getFactoryId();
	    Matcher m3 = p.matcher(str_FactoryName);
	    if (null != str_FactoryName) {
	    	 if (m3.find()) {
	 	    	String FactoryId = factoryMapper.selectFactoryByName(str_FactoryName);
	 	    	chair.setFactoryId(FactoryId);
	 	    }else {
	 	    	chair.setFactoryId(str_FactoryName);
	 		}
		}
	   
		
		chair.setLength(chair_EchoDTO.getLength());
		chair.setWidth(chair_EchoDTO.getWidth());
		chair.setHeight(chair_EchoDTO.getHeight());
		chair.setMaxLoad(chair_EchoDTO.getMaxLoad());
		chair.setMaxUseCount(chair_EchoDTO.getMaxUseCount());
		chair.setTexture(chair_EchoDTO.getTexture());
		chair.setProduceTime(chair_EchoDTO.getProduceTime());
		chair.setProtectTime(chair_EchoDTO.getProtectTime());
		chair.setBindingState(chair_EchoDTO.getBindingState());
		chair.setLockState(chair_EchoDTO.getLockState());
		chair.setLockType(chair_EchoDTO.getLockType());
		chair.setPowerLength(chair_EchoDTO.getPowerLength());
		chair.setSalespersonName(chair_EchoDTO.getSalespersonName());
		chair.setSalespersonPhone(chair_EchoDTO.getSalespersonPhone());
		
		//修改更新时间
		chair.setUpdateTime(TimeFormat.nyrhms(new Date()));
		chairInfoMapper.updateChair(chair);

	}
	
	
	
	
	/**
	 * 根据id查找
	 */
	@Override
	public Chair_EchoDTO findChairByid(String id) {
		Chair_EchoDTO selectByPrimaryKey = chairInfoMapper.selectChairToDetail(id);
		return selectByPrimaryKey;
	}
	
	/**
	 * 	删除椅子
	 */
	@Override
	public void deleteChairByid(String id) {
		chairInfoMapper.deleteChairByid(id);
	}


	
	

}
