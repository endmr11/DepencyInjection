import '../user_repository/user_repository.dart';

abstract class IUserService {
  void getUser();
}

class UserService extends IUserService {
  final IUserRepository _userRepository;
  UserService(this._userRepository);

  @override
  void getUser() {
    print("get user");
    _userRepository.getUserApi();
  }
}
