import 'package:flutter/material.dart';
import 'package:recipe_1/sqflite_practice/database/database.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  late final TextEditingController controllerId;
  late final TextEditingController controllerName;
  late final TextEditingController controllerAge;

  @override
  void initState() {
    controllerId = TextEditingController();
    controllerAge = TextEditingController();
    controllerName = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    controllerAge.dispose();
    controllerId.dispose();
    controllerName.dispose();
    super.dispose();
  }

  void saveCat() {
    final id = controllerId.text as int;
    final name = controllerName.text;
    final age = controllerAge.text as int;
    final cat = Cat(id: id, name: name, age: age);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sqlflite tests'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            TextField(
              controller: controllerId,
              decoration: const InputDecoration(hintText: 'cat id'),
            ),
            TextField(
              controller: controllerAge,
              decoration: const InputDecoration(hintText: 'cat name'),
            ),
            TextField(
              controller: controllerName,
              decoration: const InputDecoration(hintText: 'cat age'),
            ),
            TextButton(
              onPressed: () {
                saveCat();
              },
              child: const Text('Save '),
            ),
          ]),
        ),
      ),
    );
  }
}
