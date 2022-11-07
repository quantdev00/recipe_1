import 'package:flutter/material.dart';

class TableBody extends StatelessWidget {
  const TableBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('T A B L E T'),
        ),
        drawer: Drawer(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 30,
              color: Colors.deepPurple[300],
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Text(
                    'Menu $index',
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        backgroundColor: Colors.deepPurple[200],
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: AspectRatio(
                        aspectRatio: 16 / 5,
                        child: Container(
                          color: Colors.deepPurple[400],
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 8,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 120,
                              color: Colors.deepPurple[300],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              //column 2
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 200,
                  color: Colors.deepPurple[300],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
