package com.baisui.BedSystem.entity;

import org.apache.ibatis.type.Alias;

import java.io.Serializable;
/**
 * 资源表
 * */
@Alias(value = "SysResource")
public class SysResource implements Serializable{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
     * 主键id
     */
    private String resourceId;

    /**
     * 代码
     */
    private String code;

    /**
     * 名称
     */
    private String name;

    /**
     * 路径
     */
    private String url;

    /**
     * 关键字
     */
    private String keyWord;

    /**
     * null
     */
    private String parentId;

    /**
     * null
     */
    private Long type;

    /**
     * null
     */
    private Long weight;

    /**
     * 主键id
     * @return RESOURCE_ID 主键id
     */
    public String getResourceId() {
        return resourceId;
    }

    /**
     * 主键id
     * @param resourceId 主键id
     */
    public void setResourceId(String resourceId) {
        this.resourceId = resourceId;
    }

    /**
     * 代码
     * @return CODE 代码
     */
    public String getCode() {
        return code;
    }

    /**
     * 代码
     * @param code 代码
     */
    public void setCode(String code) {
        this.code = code;
    }

    /**
     * 名称
     * @return NAME 名称
     */
    public String getName() {
        return name;
    }

    /**
     * 名称
     * @param name 名称
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 路径
     * @return URL 路径
     */
    public String getUrl() {
        return url;
    }

    /**
     * 路径
     * @param url 路径
     */
    public void setUrl(String url) {
        this.url = url;
    }

    /**
     * 关键字
     * @return KEY_WORD 关键字
     */
    public String getKeyWord() {
        return keyWord;
    }

    /**
     * 关键字
     * @param keyWord 关键字
     */
    public void setKeyWord(String keyWord) {
        this.keyWord = keyWord;
    }

    /**
     * null
     * @return PARENT_ID null
     */
    public String getParentId() {
        return parentId;
    }

    /**
     * null
     * @param parentId null
     */
    public void setParentId(String parentId) {
        this.parentId = parentId;
    }

    /**
     * null
     * @return TYPE null
     */
    public Long getType() {
        return type;
    }

    /**
     * null
     * @param type null
     */
    public void setType(Long type) {
        this.type = type;
    }

    /**
     * null
     * @return WEIGHT null
     */
    public Long getWeight() {
        return weight;
    }

    /**
     * null
     * @param weight null
     */
    public void setWeight(Long weight) {
        this.weight = weight;
    }
}