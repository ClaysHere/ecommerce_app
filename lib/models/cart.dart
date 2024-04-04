import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: "Zoom FREAK",
        price: "236",
        imagePath:
            "https://down-id.img.susercontent.com/file/id-11134207-7r98y-lo21lmj60m0s20",
        description:
            "The forward-thingking design of his latest signature shoe."),
    Shoe(
        name: "Air Jordans",
        price: "220",
        imagePath:
            "https://media.finishline.com/i/finishline/DZ5485_042_P1?\$default\$&w=671&&h=671&bg=rgb(237,237,237)",
        description:
            "You've got the hops and the speed-lace up in shoes that enhance."),
    Shoe(
        name: "KD Treys",
        price: "240",
        imagePath: "https://ncrsport.com/img/storage/large/897638-004-1.jpg",
        description:
            "A secure midfoot strap is suited for scoring binges and defensive."),
    Shoe(
        name: "Kyrie 6",
        price: "190",
        imagePath:
            "https://filebroker-cdn.lazada.co.id/kf/Sc430727cfe3c4c78a23c0f04ec03dc993.jpg",
        description:
            "Bouncy cushioning is paired with soft yet supportive foam."),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
