import 'injector/injector.dart';
import 'injector_with_getit/injector_with_getit.dart';
import 'user_repository/user_repository.dart';
import 'user_service/user_service.dart';

void main(List<String> arguments) {
  Injector.register<IUserRepository>(UserRepository());
  Injector.register<IUserService>(UserService(Injector.get<IUserRepository>()));
  Injector.get<IUserService>().getUser();

  // injectorGI.registerLazySingleton<IUserRepository>(() => UserRepository());
  injectorGI.registerSingleton<IUserRepository>(UserRepository());
  injectorGI.registerLazySingleton<IUserService>(() => UserService(injectorGI.get<IUserRepository>()));
  injectorGI.get<IUserService>().getUser();
}
