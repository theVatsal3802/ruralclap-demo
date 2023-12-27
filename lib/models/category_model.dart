import 'dart:convert';

class Category {
  String id;
  String name;
  Category({
    required this.id,
    required this.name,
  });

  Category copyWith({
    String? id,
    String? name,
  }) {
    return Category(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Category.fromJson(String source) =>
      Category.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Category(id: $id, name: $name)';

  static List<Category> categories = [
    Category(id: "1", name: "Trending"),
    Category(id: "2", name: "Most Purchased"),
    Category(id: "3", name: "New"),
    Category(id: "4", name: "House Cleaning"),
    Category(id: "5", name: "Bathroom Cleaning"),
    Category(id: "6", name: "Kitchen Cleaning"),
  ];
}
