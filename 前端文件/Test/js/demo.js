function scroll(){
   $(".content ul").animate({"margin-left":"-110px"},function(){
   //这个是让整个ul先向前滑动个li ,如果要一次性滑动5个~那么就是550px.
  //想向上滚动就改成 $(".content ul").animate({"margin-top":"-105px"}
  //想向下滚动就改成 $(".content ul").animate({"margin-top":"105px"}
  //想向右滚动就改成 $(".content ul").animate({"margin-left":"110px"}
     $(".content ul li:eq(0)").appendTo($(".content ul"))
     $(".content ul").css({"margin-left":0})
  //对应这的这边
  //想向上滚动就改成 $(".content ul").animate({"margin-top":0}
  //想向下滚动就改成 $(".content ul").animate({"margin-top":0}
  //想向右滚动就改成 $(".content ul").animate({"margin-left":0}
   })
   }
    setInterval(scroll,1000)
  //这上面的是1000是滚动的速度，可以自己调整