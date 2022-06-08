package service.user;

import model.Employee;
import model.User;
import repository.user.IUserRepository;
import repository.user.UserRepositoryImpl;

public class UserServiceImpl implements IUserService {
    IUserRepository userRepository = new UserRepositoryImpl();

    @Override
    public void addNew(User user) {
        userRepository.addNew(user);
    }
}
