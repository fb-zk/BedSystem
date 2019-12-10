package com.baisui.BedSystem.entity.dto;

import lombok.Data;
import lombok.experimental.Accessors;

import java.math.BigDecimal;

@Data
@Accessors(chain = true)
public class FactoryOrderDTO {

    private String id;

    private String code;

    private BigDecimal unitPrices;

    private BigDecimal count;

    private BigDecimal totalPrices;

    private String createTime;

    private String updateTime;

    private String name;
}
