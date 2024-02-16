import 'package:flutter/material.dart';
import 'package:ruralclap/models/category_model.dart';
import 'package:ruralclap/models/trade_model.dart';
import 'package:ruralclap/widgets/category_tile.dart';
import 'package:ruralclap/widgets/custom_drawer.dart';
import 'package:ruralclap/widgets/trade.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "/home";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Trade> trades = Trade.trades;
  final List<Category> categories = Category.categories;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: const Text(
          "Welcome back",
          textScaler: TextScaler.noScaling,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
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
                "Promotions here\n\nHorizontal Scrolling animation \nfor multiple promotions of services",
                textScaler: TextScaler.noScaling,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Most Booked services",
            textScaler: TextScaler.noScaling,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 300,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return TradeTile(
                  trade: trades[index],
                );
              },
              itemCount: trades.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Offers for you",
            textScaler: TextScaler.noScaling,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
            overflow: TextOverflow.ellipsis,
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
                "Offers available here\n\nHorizontal Scrolling animation \nfor multiple offers",
                textScaler: TextScaler.noScaling,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Categories",
            textScaler: TextScaler.noScaling,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 10,
          ),
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemBuilder: (context, index) {
              return CategoryTile(
                category: categories[index],
              );
            },
            itemCount: trades.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
          ),
        ],
      ),
    );
  }
}
