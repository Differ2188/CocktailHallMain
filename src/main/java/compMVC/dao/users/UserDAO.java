package compMVC.dao.users;

import compMVC.model.users.User;

import java.io.Serializable;

public interface UserDAO extends Serializable {

    User findByUserName(String username);

}