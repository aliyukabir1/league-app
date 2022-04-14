import 'package:flutter/material.dart';
import 'package:league_app/ui/all_post/viewmodel/all_post_viewmode.dart';
import 'package:stacked/stacked.dart';

class PostView extends StatelessWidget {
  const PostView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AllPostViewModel>.reactive(
        viewModelBuilder: () => AllPostViewModel(),
        onModelReady: (model) {
          model.getAllUsers();
        },
        builder: (context, model, child) => SafeArea(
              child: Scaffold(
                appBar: AppBar(
                  elevation: 0,
                  centerTitle: true,
                  title: const Text('All Post'),
                ),
                body: model.isBusy
                    ? const Center(child: CircularProgressIndicator())
                    : Padding(
                        padding: const EdgeInsets.all(20),
                        child: ListView.separated(
                            itemBuilder: (context, index) {
                              return ListTile(
                                  title: Text(
                                    model.users![index]!.title as String,
                                    style: const TextStyle(color: Colors.blue),
                                  ),
                                  trailing: const Icon(Icons.visibility));
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
