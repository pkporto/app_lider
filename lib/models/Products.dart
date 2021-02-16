class Products {
  int id;
  String title;
  double price;
  String description;
  String category;
  String image;

  Products(
      {this.id,
      this.title,
      this.price,
      this.description,
      this.category,
      this.image});

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'].toString().toUpperCase();
    price = json['price'].toDouble();
    description = json['description'];
    category = json['category'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['price'] = this.price;
    data['description'] = this.description;
    data['category'] = this.category;
    data['image'] = this.image;
    return data;
  }
}

// class Data {
//   int id;
//   String title;
//   double price;
//   String description;
//   String category;
//   String image;

//   Data(
//       {this.id,
//       this.title,
//       this.price,
//       this.description,
//       this.category,
//       this.image});

//   Data.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     title = json['title'];
//     price = json['price'];
//     description = json['description'];
//     category = json['category'];
//     image = json['image'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['title'] = this.title;
//     data['price'] = this.price;
//     data['description'] = this.description;
//     data['category'] = this.category;
//     data['image'] = this.image;
//     return data;
//   }
// }
