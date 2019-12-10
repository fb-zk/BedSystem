package com.baisui.BedSystem.utils.request;

import com.baisui.BedSystem.utils.CharTools;
import org.apache.commons.lang.StringEscapeUtils;

import javax.servlet.http.HttpServletRequest;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;


public class RequestParameters {


//    @Autowired
	private HttpServletRequest request;

	private Map<String, String> parameters = new HashMap<String, String>();

	public RequestParameters(HttpServletRequest request){
		this.request = request;
		init();
	}

	@SuppressWarnings("unchecked")
	private void init(){
		Enumeration<String> en = request.getParameterNames();
		String name;
		String value;

		while (en.hasMoreElements()) {
			name = en.nextElement();
			value = getValues(request.getParameterValues(name));
			//转义查询参数
			parameters.put(name, StringEscapeUtils.escapeSql(CharTools.decodeStr(value)));
		}
	}

	public String getValues(String [] tmp){
		if (tmp == null){
			return "";
		}
		StringBuffer sb = new StringBuffer();
		for(int i = 0; i < tmp.length; i++){
			if (i == tmp.length - 1)
				sb.append(tmp[i].toString());
			else{
				sb.append(tmp[i].toString()+",");
			}
		}
		return CharTools.Utf8URLdecode(sb.toString());
	}

	public Map<String, String> getParameters() {
		return parameters;
	}
}
