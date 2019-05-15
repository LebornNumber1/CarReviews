/**
 * Created by WUYOU on 2019/4/24.
 */

window.onload = function () {
    var lis = $("ul").children;
    var currentIndex = 0,indicatorIndex = 0;

    //在后面克隆一个第一张图片
    $("ul").appendChild(lis[0].cloneNode(true));

    //动态创建ol中内容
    for(var i =0 ;i < lis.length - 1;i++){
        $("ol").appendChild(document.createElement("li"));
    }

    $("ol").children[0].className = "current";

    var olLis = $("ol").children;
    //鼠标进入圆点
    for(var j =0 ; j< olLis.length;j++){
        (function (j) {
            var li = olLis[j];
            li.onmouseover = function () {
                if(li.className !== "current"){
                    for(var i=0;i<olLis.length;i++){
                        olLis[i].className = "";
                    }
                    this.className = "current";

                    //让ul动起来显示到对应图片
                    constant($("ul"),-(1080 * j),1000);
                    currentIndex = indicatorIndex = j;
                }
            };
        })(j);
    }

    //6.自动轮播
    var timer;
    clearInterval(timer);
    timer= setInterval(autoplay, 2000);

    //7.清除和设置定时器
    $("content_img").onmouseover = function () {
        clearInterval(timer);
    };

    $("content_img").onmouseout = function () {
        timer = setInterval(autoplay, 2000)
    };


    function autoplay() {
        //6.1  ul滚起来
        currentIndex++;
        if (currentIndex > lis.length - 1) {
            $("ul").style.left = 0;
            currentIndex = 1;
        }
        constant($("ul"), -currentIndex * 1080, 30);

        //6.2 指示器滚起来
        indicatorIndex++;
        if (indicatorIndex > olLis.length - 1) {
            indicatorIndex = 0;
        }
        for (var i = 0; i < olLis.length; i++) {
            olLis[i].className = "";
        }

        olLis[indicatorIndex].className = "current";
    }
};
