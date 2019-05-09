<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>车评网首页</title>
    <link rel="stylesheet" href="css/carreviews.css">
</head>
<body>
    <div class="top">
        <div class="top_in">
            <div class="top_left">
                <h1><a href="#" title="车评网"></a></h1>
            </div>
            <div class="top_right">
                <ul class="top_nav">
                    <li><a href="#"></a></li>
                    <li><a href="#"></a></li>
                </ul>
                <ul class="top_login">
                    <li><a href="${pageContext.request.contextPath}/loginAction_login1.action">登录</a></li>
                    <li><a href="${pageContext.request.contextPath}/loginAction_reg1.action">注册</a></li>
                </ul>
            </div>
        </div>
    </div>
<div class="content">
    <div class="content-img">
    <img src="image/qiehuan1.jpg" alt="" id="img">
    <br>
    <button id="pre">
        &lt;
    </button>
    <button id="next">
        &gt;
    </button>
    </div>
     <div class="content-carre">
             <dl>
                 <dt>
                 <h3>最新车评</h3>
                 </dt>
                 <dd>
                     <ul class="content-cars">
                         <li><img src="image/捷豹1小.jpg" alt="">
                             <div class="car-des">
                                 <h4>全新捷豹I-PACE</h4>
                                 <a href="${pageContext.request.contextPath}/loginAction_ipa.action">一探究竟</a>
                             </div>
                         </li>
                         <li><img src="image/宾利1小.jpg" alt="">
                             <div class="car-des">
                                 <h4>非凡百年宾利添越</h4>
                                 <a href="${pageContext.request.contextPath}/loginAction_bl.action">一探究竟</a>
                             </div>
                         </li>
                         <li><img src="image/Urus1小.jpg" alt="">
                             <div class="car-des">
                                 <h4>全球最速SUV--Urus</h4>
                                 <a href="${pageContext.request.contextPath}/loginAction_us.action">一探究竟</a>
                             </div>
                         </li>
                         <li><img src="image/阿斯顿马丁Rapide-E1小.jpg" alt="">
                             <div class="car-des">
                                 <h4>阿斯顿马丁Rapide-E</h4>
                                 <a href="${pageContext.request.contextPath}/loginAction_mre.action">一探究竟</a>
                             </div>
                         </li>
                     </ul>
                 </dd>
             </dl>
     </div>
</div>
<div class="bottom">
    <hr>
    <p><a href="#">关于娱乐</a>
        <a href="#">关于登录</a>
        <a href="#">隐私政策</a>
        | 版权所有 © 2019-2019</p>
</div>
    <div class="back-top"><a href="#">回到顶部</a></div>
<script>
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
                img.setAttribute("src","image/qiehuan"+currentIndex+".jpg");
            };
            next.onclick = function () {
                //alert("点击了下一张");
                if(currentIndex === maxIndex){
                    currentIndex = minIndex;
                }
                else{
                    currentIndex++;
                }
                img.setAttribute("src","image/qiehuan"+currentIndex+".jpg");
            };
        }
    </script>
</body>
</html>