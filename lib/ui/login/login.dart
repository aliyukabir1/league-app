import 'package:flutter/material.dart';
import 'package:league_app/ui/home.dart';
import 'package:league_app/ui/login/viewmodel/login_viewmodel.dart';
import 'package:stacked/stacked.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
        viewModelBuilder: (() => LoginViewModel()),
        builder: (context, model, child) => Scaffold(
              appBar: AppBar(
                title: const Text(
                  'Login',
                ),
              ),
              body: Center(
                child: model.isBusy
                    ? const CircularProgressIndicator()
                    : ElevatedButton(
                        onPressed: () async {
                          await model.login();

                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeView()));
                        },
                        child: const Text('log in ')),
              ),
            ));
  }
}
