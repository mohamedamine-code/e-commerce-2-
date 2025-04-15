import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/shoe.dart';

class Cart extends ChangeNotifier {
  // initile list Shop
  List<Shoe> MyShop=[
    Shoe(
      nom: 'AIR MAX',
      describtion:
          'More Air, less bulk. The Dn8 takes our Dynamic Air system and puts it into a sleek, low-profile package.',
      pathImage: 'assets/img/AIR+MAX+DN+AMD-removebg-preview.png',
      price: 230.5,
    ),
    Shoe(
      nom: 'AIRMAXDN',
      pathImage: 'assets/img/AIRMAXDN-removebg-preview.png',
      price: 255.5,
      describtion:
          'More Air, less bulk. The Dn8 takes our Dynamic Air system and puts it into a sleek, low-profile package.',
    ),
    Shoe(
      nom: 'NIKEAIRMAX90LTR',
      describtion:
          'More Air, less bulk. The Dn8 takes our Dynamic Air system and puts it into a sleek, low-profile package.',
      pathImage: 'assets/img/NIKEAIRMAX90LTR_GS_-removebg-preview.png',
      price: 240.5,
    ),
    Shoe(
      nom: 'WAIRMAXDNISA',
      describtion:
          'More Air, less bulk. The Dn8 takes our Dynamic Air system and puts it into a sleek, low-profile package.',
      pathImage: 'assets/img/WAIRMAXDNISA-removebg-preview.png',
      price: 230.5,
    ),
  ];

  //initiale shop_cart
  List <Shoe> shop_cart=[];

  //get MyShop
  List<Shoe>getMyShop(){
    return MyShop;
  }
  //get shop_cart
  List<Shoe>getshop_cart(){
    return shop_cart;
  }
  // add item
  void addItem(Shoe x){
    shop_cart.add(x);
    notifyListeners();
  }

  //remove item shop_cart
  void delate_item(Shoe x){
    shop_cart.remove(x);
    notifyListeners();
  }


}