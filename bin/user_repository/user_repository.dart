abstract class IUserRepository {
  void getUserApi();
}

class UserRepository extends IUserRepository {
  @override
  void getUserApi() {
    print("Api Call");
  }
}
