import 'dart:typed_data';

class Cart {
  int? id;
  String title;
  Uint8List image;

  Cart({
    required this.title,
    required this.image,
    required this.id
  });

  factory Cart.fromJson(Map<String, dynamic> json) {
    // Konversi nilai 'image' dari tipe String ke Uint8List
    Uint8List imageBytes = Uint8List.fromList(json['image']);

    return Cart(
        title: json['title'],
        image: imageBytes,
        id: json['id']
    );
  }
}
