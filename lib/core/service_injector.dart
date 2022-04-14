import 'package:league_app/services/local_data/local_data_services.dart';
import 'package:league_app/services/login_services/login_services.dart';
import 'package:league_app/services/post_services/post_services.dart';
import 'package:league_app/services/user_services/user_services.dart';

class ServiceInjector {
  LoginServices loginServices = LoginServices();
  LocalDataServices localDataServices = LocalDataServices();
  UserServices userServices = UserServices();
  PostServices postServices = PostServices();
}

ServiceInjector si = ServiceInjector();
