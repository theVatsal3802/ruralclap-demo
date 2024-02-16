import 'package:flutter/material.dart';
import 'package:ruralclap/models/trade_model.dart';
import 'package:ruralclap/screens/confirm_screen.dart';
import 'package:ruralclap/widgets/cart_tile.dart';

class CartScreen extends StatelessWidget {
  static const routeName = "/cart";
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Trade data = ModalRoute.of(context)!.settings.arguments as Trade;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Checkout",
          textScaler: TextScaler.noScaling,
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(20),
        children: [
          Text(
            "Your Cart",
            textScaler: TextScaler.noScaling,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          Text(
            "Only one service can be booked at a time. In case of multiple services, please make separate bookings",
            textScaler: const TextScaler.linear(0.8),
            style: TextStyle(
              color: Colors.red[800],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          CartTile(trade: data),
          const SizedBox(
            height: 10,
          ),
          Divider(
            color: Theme.of(context).colorScheme.onSurface,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  blurRadius: 0.5,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ],
              color: Theme.of(context).colorScheme.primary,
            ),
            child: const Center(
              child: Text(
                "Apply Coupon here",
                textScaler: TextScaler.noScaling,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Divider(
            color: Theme.of(context).colorScheme.onSurface,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  blurRadius: 0.5,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ],
              color: Theme.of(context).colorScheme.primary,
            ),
            child: const Center(
              child: Text(
                "Set service address here",
                textScaler: TextScaler.noScaling,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Divider(
            color: Theme.of(context).colorScheme.onSurface,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  blurRadius: 0.5,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ],
              color: Theme.of(context).colorScheme.primary,
            ),
            child: const Center(
              child: Text(
                "Select date and time slot for service here",
                textScaler: TextScaler.noScaling,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                ConfirmScreen.routeName,
                (route) => false,
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.secondary,
              foregroundColor: Theme.of(context).colorScheme.primary,
            ),
            child: const Text(
              "Place Service Order",
              textScaler: TextScaler.noScaling,
            ),
          ),
        ],
      ),
    );
  }
}
