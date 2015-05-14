/**
 * @author Char_Chen@wistronits.com
 * @since 2013-06-06
 */
(function($) {
		$.fn.serializeJson = function() {
			var serializeObj = {};
			var array = this.serializeArray();
			$(array).each(
					function() {
						if (serializeObj[this.name]) {
							if ($.isArray(serializeObj[this.name])) {
								serializeObj[this.name].push(this.value);
							} else {
								serializeObj[this.name] = [
										serializeObj[this.name], this.value ];
							}
						} else {
							serializeObj[this.name] = this.value;
						}
					});
			return serializeObj;
		};
})(jQuery);
/**
 * @author "Char_Chen@wistronits.com"
 * @version 1.0
 * @since 2014-01-27
 * 
 */
(function(window, $){
	$.fn.scrollpage = function(opt) {
		this.clearScrollpage();
		var opts = $.extend({}, defaultSettings, opt);
		return this.each(function() {
			var $this = $(this);
			$this.bind("scroll", function() {
				if (reachBottom(this, opts)) {
					process(opts, this);
				}
			});
		});
	};
	
	var process = function(opts, ele) {
		var count, pageIndex, pagesize;
		var params = getParams(opts.paramClass);
		if (params[opts.countParamName]) {
			count = parseInt(params[opts.countParamName]);
		}
		if (params[opts.pageIndexParamName]) {
			pageIndex = parseInt(params[opts.pageIndexParamName]);
		}
		if (params[opts.pageSizeParamName]) {
			pagesize = parseInt(params[opts.pageSizeParamName]);
		}
		
		if (!decide(count, pageIndex, pagesize)) {
			return;
		}
		if (opts.reachBottomCallBack) {
			opts.reachBottomCallBack.call(ele, params);
		}
		if (opts.ajaxCallBack) {
			var ajaxOpts = $.extend({}, defaultAjaxOpts, opts.ajaxOpts);
			ajaxOpts.data = opts.ajaxParamProcess ? opts.ajaxParamProcess(params) : params;
			ajaxOpts.success = opts.ajaxCallBack;
			$.ajax(ajaxOpts);
		}
	}
	
	$.fn.clearScrollpage = function() {
		return this.unbind("scroll");
	};
	
	var defaultAjaxOpts = {
		type : "POST",
		async : "false"
	}
	
	var defaultSettings = {
		init : false,
		baseNumber : 1, //基数滚动条达到的百分比
		paramClass : "param", //参数的类名
		reachBottomCallBack : null, //到达底部时，触发的回调函数
		ajaxCallBack : null,
		ajaxOpts : {},
		ajaxParamProcess : null,
		countParamName : "count",
		pageIndexParamName : "pageIndex",
		pageSizeParamName : "pageSize"
	};
	
	var reachBottom = function(element, opts) {
		var that = $(element);
		if (that.length < 1) {
			return false;
		}
		var viewHeight = that.height(); //可见高度
		var contentHeight = that[0].scrollHeight; //内容高度
		var scrollTop = that.scrollTop(); //滚动高度
		
		
		if (scrollTop / (contentHeight - viewHeight) >= opts.baseNumber) {
			return true;
		} else {
			return false;
		}
	};
	
	var decide = function (count, pageIndex, pageSize) {
		var totalPage;
		if ((count % pageSize) == 0) {
		totalPage = count / pageSize;
	    } else {
	        totalPage = parseInt(count / pageSize) + 1;
	    }
		return totalPage >= pageIndex;
	}
	
	var getParams = function(className) {
		var array = className.split(" ");
		var params = {};
		$.each(array, function() {
			$.extend(params, $("." + this).serializeJson());
		})
		return params;
	}
	
})(window, $);