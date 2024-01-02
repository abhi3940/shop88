import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop69/cart_provider.dart';
import 'package:shop69/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => cartProvider(),
      child: MaterialApp(
          title: "shop69",
          debugShowCheckedModeBanner: false,
          home: HomePage(),
          theme: ThemeData(
              useMaterial3: true,
              fontFamily: 'bodoni',
              colorScheme: ColorScheme.fromSeed(
                  seedColor: Color.fromRGBO(255, 0, 128, 1),
                  primary: Color.fromRGBO(255, 0, 128, 1)),
              inputDecorationTheme: const InputDecorationTheme(
                hintStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              textTheme: const TextTheme(
                titleLarge: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                titleMedium: TextStyle(
                  fontSize: 15,
                  fontFamily: 'helvetica',
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 113, 113, 113),
                ),
                titleSmall: TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ))),
    );
  }
}
