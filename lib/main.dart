import 'package:flutter/material.dart';
import 'package:paskuhmobile/Screen/HomeP.dart';
import 'package:paskuhmobile/Screen/Splash_screen.dart';
import 'package:paskuhmobile/Screen/ShoppingCart.dart' as ShoppingCart;
import 'package:paskuhmobile/Screen/Wishlist.dart' as Wishlist;
import 'package:paskuhmobile/Screen/BillingInfo.dart';
import 'package:paskuhmobile/Screen/Billing.dart';
import 'package:paskuhmobile/Screen/Cat_Stationery.dart' as Stationery;
import 'package:paskuhmobile/Screen/Cat_Furniture.dart' as Furniture;
import 'package:paskuhmobile/Screen/Cat_Tools.dart' as Tools;
import 'package:paskuhmobile/Screen/Cat_Attribute.dart' as Attribute;
import 'package:paskuhmobile/Screen/Profile.dart' as Profile;
import 'package:paskuhmobile/Screen/login_screen.dart' as login;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pasar Kuliah (PasKu)',
      theme: ThemeData(
        primaryColor: const Color(0xFF673AB7), //color
        colorScheme: ColorScheme.light(
          primary: const Color(0xFF673AB7),
        ),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: {
        "/homeP": (context) => HomeScreen(),
        "/ShoppingCart": (context) => ShoppingCart.ShoppingCartScreen(),
        "/wishlist": (context) => Wishlist.WishlistScreen(),
        // "/BillingInfo": (context) => BillingInformationScreen(),
        "/Billing": (context) => ConfirmationScreen(),
        "/Stationery": (context) => Stationery.CategoriesScreen(),
        "/Furniture": (context) => Furniture.CategoriesScreen(),
        "/Tools": (context) => Tools.CategoriesScreen(),
        "/Attribute": (context) => Attribute.CategoriesScreen(),
        "/Profile": (context) => Profile.ProfilePage(),
        "/login": (context) => login.LoginScreen(),
        "/CreateAccount": (context) => login.LoginScreen(),
      },
    );
  }
}
