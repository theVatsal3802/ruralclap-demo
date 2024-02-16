import 'package:flutter/material.dart';
import 'package:ruralclap/screens/home_screen.dart';
import 'package:ruralclap/util/constants.dart';

class ConfirmScreen extends StatelessWidget {
  static const routeName = "/confirm";
  const ConfirmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              Constants.confirmImage,
              height: 150,
              width: 150,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Service confirmed",
              textScaler: TextScaler.noScaling,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                  HomeScreen.routeName,
                  (route) => false,
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.secondary,
                foregroundColor: Theme.of(context).colorScheme.primary,
              ),
              child: const Text(
                "Back to home",
                textScaler: TextScaler.noScaling,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
