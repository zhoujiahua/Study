/**
 * @滚动效果调用方法
 * @JiaHua
 * @V 1.0.0
 * *********/
/**********无缝滚动*js***************************************/
$(document).ready(function() {
	$('.jh-list1 li:even').addClass('lieven');
})

$(function() {
	$("div.jh-list1").myScroll({
		speed: 40, //数值越大，速度越慢
		rowHeight: 50 //li的高度
	});
});
/**********无缝滚动*js***************************************/

/*********************分屏滚动********************************/
	$(document).ready(function() {
		$(".jh-list2").Scroll({
			line: 1,
			speed: 500,
			timer: 3000,
			up: "but_up",
			down: "but_down"
		});
	});

/*********************分屏滚动***end****************************/