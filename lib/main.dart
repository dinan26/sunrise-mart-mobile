import 'package:flutter/material.dart';
import 'package:sunrise_mart/screens/login.dart';
import 'package:sunrise_mart/screens/menu.dart';
import 'package:provider/provider.dart'; // Menambahkan provider
import 'package:pbp_django_auth/pbp_django_auth.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        // Membuat instance CookieRequest (gantilah sesuai dengan kebutuhan objek Anda)
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Sunrise Mart',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.amber,
          ).copyWith(secondary: Colors.amber[100]),
        ),
        home: const LoginPage(),
      ),
    );
  }
}
