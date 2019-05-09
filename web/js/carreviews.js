/**
 * Created by WUYOU on 2019/4/24.
 */

window.onload = function () {
    var img = document.getElementById("img");
    var pre = document.getElementById("pre");
    var next = document.getElementById("next");

    var maxIndex = 6,minIndex = 1,currentIndex = 1;
    pre.onclick = function () {
         //alert("点击了上一张");
        if(currentIndex === minIndex){
            currentIndex = maxIndex;
        }
        else{
            currentIndex--;
        }
        img.setAttribute("src","../image/qiehuan"+currentIndex+".jpg");
    };
    next.onclick = function () {
         //alert("点击了下一张");
        if(currentIndex === maxIndex){
            currentIndex = minIndex;
        }
        else{
            currentIndex++;
        }
        img.setAttribute("src","../image/qiehuan"+currentIndex+".jpg");
    };
};
