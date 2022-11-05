import 'package:flutter/material.dart';
import 'package:recipe_1/views/home_view.dart';
import 'package:recipe_1/constant/routes/routes_constants.dart';
import 'package:recipe_1/views/signing_view.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      signUpRoute: (context) => const HomeView(),
    },
    debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.deepPurple,
    ),
    home: const SigningView(),
  ));
}
