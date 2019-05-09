package com.car.dao.impl;

import com.car.dao.UserDao;
import com.car.domain.User;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import java.util.List;

public class UserDaoImpl extends HibernateDaoSupport implements UserDao {
    @Override
    public User getUser(String username, String password) {
        DetachedCriteria detachedCriteria = DetachedCriteria.forClass(User.class);
        detachedCriteria.add(Restrictions.eq("username", username));
        detachedCriteria.add(Restrictions.eq("password", password));
        List<User> list =
                (List<User>) this.getHibernateTemplate().findByCriteria(detachedCriteria);
        if (list.size() > 0) {
            return list.get(0);
        }
        return null;
    }

    @Override
    public void save(User user) {
        this.getHibernateTemplate().save(user);
    }
}
