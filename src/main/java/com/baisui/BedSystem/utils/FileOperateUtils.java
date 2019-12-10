package com.baisui.BedSystem.utils;

import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * 
 * @author liuhualin
 * @date 2016-7-24 下午15:47:57
 */
public class FileOperateUtils {
	public static String UPLOADDIR = "/upload/";
	
	/**
	 * 将上传的文件进行重命名
	 * 
	 * @author liuhualin
	 * @date 2016-7-24 下午15:47:57
	 * @param name
	 * @return
	 */
	private static String rename(String name) {
		Long now = Long.parseLong(new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()));
		Long random = (long) (Math.random() * now);
		String fileName = now + "" + random;
		
		if (name.indexOf(".") != -1) {
			fileName += name.substring(name.lastIndexOf("."));
		}
		
		return fileName;
	}
	
	/**
	 * 压缩后的文件名
	 * 
	 * @author liuhualin
	 * @date 2016-7-24 下午15:47:57
	 * @param name
	 * @return
	 */
	private static String zipName(String name) {
		String prefix = "";
		if (name.indexOf(".") != -1) {
			prefix = name.substring(0, name.lastIndexOf("."));
		} else {
			prefix = name;
		}
		return prefix + ".zip";
	}
	
	/**
	 * 文件上传
	 * 
	 * @author liuhualin
	 * @date 2016-7-24 下午15:47:57
	 * @param request
	 * @param params
	 * @param values
	 * @return
	 * @throws Exception
	 */
	public static List<String> upload(HttpServletRequest request, String uploadDir) throws Exception {
		MultipartHttpServletRequest mRequest = (MultipartHttpServletRequest) request;
		Map<String, MultipartFile> fileMap = mRequest.getFileMap();
		
		File file = new File(uploadDir);
		if (!file.exists()) {
			file.mkdirs();
		}
		String fileName = null;
		List<String> list = new ArrayList<String>();
		int i = 0;
		for (Iterator<Map.Entry<String, MultipartFile>> it = fileMap.entrySet().iterator(); it.hasNext(); i++) {
			Map.Entry<String, MultipartFile> entry = it.next();
			MultipartFile mFile = entry.getValue();
			fileName = mFile.getOriginalFilename();
			String storeName = rename(fileName);
			String noZipName = uploadDir + storeName;
			FileOutputStream outputStream = new FileOutputStream(noZipName);
			FileCopyUtils.copy(mFile.getInputStream(), outputStream);
			list.add(storeName);
		}
		return list;
	}
	
	/**
	 * 文件下载
	 * 
	 * @author liuhualin
	 * @date 2016-7-24 下午15:47:57
	 * @param request
	 * @param response
	 * @param storeName
	 * @param contentType
	 * @param realName
	 * @throws Exception
	 */
	public static void download(HttpServletResponse response, String downloadurl, String contentType) throws Exception {
		BufferedInputStream bis = null;
		BufferedOutputStream bos = null;
		
		long fileLength = new File(downloadurl).length();
		
		response.setContentType(contentType);
		response.setHeader("Content-disposition",
				"attachment; filename=" + new String(downloadurl.getBytes("utf-8"), "ISO8859-1"));
		response.setHeader("Content-Length", String.valueOf(fileLength));
		
		bis = new BufferedInputStream(new FileInputStream(downloadurl));
		bos = new BufferedOutputStream(response.getOutputStream());
		byte[] buff = new byte[2048];
		int bytesRead;
		while (-1 != (bytesRead = bis.read(buff, 0, buff.length))) {
			bos.write(buff, 0, bytesRead);
		}
		bos.flush();
		bis.close();
		bos.close();
	}
	
}