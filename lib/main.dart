import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:login_ex1/widget/auth_provider.dart';
import 'package:login_ex1/screen/login_page.dart';
import 'package:login_ex1/screen/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (context) => AuthProvider(),
        child: Consumer<AuthProvider>(
          builder: (context, auth, child) {
            return auth.isAuthenticated ? Home() : LoginPage();
          },
        ),
      ),
    );
  }
}

