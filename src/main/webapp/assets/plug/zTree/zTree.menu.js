(function ($) {
    //设置一个全局树节点变量 用于解决js方法之间引用类型传递参数无效问题
    var zNodes = null;
    //获得页面所有容器class为ztree的集合
    function findZTreeContainer() {
        return $(".ztree");
    }

    //递归构建zTree树节点层级关系
    function depthFindNodes(htmlNode, pId) {
    	//console.log("htmlNode"+htmlNode.children.length);
        for (var i = 0; i < htmlNode.children.length; i++) {
        	var child = htmlNode.children[i];
            if (child.tagName == "UL") {
                var newPID = pId;
                var node = null;
                if (child.nodeValue != null) {
                    node = new Object();
                    node.id = child.id;
                    node.pId = pId;
                    node.name = child.nodeValue;
                    zNodes.push(node);
                    newPID = node.id;
                }
                if (child.children.length > 0) {
                    depthFindNodes(child, newPID);
                }
            } else if (child.tagName == "LI") {
                var newPID = pId;
                if (child.innerText != null) {
                    var node = new Object();
                    node.id = child.id;
                    node.pId = pId;
                    var nodeName = child.innerText;
                    var indexOf = nodeName.indexOf(' ');
                    if (indexOf > 0) {
                        //截断获取节点名称
                        nodeName = nodeName.substring(0, indexOf);
                    }
                    node.name = nodeName;
                    // 图标
                    var iconSkin = child.iconSkin;
                    if (!iconSkin) {
                    	iconSkin = $(child).attr('iconSkin');
                    }
                    if (iconSkin) {
                    	node.iconSkin = iconSkin;
                    }

                    var obj = child.firstChild;
                    if (obj) {
                    	// 链接
                    	var link = obj.link;
                    	if (!link) {
                    		// Chrome
                    		link = $(obj).attr('link');
                    	}
                    	// IE
                    	if (link) {
                    		node.click = link;
                    	}
                    }
                    zNodes.push(node);
                    newPID = node.id;
                }

                if (child.children.length > 0) {
                    depthFindNodes(child, newPID);
                }
            }
        }
        //console.log("递归"+zNodes);
    }

    //获取节点结构
    function getTreeNodes(htmlNode, pId) {
        if (htmlNode.children.length > 0) {
            zNodes = new Array();
            depthFindNodes(htmlNode, pId);
        }
        else
            return null;
    }

    ///转换操作
    $.fn.convertToZTree = function () {
    	var treeObj;
        //获取页面所有标记为ztree属性的元素
        var divList = findZTreeContainer();
        for (var i = 0; i < divList.length; i++) {
            getTreeNodes(divList[i], 0);
            var contianerId = divList[i].id;
            if (contianerId.length == 0) {
                //console.log("页面内第" + (i + 1).toString() + "棵树容器尚未设置id属性");
            } else {
            	
            	treeObj = $.fn.zTree.init($("#" + divList[i].id), setting, zNodes);
            	
            }
        }
        return treeObj;
    };
})(jQuery);