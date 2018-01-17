package kim.yongtae.ums.service;

import java.util.List;

import kim.yongtae.ums.domain.User;



public interface UserService {
	List <User> listUsers();
	User findUser(int userNo);
	boolean join(String userName);
	boolean correct(User user);
	boolean secede(int userNo);

}
