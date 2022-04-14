import 'package:league_app/core/service_injector.dart';
import 'package:stacked/stacked.dart';

class LoginViewModel extends BaseViewModel {
  login() async {
    setBusy(true);
    try {
      String key = await si.loginServices.logIn();

      si.localDataServices.saveKey(key);
    } catch (e) {
      setError(true);
    }
    setBusy(false);
  }
}
