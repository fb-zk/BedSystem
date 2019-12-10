/**
 * 是否有相同部门编号标识
 */
var is_sameCode_flag = false;

/**
 * 点击右键事件
 * @param event
 * @param treeId
 * @param treeNode
 * @return
 */
function zTreeOnRightClick(event, treeId, treeNode){
	if(undefined == treeNode){
		return false;
	}else if('root' == treeNode.id){
		$('#root_r_menu').menu('show', {
			left: event.pageX,
			top: event.pageY
		});
		r_treeNode_tmp = treeNode;
		r_treeNode_name_tmp = treeNode.name;
		return false;
	}else{
		$('#r_menu').menu('show', {
			left: event.pageX,
			top: event.pageY
		});
		r_treeNode_tmp = treeNode;
		r_treeNode_name_tmp = treeNode.name;
		return false;
	}
}

/**
 * 新增树型节点
 */
function add_tree(){
	//新节点临时json数据
	var add_treeNode_tmp = { id:"tree_eidt_id_tmp", pId:r_treeNode_tmp.id, name:"栏目名称", code: "tree_eidt_code_tmp"};
	//对应父节点处添加新节点
	add_treeNode_tmp = zTree.addNodes(r_treeNode_tmp, add_treeNode_tmp, true);
	//展开父级节点
	zTree.expandNode(r_treeNode_tmp, true, false, false);
	//填写新部门名称
	zTree.editName(add_treeNode_tmp[0]);
	//清空右键节点存储节点名称临时变量 
	r_treeNode_name_tmp = "";
}

/**
 * 编辑树型节点
 */
function edit_tree(){
	zTree.editName(r_treeNode_tmp);
}

/**
 * 结束树型新增节点编辑状态前处理事件
 */
function onEdit(event, treeId, treeNode, isCancel){
//	var zTree = $.fn.zTree.getZTreeObj("_tree");
	
	//生成新的唯一部门编号(父级部门编号+新部门名称拼音首字母)
//	var code_new = r_treeNode_tmp.code + "_" + toPinyin(treeNode.name);
	
	//判断是否有相同部门编号
//	is_sameCode_flag = false;
//	isSameCode(code_new, zTree.getNodes()[0]);
//	alert(is_sameCode_flag + ' : ' + code_new);
	
	//判断编辑树型节点, 树型界面名字为空时, 删除该节点 
	if(isEmpty(treeNode.name)){
		//判断该节点为新增节点, 还是编辑节点
		if("tree_eidt_id_tmp" == treeNode.id){	//如果为新增节点, 删除该节点
			zTree.removeNode(treeNode, false);
		}else{									//如果为编辑节点, 取消该节点编辑状态, 还原节点原名称
			zTree.cancelEditName(r_treeNode_name_tmp);
		}
		return;
	}
	
	//避免编辑节点名称时, 名称删除为空后, cancelEditName callback调用了onRename事件提交修改节点名称事件 
	//判断编辑节点前名称和编辑节点后名称是否相同, 如果不同则执行保存事件 
	if(r_treeNode_name_tmp != treeNode.name){
		//保存树型节点
		/** treeNode = onSub(treeNode); **/
		
		//更新节点
//		treeNode.code = code_new;
		zTree.updateNode(treeNode);
	}
}

/**
 * 查找是否有相同编号
 * @param code
 */
function isSameCode(code, node){
	if(code == node.code){
		is_sameCode_flag = true;
	}
	if(node.isParent){
		for(var i=0 ; i<node.children.length ; i++){
			isSameCode(code, node.children[i]);
		}
	}
}

