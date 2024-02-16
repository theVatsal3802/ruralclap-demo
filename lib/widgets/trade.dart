import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:ruralclap/models/trade_model.dart';
import 'package:ruralclap/screens/cart_screen.dart';
import 'package:ruralclap/util/constants.dart';

class TradeTile extends StatelessWidget {
  final Trade trade;
  const TradeTile({required this.trade, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          CartScreen.routeName,
          arguments: trade,
        );
      },
      child: Container(
        width: 150,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Theme.of(context).colorScheme.onBackground,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              Constants.workImage,
              height: 120,
              width: 120,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              trade.name,
              textScaler: TextScaler.noScaling,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
              overflow: TextOverflow.ellipsis,
            ),
            RatingStars(
              value: trade.starRating,
              starColor: Colors.amber,
              valueLabelVisibility: false,
              starCount: 5,
            ),
            Text(
              "₹${trade.price.toStringAsFixed(2)}",
              textScaler: TextScaler.noScaling,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Row(
              children: [
                Icon(
                  Icons.people,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
                Text(
                  "${trade.numberOfBookings.toString()} bookings",
                  textScaler: TextScaler.noScaling,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
