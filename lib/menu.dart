// import 'package:flutter/material.dart';
//
// import 'main.dart';
//
//
// class menu extends StatefulWidget {
//   const menu({Key? key}) : super(key: key);
//
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Myapp',
//         theme: ThemeData(
//           // Define the default brightness and colors.
//           brightness: Brightness.dark,
//           primaryColor: Colors.lightBlue[800],
//         ),
//       home: menu(),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project2/orderdetails.dart';
import 'constants.dart';
import 'package:google_fonts/google_fonts.dart';




// class menu extends StatefulWidget {
//   const menu({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: menu(),
//     );
//   }
// }

class menu extends StatefulWidget {
  const menu({Key? key}) : super(key: key);

  @override
  _menuState createState() => _menuState();
}

class _menuState extends State<menu> {
  @override
  ScrollController controller = ScrollController();
  bool closeTopContainer = false;
  double topContainer = 0;

  List<Widget> itemsData = [];

  void getPostsData() {
    List<dynamic> responseList = FOOD_DATA;
    List<Widget> listItems = [];
    responseList.forEach((post) {
      listItems.add(Container(
          height: 150,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Colors.white, boxShadow: [
            BoxShadow(color: Colors.black.withAlpha(100), blurRadius: 10.0),
          ]),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      post["name"],
                      style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      post["brand"],
                      style: const TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "\$ ${post["price"]}",
                      style: const TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
                    )
                  ],
                ),

              ],
            ),
          )));
    });
    setState(() {
      itemsData = listItems;
    });
  }

  @override
  void initState() {
    super.initState();
    getPostsData();
    controller.addListener(() {

      double value = controller.offset/119;

      setState(() {
        topContainer = value;
        closeTopContainer = controller.offset > 50;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double categoryHeight = size.height*0.30;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Menu', style: GoogleFonts.montserrat(textStyle: Theme.of(context).textTheme.headline4, fontSize: 25, color: Colors.lightBlue,fontStyle: FontStyle.normal, fontWeight:FontWeight.w500 )),
          elevation: 1,
          backgroundColor: Colors.white,
          leading: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search, color: Colors.black),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.person, color: Colors.black),
              onPressed: () {},
            )
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 4) ,
          child:
          Container(
          height: size.height,
          child: Column(
            children: <Widget>[
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   children: const <Widget>[
              //
              //     Text(
              //       "Menu",
              //       style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 25),
              //     ),
              //   ],
              // ),
              const SizedBox(
                height: 4,
              ),
              Container(
                  alignment: Alignment.center,
                  height: 225,
                  width: 500,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/3.jpg'),
                          fit: BoxFit.cover
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10)
                      )
                  )
                // ),
                // const SizedBox(
                //   height: 10,
                // )
              ),
              // AnimatedOpacity(
              //   duration: const Duration(milliseconds: 200),
              //   opacity: closeTopContainer?0:1,
              //   child: AnimatedContainer(
              //     duration: const Duration(milliseconds: 200),
              //     width: size.width,
              //     alignment: Alignment.topCenter,
              //     height: closeTopContainer?0:categoryHeight,
              //   ),
              // ),
              Expanded(
                  child: ListView.builder(
                      controller: controller,
                      itemCount: itemsData.length,
                      physics: const ClampingScrollPhysics(),
                      itemBuilder: (context, index) {
                        double scale = 1.0;
                        if (topContainer > 0.5) {
                          scale = index + 0.5 - topContainer;
                          if (scale < 0) {
                            scale = 0;
                          } else if (scale > 1) {
                            scale = 1;
                          }
                        }
                        return Opacity(
                          opacity: scale,
                          child: Transform(
                            transform:  Matrix4.identity()..scale(scale,scale),
                            alignment: Alignment.bottomCenter,
                            child: Align(
                                heightFactor: 0.7,
                                alignment: Alignment.topCenter,
                                child: itemsData[index]),
                          ),
                        );
                      })
              ),
              Container(
                child: ElevatedButton(
                child: Text('Next'),
                onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                return orderDetails();}),);
              }),)

            ],

          ),
        ),
      ),
    ));
  }


}

