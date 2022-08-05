import 'package:flutter/material.dart';
import 'package:supabase_auth_ui/supabase_auth_ui.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You are home',
              style: TextStyle(fontSize: 42),
            ),
            ElevatedButton(
              onPressed: () {
                SupabaseAuthUi().signOutActiveUser();
                Navigator.of(context).popUntil(ModalRoute.withName('/'));
              },
              child: const Text(
                'LogOut',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
