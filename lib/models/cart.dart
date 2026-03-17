import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier{
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom FREAK',
      price: '236',
      imagePath: "lib/Images/Airmax.png",
      description: 'The forward-thinking design of his latest signature shoe.',
    ),
    Shoe(
      name: 'Air Jordan',
      price: '220',
      imagePath: "lib/Images/Jordan.png",
      description: 'The forward-thinking design of his latest signature shoe.',
    ),
    Shoe(
      name: 'Air Dunk',
      price: '236',
      imagePath: "lib/Images/Dunk.png",
      description: 'The forward-thinking design of his latest signature shoe.',
    ),
    Shoe(
      name: 'Air Fat',
      price: '190',
      imagePath: "lib/Images/Fat.png",
      description: 'The forward-thinking design of his latest signature shoe.',
    ),
  ];
  //list of items in user  cart
  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList(){
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart(){
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);  
    notifyListeners();
  }
}
