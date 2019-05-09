package com.car.service;

import com.car.domain.User;

public interface UserService {
    User login(User user);

    void save(User user);
}
