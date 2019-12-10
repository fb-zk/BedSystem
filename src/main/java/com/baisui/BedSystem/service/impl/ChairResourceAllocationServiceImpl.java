package com.baisui.BedSystem.service.impl;

import com.baisui.BedSystem.entity.ChairResourceAllocation;
import com.baisui.BedSystem.entity.dto.ChairResourceAllocationDTO;
import com.baisui.BedSystem.mapper.ChairResourceAllocationMapper;
import com.baisui.BedSystem.service.ChairResourceAllocationService;
import com.baisui.BedSystem.utils.DataGridPage;
import com.baisui.BedSystem.utils.UUIDPK;
import com.baisui.BedSystem.utils.WebResult;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/** 
* @author 倚楼无言
* @date 2019年2月22日 下午3:44:27 
*/
@Service
@Transactional
public class ChairResourceAllocationServiceImpl implements ChairResourceAllocationService {

	@Resource
	private SqlSessionTemplate sqlSessionTemplate;


	@Autowired
	private ChairResourceAllocationMapper chairResourceAllocationMapper;

	/**
	 * 新增计费信息
	 * @param chair
	 * @return
	 */
	@Override
	public WebResult insert(ChairResourceAllocation chair) {

            chair.setId(UUIDPK.getUUID(this));


			if (StringUtils.isEmpty(chair.getCostNormal())){
				return new WebResult("504","保存计费信息失败，标准计费方式为空",null);
			}
			if (StringUtils.isEmpty(chair.getCashPledgeMoney())){
				return new WebResult("504","保存计费信息失败，押金金额为空",null);
			}
			if (StringUtils.isEmpty(chair.getLimitAmount())){
				return new WebResult("504","保存计费信息失败，封顶金额为空",null);
			}
			if (StringUtils.isEmpty(chair.getRates())){
				return new WebResult("504","保存计费信息失败，套餐金额为空",null);
			}
			if (StringUtils.isEmpty(chair.getRatesTime())){
				return new WebResult("504","保存计费信息失败，套餐时间为空",null);
			}
			if (StringUtils.isEmpty(chair.getRates())){
				return new WebResult("504","保存计费信息失败，时间段计费方式为空",null);
			}
			if (StringUtils.isEmpty(chair.getChargeNumber())){
				return new WebResult("504","保存计费信息失败，次数计费方式为空",null);
			}

			chair.setFreeTime("3");
            int i = chairResourceAllocationMapper.insert(chair);
            if (i == 1){ return new WebResult("200","保存计费信息成功",chair);}
            return new WebResult("404","保存失败",null);


	}


	/**
	 * 根据id删除医院计费信息
	 * @param id
	 * @return
	 */
	@Override
	public WebResult deleteByPrimaryKey(String id) {

		int i = chairResourceAllocationMapper.deleteByPrimaryKey(id);
		if (i == 0){
			return new WebResult("500","删除失败",null);
		}
		return new WebResult("200","删除成功",null);
	}

	/**
	 * 分页显示医院管理 - 计费管理
	 * @param params
	 * @return
	 */
	@Override
	public DataGridPage selectBedResourceByPage(Map<String, String> params) {

		List<ChairResourceAllocationDTO> list = chairResourceAllocationMapper.selectBedResourceByPage(params);
		DataGridPage dataGridPage = new DataGridPage(list);

		return dataGridPage;
	}

	/**
	 * 根据id修改计费管理
	 * @param
	 * @return
	 */
	@Override
	public WebResult update(ChairResourceAllocationDTO chairResourceAllocation) {

		int result = chairResourceAllocationMapper.update(chairResourceAllocation);
		if (result < 0){
			return new WebResult("404","修改失败",null);
		}
		return new WebResult("200","修改成功",chairResourceAllocation);
	}

	@Override
	public ChairResourceAllocationDTO findById(String id) {
		return chairResourceAllocationMapper.findById(id);
	}


}
