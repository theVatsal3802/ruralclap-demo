import 'dart:convert';

import 'package:ruralclap/models/category_model.dart';

class Trade {
  String id;
  String name;
  String description;
  String imageUrl;
  double price;
  int numberOfBookings;
  double starRating;
  String category;
  Trade({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.price,
    required this.numberOfBookings,
    required this.starRating,
    required this.category,
  });

  Trade copyWith({
    String? id,
    String? name,
    String? description,
    String? imageUrl,
    double? price,
    int? numberOfBookings,
    double? starRating,
    String? category,
  }) {
    return Trade(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      imageUrl: imageUrl ?? this.imageUrl,
      price: price ?? this.price,
      numberOfBookings: numberOfBookings ?? this.numberOfBookings,
      starRating: starRating ?? this.starRating,
      category: category ?? this.category,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'imageUrl': imageUrl,
      'price': price,
      'numberOfBookings': numberOfBookings,
      'starRating': starRating,
      'category': category,
    };
  }

  factory Trade.fromMap(Map<String, dynamic> map) {
    return Trade(
      id: map['id'] as String,
      name: map['name'] as String,
      description: map['description'] as String,
      imageUrl: map['imageUrl'] as String,
      price: map['price'] as double,
      numberOfBookings: map['numberOfBookings'] as int,
      starRating: map['starRating'] as double,
      category: map['category'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Trade.fromJson(String source) =>
      Trade.fromMap(json.decode(source) as Map<String, dynamic>);

  static List<Trade> trades = [
    Trade(
      id: "1",
      name: "Hall",
      description: "Hall cleaning",
      imageUrl: "https://storyset.com/illustration/cleaning-service/amico",
      price: 100,
      numberOfBookings: 125,
      starRating: 4,
      category: Category.categories
          .where((element) => element.name == "House Cleaning")
          .first
          .name,
    ),
    Trade(
      id: "2",
      name: "Bedroom House",
      description: "Bedroom cleaning",
      imageUrl: "https://storyset.com/illustration/cleaning-service/amico",
      price: 100,
      numberOfBookings: 125,
      starRating: 4,
      category: Category.categories
          .where((element) => element.name == "House Cleaning")
          .first
          .name,
    ),
    Trade(
      id: "3",
      name: "Kitchen House",
      description: "Kitchen cleaning",
      imageUrl: "https://storyset.com/illustration/cleaning-service/amico",
      price: 100,
      numberOfBookings: 125,
      starRating: 4,
      category: Category.categories
          .where((element) => element.name == "Kitchen Cleaning")
          .first
          .name,
    ),
    Trade(
      id: "4",
      name: "Bathroom House",
      description: "Bathroom cleaning",
      imageUrl: "https://storyset.com/illustration/cleaning-service/amico",
      price: 100,
      numberOfBookings: 125,
      starRating: 4,
      category: Category.categories
          .where((element) => element.name == "Bathroom Cleaning")
          .first
          .name,
    ),
    Trade(
      id: "5",
      name: "Balcony House",
      description: "Balcony cleaning",
      imageUrl: "https://storyset.com/illustration/cleaning-service/amico",
      price: 100,
      numberOfBookings: 125,
      starRating: 4,
      category: Category.categories
          .where((element) => element.name == "House Cleaning")
          .first
          .name,
    ),
  ];
}
