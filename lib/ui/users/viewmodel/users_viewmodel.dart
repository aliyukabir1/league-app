import 'package:league_app/core/service_injector.dart';
import 'package:league_app/model/user.dart';
import 'package:stacked/stacked.dart';

class UsersViewModel extends BaseViewModel {
  List<UserModel?>? users = [];
  Future<dynamic> getAllUsers() async {
    setBusy(true);
    users = await si.userServices.getAllUsers();

    setBusy(false);
    notifyListeners();
  }
}
