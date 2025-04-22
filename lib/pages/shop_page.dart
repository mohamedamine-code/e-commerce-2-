import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/cart.dart';
import 'package:flutter_application_1/model/shoe.dart';
import 'package:flutter_application_1/util/Shoes.dart';
import 'package:flutter_application_1/util/alert_Widget.dart';
import 'package:provider/provider.dart';

class shop_page extends StatefulWidget {
  const shop_page({super.key});

  @override
  State<shop_page> createState() => _shop_pageState();

}

class _shop_pageState extends State<shop_page> {
  void Widget_alert(){
   showDialog(context: context, builder: (BuildContext context){
    return alert_Widget();
   });
  }

  @override
  Widget build(BuildContext context) {
    void additem(Shoe x){
      Provider.of<Cart>(context,listen: false).addItem(x);
    }
    return Consumer<Cart>(builder: (context,value,child)=>Scaffold(
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  // color: const Color.fromARGB(64, 158, 158, 158),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      //  borderSide: BorderSide.none,
                    ),
                    filled: true,
                      // fillColor: Colors.white,
                    hintText: 'Search..',
                    suffixIcon: Icon(Icons.search)
                  ),
                ),
                
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Text('Be unique in your ower Style !',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Hot Pick ✌️',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                  Text('See all'),
                ],
              ),
              SizedBox(
                height: 430,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: value.getMyShop().length,
                  itemBuilder: (context,index){
                    
                  return Shoes(
                    shoe: value.getMyShop()[index],
                    additem:(){
                      additem(value.getMyShop()[index]);
                      Widget_alert();
                    } ,
                  );
                }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Otehrs Games✌️',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                  Text('See all'),
                ],
              ),
              SizedBox(
                height: 430,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: value.get_Gmaes().length,
                  itemBuilder: (context,index){
                  return Shoes(
                    shoe: value.get_Gmaes()[index],
                    additem:(){
                      additem(value.get_Gmaes()[index]);
                      Widget_alert();
                    } ,
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    )
    );
  }
}