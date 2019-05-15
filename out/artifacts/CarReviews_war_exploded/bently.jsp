<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>非凡百年bently汽车</title>
  <link rel="stylesheet" href="css/bently.css">
</head>
<body>
 <div class="top">
  <div class="top_in">
    <div class="top_left">
      <h1><a href="${pageContext.request.contextPath}/loginAction_review.action" title="车评网"></a></h1>
    </div>
    <div class="top_right">
      <ul class="top_nav">
        <li><a href="${pageContext.request.contextPath}/loginAction_review.action">返回首页</a></li>
      </ul>
      <ul class="top_login">
        <li><a href="${pageContext.request.contextPath}/loginAction_login1.action">登录</a></li>
        <li><a href="${pageContext.request.contextPath}/loginAction_reg1.action">注册</a></li>
      </ul>
    </div>
  </div>
</div>
<div class="content">
  <div class="content-top">
    <h2>非凡百年 宾利汽车带来超豪华出行新可能</h2>
    <p>宾利品牌携多款重磅车型亮相2019上海国际车展</p>
  </div>
  <div class="content-center">
    <br>
    <p>2019年4月16日，宾利品牌携多款重磅车型亮相2019上海国际车展，值此品牌非凡百年之际，展望未来超豪华出行愿景。</p>
    <img src="image/bl1.jpg" alt="">
    <p>由Mulliner部门精心打造的宾利慕尚创始人典藏版首次亮相中国，并与品牌创始人华特·欧文·宾利先生（W.O. Bentley）昔日拥有的宾利8升座驾一同惊艳登台，诠释专属定制之美，致敬非凡百年。此次，宾利添越插电混动版也首次亮相中国，以先进科技成就宁静驾乘体验，标志着宾利品牌电动化的第一步。</p>
    <img src="image/bl2.jpg" alt="">
    <p>第三代全新欧陆GT和全新欧陆GT敞篷版也亮相宾利展台。作为超豪华运动旅行座驾典范之作，全新欧陆GT车型的整体设计、工程研发和手工匠造均在英国本土完成。这两款全新车型将优雅不失运动风范的外观设计与精美革新的内饰风格有机结合，诠释奢华气韵的全新境界。</p>
    <img src="image/bl3.jpg" alt="">
    <p>宾利汽车主席兼首席执行官艾德恩·霍马克表示：“在100年的发展历程中，宾利品牌始终致力为非凡人士打造非凡座驾。宾利品牌将于2019年7月10日迎来百年华诞，以此非凡里程碑为新起点，宾利汽车将矢志创新，定义超豪华出行的下一个百年。”</p>
    <img src="image/bl4.jpg" alt="">
    <p>添越插电式混动版于2018年日内瓦车展首发，宾利添越插电混动版将静音动力技术与精致优雅的驾乘体验和举重若轻的超凡性能有机融合，标志着宾利品牌迈向电动化的第一步。</p>
    <img src="image/bl5.jpg" alt="">
    <p>这款全新插电式混合动力车型集先进的电动技术和强劲高效的新一代V6汽油发动机于一身，兼具二者优势，为客户带来无比顺畅的驾驶体验，并确保在纯电模式下最长的续航里程。宾利添越插电混动版以纯电模式行驶，续航里程可达50余公里。作为全球第一款超豪华SUV的插电混合动力版，添越插电混动版是宾利有史以来能效最高的一款车型，二氧化碳排放量仅为75克/公里（NEDC欧洲行驶工况）。</p>
    <img src="image/bl6.jpg" alt="">
    <p>全新宾利欧陆GT的动力核心是誉满全球的增强版宾利全新6.0升双涡轮增压W12 TSI发动机，首次配合双离合八速变速箱，带来更快、更高效的换挡表现。该发动机最大功率为635匹马力，峰值扭矩达900牛·米，0-100公里/小时加速时间仅为3.7秒，最高时速达333公里/小时。</p>
    <img src="image/bl7.jpg" alt="">
    <p> 而在2019年这一意义深远的年份，宾利品牌将在世界各地举办一系列专属庆祝活动，以此展示宾利品牌在一个世纪中的革新历程，回顾在全球范围内取得的瞩目成就，并着眼未来，与宾利客户及品牌爱好者一同续写非凡。

    </p>
    <img src="image/bl8.jpg" alt="">
    <div id="talk">
      <div class="talk-top">
        <label>发表评论：</label>
        <textarea id="my_textarea" cols="60" rows="10"></textarea>
        <button id="fb">发表</button>
      </div>
      <ul id="ul">

      </ul>
    </div>
  </div>
  <div class="content-bottom">
    <hr>
    <p><a href="#">关于娱乐</a>
      <a href="#">关于登录</a>
      <a href="#">隐私政策</a>
      | 版权所有 © 2019-2019</p></div>
</div>
<div id="toTop"><a href="#">回到顶部</a></div>
<script src="js/talk.js"></script>
</body>
</html>
