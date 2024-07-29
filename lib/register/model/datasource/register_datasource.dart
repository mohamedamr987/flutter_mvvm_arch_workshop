import 'package:project/core/helper/cache_helper.dart';
import 'package:project/core/helper/dio_helper.dart';

class RegisterDataSource {
  DioHelper dioHelper = DioHelper();
  CacheHelper cacheHelper = CacheHelper();

  Future<String?> registerUser({
    required String email,
    required String password,
    required String name,
  }) async {
    final response = await dioHelper.post('/auth/register', {
      'email': email,
      'password': password,
      'name': name,
    });
    print(response.data);
    if (response.statusCode == 200) {
      cacheHelper.cacheToken(response.data['token']);
      cacheHelper.cacheUser(response.data['user']);
      return null;
    } else {
      return response.data['message'];
    }
  }
}
