import 'package:equatable/equatable.dart';

class searchdata extends Equatable {
  final int? id;
  final String? name;
  final String? description;
  final String? image;
  final String? rating;
  final String? price;

  const searchdata({
    this.id,
    this.name,
    this.description,
    this.image,
    this.rating,
    this.price,
  });

  factory searchdata.fromJson(Map<String, dynamic> json) => searchdata(
    id: json['id'] as int?,
    name: json['name'] as String?,
    description: json['description'] as String?,
    image: json['image'] as String?,
    rating: json['rating'] as String?,
    price: json['price'] as String?,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'description': description,
    'image': image,
    'rating': rating,
    'price': price,
  };

  @override
  List<Object?> get props {
    return [id, name, description, image, rating, price];
  }
}
