import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/cart.dart';
import 'package:flutter_application_1/model/shoe.dart';
import 'package:flutter_application_1/util/Shoes.dart';
import 'package:provider/provider.dart';

class shop_page extends StatefulWidget {
  const shop_page({super.key});

  @override
  State<shop_page> createState() => _shop_pageState();
}

class _shop_pageState extends State<shop_page> {

  @override
  Widget build(BuildContext context) {
    void additem(Shoe x){
      Provider.of<Cart>(context,listen: false).addItem(x);
    }
    return Consumer<Cart>(builder: (context,value,child)=>Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              color: const Color.fromARGB(64, 158, 158, 158),
              child: TextField(
                
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Search..',
                  suffixIcon: Icon(Icons.search)
                ),
              ),
              
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Text('Be unique in your ower Style !'),
            ),
            Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Hot Pick ✌️',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                Text('See all'),
              ],
            ),
            SizedBox(
              height: 430,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context,index){
                  
                return Shoes(
                  shoe: value.getMyShop()[index],
                  additem:(){
                    additem(value.getMyShop()[index]);
                  } ,
                );
              }),
            )
          ],
        ),

      ),
    )
    );
  }
}