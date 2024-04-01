import 'package:ecommerce_app/models/cart.dart';
import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  // remove item from cart
  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(widget.shoe.imagePath),
      title: Text(widget.shoe.name),
      subtitle: Text(widget.shoe.price),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        onPressed: removeItemFromCart,
      ),
    );
  }
}
