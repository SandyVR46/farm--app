import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceryapp/pages/admin_home_page.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../components/grocery_item_tile.dart';
import '../model/cart_model.dart';
import 'cart_page.dart';
import 'profile/admin_profile.dart';
import 'profile/user_profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // FirebaseAuth auth = FirebaseAuth.instance;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: Icon(
            Icons.location_on,
            color: Colors.grey[700],
          ),
        ),
        title: Text(
          'Kerala, India',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[700],
          ),
        ),
        centerTitle: false,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 24.0,top: 10),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> UsrSettingsScreen()));
              },
              child: Icon(
                Icons.person,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const CartPage();
            },
          ),
        ),
        child: const Icon(Icons.shopping_bag),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 28),

          // good morning bro
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Text('Todays List!,'),
          ),

          const SizedBox(height: 4),

          // Let's order fresh items for you
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              "Let's order fresh items straight from farm for you",
              // style: GoogleFonts.notoSerif(
              //   fontSize: 36,
              //   fontWeight: FontWeight.bold,
              // ),
            ),
          ),

          const SizedBox(height: 12),
          
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Divider(),
          ),

          // const SizedBox(height: 24),

          // categories -> horizontal listview
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              "Fresh Items",
              // style: GoogleFonts.notoSerif(
              //   //fontWeight: FontWeight.bold,
              //   fontSize: 18,
              // ),
            ),
          ),

          // recent orders -> show last 3
          Expanded(
            child: Consumer<CartModel>(
              builder: (context, value, child) {
                return GridView.builder(
                  padding: const EdgeInsets.all(12),
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: value.shopItems.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1 / 1.2,
                  ),
                  itemBuilder: (context, index) {
                    return GroceryItemTile(
                      itemName: value.shopItems[index][0],
                      itemPrice: value.shopItems[index][1],
                      imagePath: value.shopItems[index][2],
                      color: value.shopItems[index][3],
                      onPressed: () =>
                          Provider.of<CartModel>(context, listen: false)
                              .addItemToCart(index),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
