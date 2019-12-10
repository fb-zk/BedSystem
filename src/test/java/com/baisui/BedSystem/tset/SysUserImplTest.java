package com.baisui.BedSystem.tset;

import com.baisui.BedSystem.utils.MD5;
import org.junit.Test;

import static org.junit.Assert.*;

public class SysUserImplTest {

    @Test
    public void insertInfo() {

        String pwd = "123456";

        String encode = MD5.encode(pwd);
        System.out.println("encode = " + encode);


        String pwd2 = "1234567";

        String encode2 = MD5.encode(pwd2);
        System.out.println("encode2 = " + encode2);



    }
}