package com.baisui.BedSystem.config;

import com.baisui.BedSystem.utils.ShiroRealm;
import org.apache.shiro.cache.MemoryConstrainedCacheManager;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.spring.security.interceptor.AuthorizationAttributeSourceAdvisor;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.springframework.aop.framework.autoproxy.DefaultAdvisorAutoProxyCreator;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.LinkedHashMap;

/**
 * @Author : Cy
 * @Description : shiro配置类
 * @Date : 2019-09-23 9:30
 **/

@Configuration
public class ShiroConfiguration {

    @Bean("shiroFilter")
    public ShiroFilterFactoryBean shiroFilter(@Qualifier("securityManager") SecurityManager manager) {
        ShiroFilterFactoryBean bean = new ShiroFilterFactoryBean();
        bean.setSecurityManager(manager);
        bean.setLoginUrl("/errorlogin.jsp");
        bean.setSuccessUrl("/index");
        bean.setUnauthorizedUrl("/unauthorized");

        LinkedHashMap<String, String> filterChainDefinitionMap = new LinkedHashMap<>();
        filterChainDefinitionMap.put("/login.jsp", "anon");     // authc 指定需要认证的uri    anon 指定排除认证的uri
//        filterChainDefinitionMap.put("/index", "authc");
//        filterChainDefinitionMap.put("/index.jsp","authc");
        filterChainDefinitionMap.put("/add.jsp","authc");
        filterChainDefinitionMap.put("/index.jsp","authc");
        filterChainDefinitionMap.put("/addDetail.jsp","authc");
        filterChainDefinitionMap.put("/bedBind.jsp","authc");
        filterChainDefinitionMap.put("/bedMonitor.jsp","authc");
        filterChainDefinitionMap.put("/bedMemberDateils.jsp","authc");
        filterChainDefinitionMap.put("/bedProblemDetail.jsp","authc");
        filterChainDefinitionMap.put("/bedProblemList.jsp","authc");
        filterChainDefinitionMap.put("/billing.jsp","authc");
        filterChainDefinitionMap.put("/chaperoneInfo.jsp","authc");
        filterChainDefinitionMap.put("/chaperoneInfoAdd.jsp","authc");
        filterChainDefinitionMap.put("/chaperoneInfoEdit.jsp","authc");
        filterChainDefinitionMap.put("/factory.jsp","authc");
        filterChainDefinitionMap.put("/factoryOrder.jsp","authc");
        filterChainDefinitionMap.put("/manage.jsp","authc");
        filterChainDefinitionMap.put("/member.jsp","authc");
        filterChainDefinitionMap.put("/monitor.jsp","authc");
        filterChainDefinitionMap.put("/order_form.jsp","authc");
        filterChainDefinitionMap.put("/particulars.jsp","authc");
        filterChainDefinitionMap.put("/problemDetail.jsp","authc");
        filterChainDefinitionMap.put("/problemList.jsp","authc");
        filterChainDefinitionMap.put("/role.jsp","authc");
        filterChainDefinitionMap.put("/showFactoryOrder.jsp","authc");
        filterChainDefinitionMap.put("/showRole.jsp","authc");
        filterChainDefinitionMap.put("/sysUser.jsp","authc");
//        filterChainDefinitionMap.put("/assets/**", "anon");
//        filterChainDefinitionMap.put("/chair/**", "anon");
//        filterChainDefinitionMap.put("/css/**", "anon");
//        filterChainDefinitionMap.put("/css1/**", "anon");
//        filterChainDefinitionMap.put("/fonts/**", "anon");
//        filterChainDefinitionMap.put("/images/**", "anon");
//        filterChainDefinitionMap.put("/js/**", "anon");
//        filterChainDefinitionMap.put("/plugs/**", "anon");
        bean.setFilterChainDefinitionMap(filterChainDefinitionMap);

        return bean;
    }

    @Bean("securityManager")
    public SecurityManager securityManager(@Qualifier("shiroRealm") ShiroRealm shiroRealm) {
        DefaultWebSecurityManager manager = new DefaultWebSecurityManager();
        manager.setRealm(shiroRealm);
        return manager;
    }


    @Bean("shiroRealm")
    public ShiroRealm authRealm(@Qualifier("credentialMatcher") CredentialMatcher matcher) {
        ShiroRealm shiroRealm = new ShiroRealm();
        shiroRealm.setCacheManager(new MemoryConstrainedCacheManager());
        shiroRealm.setCredentialsMatcher(matcher);
        return shiroRealm;
    }

    @Bean("credentialMatcher")
    public CredentialMatcher credentialMatcher() {
        return new CredentialMatcher();
    }

    @Bean
    public AuthorizationAttributeSourceAdvisor authorizationAttributeSourceAdvisor(@Qualifier("securityManager") SecurityManager manager) {
        AuthorizationAttributeSourceAdvisor advisor = new AuthorizationAttributeSourceAdvisor();
        advisor.setSecurityManager(manager);
        return advisor;
    }

    @Bean
    public DefaultAdvisorAutoProxyCreator defaultAdvisorAutoProxyCreator() {
        DefaultAdvisorAutoProxyCreator creator = new DefaultAdvisorAutoProxyCreator();
        creator.setProxyTargetClass(true);
        return creator;
    }
}
