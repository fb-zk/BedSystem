package com.baisui.BedSystem.utils;

import java.util.List;

import com.github.pagehelper.Page;

import lombok.Data;
import lombok.experimental.Accessors;

@Data
@Accessors(chain = true)
public class DataGridPage {

	private int total;
	
	private List rows;
	
	public DataGridPage() {}
	
	public DataGridPage(List list) {
		if(list instanceof Page) {
			Page page = (Page) list;
			this.total = (int) page.getTotal();
		}
		else this.total = list.size();
		this.rows = list;
	}
}
