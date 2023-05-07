class Injector {
  static final _instances = <Type, dynamic>{};
  static void register<T>(T instance) {
    _instances[T] = instance;
  }

  static T get<T>() {
    return _instances[T];
  }
}
