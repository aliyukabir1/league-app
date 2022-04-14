import 'package:flutter/material.dart';
import 'package:league_app/ui/all_post/all_post_view.dart';
import 'package:league_app/ui/users/user_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const UsersView()));
                },
                child: const Text('All Users')),
            const SizedBox(height: 30),
            ElevatedButton(
                onPressed: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PostView()));
                },
                child: const Text('All Post')),
            const SizedBox(height: 30)
          ],
        ),
      ),
    );
  }
}
