import 'package:carigari/screens/badge.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cart.dart';
// import 'cart_screen.dart';

Widget bottomnavigation(BuildContext context,int index) {

 
      return BottomNavigationBar(
        onTap:(index)
           {
             switch(index)
             
             {
               case 0:
               {
                 Navigator.pushNamed(context, 'HomeScreen');
                 break;
               }
               case 1:
               {
                 Navigator.pushNamed(context, 'ContactUs');
                 break;
               }
               
               case 2:
               {
                 Navigator.pushNamed(context, 'CartScreen');
                 break;
               }
   
             }
   
   
           },
   
         type: BottomNavigationBarType.fixed,
         currentIndex: index,
         items: 
        //  <BottomNavigationBarItem>
         [
             BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home'),),
             BottomNavigationBarItem(
                 icon: Icon(Icons.contacts), title: Text('Contact us')),
             BottomNavigationBarItem(
               icon:Consumer<Cart>(
            builder: (_, cart, ch) => Badge(
                  child: ch,
                  value: cart.itemCount.toString(),
                ),
            child: 
              Icon(
                Icons.shopping_cart,
              ),
             
            ),
            title: Text('shopping'),
          ),
                      //  icon: Icon(Icons.shopping_cart), title: Text('Cart')),
           ],
           fixedColor: Colors.orange,
          
                  
               );
               
             
           
         

}