import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPage();
}

class _loginPage extends State<loginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ListView(
          children:[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                height: 300,
                width: 500,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/1.jpg'),
                        fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10)
                    )
                )
            ),

            // const SizedBox(
            //     height: 250,
            // ),

            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(

                  'User Login',

                  style: TextStyle(fontFamily: 'Inter', fontSize: 30, color: Colors.lightBlue)),
            ),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Sign in',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.account_circle, color: Colors.blue) ,
                  border: OutlineInputBorder(
                      borderSide:  BorderSide(color: Colors.blue)
                  ),
                  labelText: 'Username',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.password, color: Colors.blue) ,
                  border: OutlineInputBorder(
                      borderSide:  BorderSide(color: Colors.blue)),
                  labelText: 'Password',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text('Forgot Password?',),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                  },
                )
            ),
            Row(
              children: <Widget>[
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 18),
                  ),
                  onPressed: () {
                    //signup screen
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}