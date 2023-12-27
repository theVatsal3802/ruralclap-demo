import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home",
          textScaler: TextScaler.noScaling,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Top",
              textScaler: TextScaler.noScaling,
            ),
            SizedBox(
              width: double.infinity,
              height: 100,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.red,
                    height: 20,
                    width: 20,
                    margin: const EdgeInsets.all(20),
                  );
                },
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
