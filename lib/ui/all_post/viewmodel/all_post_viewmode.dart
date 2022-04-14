import 'package:league_app/core/service_injector.dart';
import 'package:league_app/model/post.dart';
import 'package:stacked/stacked.dart';

class AllPostViewModel extends BaseViewModel {
  List<PostModel?>? users = [];
  Future<dynamic> getAllUsers() async {
    setBusy(true);
    users = await si.postServices.getAllPost();

    setBusy(false);
    notifyListeners();
  }
}
