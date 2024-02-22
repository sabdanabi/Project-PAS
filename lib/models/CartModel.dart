import 'dart:typed_data';

class Cart {
  int? id;
  String title;
  Uint8List image;

  Cart({
    required this.title,
    required this.image,
    this.id
  });


  Cart.fromMap({required map})
      : id = map['id'],
        title = map['title'],
        image = map['image'];

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'title': title,
      'image': image
    };
  }
}
