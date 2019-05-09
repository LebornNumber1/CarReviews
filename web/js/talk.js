/**
 * Created by WUYOU on 2019/5/8.
 */

window.onload = function () {
    // 1. 监听按钮的点击
    $('fb').onclick = function () {
        // 1.1 获取用户输入的内容
        var content = $('my_textarea').value;
        // console.log(content);

        // 1.2 判断
        if(content.length === 0){
            alert("请输入评论的内容~");
            return;
        }

        // 1.3 创建li标签放入ul
        var li = document.createElement('li');
        li.innerHTML = content;
        // $('ul').appendChild(li);
        $('ul').insertBefore(li, $('ul').children[0]);

        // 1.4 清除输入框中的内容
        $('my_textarea').value = '';

    }
};

function $(id) {
    return typeof id === "string" ? document.getElementById(id) : null;
}
