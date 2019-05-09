package com.car.web;

import com.car.domain.User;
import com.car.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import lombok.Setter;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;

public class LoginAction extends ActionSupport implements ModelDriven<User> {
    private User user = new User();

    @Override
    public User getModel() {
        return user;
    }

    @Setter
    private UserService userService;

    public String login() {
        HttpServletRequest request = ServletActionContext.getRequest();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if (username == null || password == null || password.length() == 0 || username.length() == 0) {
            this.addActionError("请输入账号或密码");
            return "login";
        } else {
            User login = userService.login(user);
            if (login == null) {
                this.addActionError("用户名或密码错误");
                return "login";
            } else {
                ActionContext.getContext().getSession().put("login", login);
                return "success";
            }
        }
    }

    public String reg() {
        HttpServletRequest request = ServletActionContext.getRequest();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String passwordAgain = request.getParameter("passwordAgain");
        if (username == null || password == null || password.length() == 0 || username.length() == 0) {
            this.addActionError("请输入账号或密码");
            return "reg";
        } else {
            if (!passwordAgain.equals(password)) {
                this.addActionError("两次输入密码不同");
                return "reg";
            } else {
                userService.save(user);
                return "login";
            }
        }
    }

    public String ret() {
        return "ret";
    }

    public String reg1() {
        return "reg1";
    }

    public String login1() {
        return "login1";
    }

    public String play() {
        return "play";
    }

    public String review(){
        return "review";
    }

    public String ipa(){
        return "ipa";
    }

    public String bl(){
        return "bl";
    }

    public String us(){
        return "us";
    }

    public String mre(){
        return "mre";
    }

}
