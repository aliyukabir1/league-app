import 'package:flutter/material.dart';
import 'package:league_app/ui/users/viewmodel/users_viewmodel.dart';
import 'package:stacked/stacked.dart';

class UsersView extends StatelessWidget {
  const UsersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<UsersViewModel>.reactive(
        viewModelBuilder: () => UsersViewModel(),
        onModelReady: (model) {
          model.getAllUsers();
        },
        builder: (context, model, child) => SafeArea(
              child: Scaffold(
                appBar: AppBar(
                  elevation: 0,
                  centerTitle: true,
                  title: const Text('All Users'),
                ),
                body: model.isBusy
                    ? const Center(child: CircularProgressIndicator())
                    : Padding(
                        padding: const EdgeInsets.all(20),
                        child: ListView.separated(
                            itemBuilder: (context, index) {
                              return ListTile(
                                  onTap: () {},
                                  title: Text(
                                    model.users![index]!.name as String,
                                    style: const TextStyle(color: Colors.blue),
                                  ),
                                  trailing: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        model.users![index]!.avatar as String),
                                  ));
                            },
                            separatorBuilder:
                                (BuildContext context, int index) =>
                                    const Divider(color: Colors.brown),
                            itemCount: model.users!.length),
                      ),
              ),
            ));
  }
}
