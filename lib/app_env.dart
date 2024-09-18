abstract class AppEnv {
  AppEnv._();

  static String postUri = 'https://jsonplaceholder.typicode.com/posts';
  static List<int> myList =
      List<int>.generate(10, (index) => index, growable: true);
}
