import 'package:flutter/material.dart';
import 'package:recipe_1/sqflite_practice/database/database.dart';
import 'package:recipe_1/sqflite_practice/main_view.dart';
import 'package:recipe_1/views/home_view.dart';
import 'package:recipe_1/constant/routes/routes_constants.dart';

void main() async {
  var fido = Cat(
    id: 1,
    name: 'Fido',
    age: 2,
  );
  CatService service;
  service = CatService();
  void insertIt() async {
    await service.insertCatData(fido);
  }

  runApp(MaterialApp(
    routes: {
      signUpRoute: (context) => const HomeView(),
    },
    debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.deepPurple,
    ),
    home: const MainView(),
  ));
}
