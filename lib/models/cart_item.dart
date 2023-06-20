class CartItem {
  final String id;
  final String productId;
  final String name;
  final int quantity;
  final double price;

  CartItem(
      {required this.id,
      required this.productId,
      required this.name,
      required this.quantity,
      required this.price});
}

  // CartItem.fromJson(Map<String, dynamic> json){
  //   id = json['id'];
  //   name = json['name'];
  //   price = json['price'];
  //   quantity = json['quantity'];
  //   image = json['image'];
  // }

  // Map<String, dynamic> toJson(){
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['id'] = this.id.toString();
  //   data['name'] = this.name;
  //   data['price'] = this.price.toString();
  //   data['quantity'] = this.quantity.toString();
  //   data['image'] = this.image;
  //   return data;
  // }