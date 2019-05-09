package com.car.service.impl;

import com.car.dao.UserDao;
import com.car.domain.User;
import com.car.service.UserService;
import lombok.Setter;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public class UserServiceImpl implements UserService {
    @Setter
    private UserDao userDao;

    @Override
    public User login(User user) {
        return userDao.getUser(user.getUsername(), user.getPassword());
    }

    @Override
    public void save(User user) {
        userDao.save(user);
    }
}
