package com.car.dao;

import com.car.domain.User;

public interface UserDao {
    User getUser(String username, String password);

    void save(User user);
}
