import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project2/page.dart';
import 'package:project2/screens/cart_screen.dart';
import 'package:project2/screens/catalog_screen.dart';
import 'package:project2/screens/signin_screen.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children:[
          UserAccountsDrawerHeader(
              accountName: Text('Sobham Bhagirath'),
              accountEmail: Text('Sobham@gmail.com')
          ,currentAccountPicture:  CircleAvatar(
            child:  ClipOval(
              child: Image.network(
                  'https://cutewallpaper.org/21/luffy-profile-pic/luffy-y-nicon-robin-one-piece-minimalist-Forum-Avatar-.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.blue,
            image: DecorationImage(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1518277769913-bbd45cae0b47?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1888&q=80'
              ),fit: BoxFit.cover
            )
          ),),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.addressCard),
            title: Text('Customer Details'),
            onTap: ()=>  Navigator.push(context, MaterialPageRoute(builder: (context){
              return mainPage();
            }
            )),
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.bowlRice),
            title: Text('Menu'),
            onTap: ()=>  Navigator.push(context, MaterialPageRoute(builder: (context){
              return CatalogScreen();
            }
            )),
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.cartArrowDown),
            title: Text('Cart'),
            onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context){
              return CartScreen();
            }
            )),
          ),
          Divider(),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.arrowRightFromBracket),
            title: Text('Logout'),
            onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context){
              return SignInScreen();
            }
            )),
          )
      ]),
    );
  }
}
