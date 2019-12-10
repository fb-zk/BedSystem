package com.baisui.BedSystem.service.impl;

import com.baisui.BedSystem.constants.ControllerConstant;
import com.baisui.BedSystem.entity.SysResource;
import com.baisui.BedSystem.mapper.SysResourceMapper;
import com.baisui.BedSystem.service.SysResourceService;
import com.baisui.BedSystem.utils.StrUtils;
import com.baisui.BedSystem.utils.UUIDPK;
import com.baisui.BedSystem.utils.ehcache.BaseCacheAspect;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;


@Service
public class SysResourceImpl implements SysResourceService {
	
	private static final Logger logger = LoggerFactory.getLogger(SysResourceImpl.class);
	
	@Resource
	private SqlSessionTemplate sqlSessionTemplate;

	@Autowired
	private SysResourceMapper sysResourceMapper;
	
	@Autowired
	private BaseCacheAspect baseCacheAspect;

	@Override
	public List<Map> selectResourceTree() throws Exception {
		logger.info("调用SysResourceImpl中selectResourceTree方法,查询资源信息");
//		return sqlSessionTemplate.selectList("com.app.manager.entity.SysResource.selectResourceTree");
		return sysResourceMapper.selectResourceTree();

	}

	@Override
	public SysResource insertOrUpdate(SysResource resource, String pCode) {
		try {
			if(StrUtils.isEmpty(resource.getResourceId())) {
				resource.setResourceId(UUIDPK.getUUID(this));
				
				//查询同一节点下最新的code
				//  原生
//				String newCode = sqlSessionTemplate.selectOne("com.app.manager.entity.SysResource.selectNewCode", resource.getParentId());
				String newCode = sysResourceMapper.selectNewCode(resource.getParentId());
				if(StrUtils.isEmpty(newCode)){				//当前新增节点下没有节点 , 生成第一个code
					resource.setCode(pCode + "_001");
				}else{										//当前新增节点下有节点, 生成最新的code
					resource.setCode(getNewCode(newCode));
				}
				
				logger.info("调用SysResourceImpl中insert方法,新增资源");
				//  原生
//				sqlSessionTemplate.insert("com.app.manager.entity.SysResource.insert", resource);
				sysResourceMapper.insert(resource);
			} else {
				logger.info("调用SysResourceImpl中update方法,修改资源");
				//  原生
//				sqlSessionTemplate.update("com.app.manager.entity.SysResource.update", resource);
				sysResourceMapper.update(resource);
			}
			
//			ShiroPrincipalsCache.removeAll();
			baseCacheAspect.clear();
			
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		return resource;
	}
	
	/**
	 * 根据查询code生成新code
	 * @param code	查询code
	 * @return
	 */
	public String getNewCode(String code) {
		int newCode_num = Integer.parseInt(code.substring(code.lastIndexOf("_") + 1, code.length())) + 1;
		return code.substring(0, code.lastIndexOf("_")) + "_" + completionZ(newCode_num);
	}
	
	/**
	 * 补全"0"
	 * @param num	最新编号尾号
	 * @return	
	 */
	public String completionZ(int num) {
		String s_num = num + "";
		StringBuffer result = new StringBuffer(s_num);
		for(int i=3 ; i>s_num.length() ; i--){
			result.insert(0, "0");
		}
		return result.toString();
	}
	
	public static void main(String[] args) {
		SysResourceImpl obj = new SysResourceImpl();
		System.out.println(obj.getNewCode("001_001_002"));
	}

	@Override
	public SysResource selectById(String resourceId) throws Exception {
		logger.info("调用SysResourceImpl中selectById方法,通过id查询资源");
		//  原生
//		return sqlSessionTemplate.selectOne("com.app.manager.entity.SysResource.selectById", resourceId);
		return sysResourceMapper.selectById(resourceId);
	}

	@Override
	public int deleteByCode(String code) throws Exception {
		int result = ControllerConstant.SUCCESS;
		try {
			//  原生
//			sqlSessionTemplate.delete("com.app.manager.entity.SysResource.deleteByCode", code);
			sysResourceMapper.deleteByCode(code);
		} catch (Exception e) {
			e.printStackTrace();
			result = ControllerConstant.ERROR;
			throw e;
		}
		return result;
	}

}
