package com.baisui.BedSystem.utils;

/**
 * @description:
 * @author: LuoGen
 * @date: 2019/11/29:9:55
 */
public class MyRuntimeException extends RuntimeException {

    private Exception exception;

    private WebResult apiResponse;

    public MyRuntimeException(WebResult apiResponse, Exception exception){
        super(apiResponse.getMsg());
        this.apiResponse = apiResponse;
        this.exception = exception;

    }


}
