package kim.yongtae.ums.service;
import java.util.List;

import kim.yongtae.ums.dao.UserDao;
import kim.yongtae.ums.dao.UserDaoImpl;
import kim.yongtae.ums.domain.User;


public class UserServiceImpl implements UserService {
    private UserDao userDao;
	
	public UserServiceImpl(){
		this.userDao = new UserDaoImpl();
	}


	public List<User> listUsers() {
		return userDao.getUsers();
	}

	
	public User findUser(int userNo) {
		return userDao.getUser(userNo);
	}

	
	public boolean join(String userName) {
		return userDao.addUser(userName)>0;
	}


	public boolean correct(User user) {
		return userDao.updateUser(user)>0;
	}


	public boolean secede(int userNo) {
		return userDao.delUser(userNo)>0;
	}

}