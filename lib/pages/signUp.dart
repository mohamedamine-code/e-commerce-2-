import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Intoduction.dart';
import 'package:flutter_application_1/pages/SignIn.dart';
import 'package:lottie/lottie.dart';


class SginUp extends StatelessWidget {
  const SginUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color.fromARGB(252, 252, 245, 255),
      //   leading: IconButton(onPressed: (){
      //     Navigator.push(context, MaterialPageRoute(builder: (context)=>fisrt_page()));
      //   }, icon: Icon(Icons.arrow_back,size: 35,)),
      //   elevation: 0,
      // ),
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Intoduction()),
                          );
                        },
                        icon: Icon(Icons.arrow_back, size: 35, color: Colors.black),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        // color: Colors.red,
                        width: 150,
                        height: 100,
                        child: Lottie.asset(
                          fit: BoxFit.cover,
                          'assets/animation/animation07.json',
                          repeat: false,
                          // height: 300,
                          // width: 300,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 163),
                Column(
                  children: [
                    Container(
                      width: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        color: Colors.deepOrangeAccent,
                      ),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        alignment: Alignment.topLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: Text(
                                'Welcome home!',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text(
                              'Username',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 8),
                            SizedBox(
                              height: 40,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Enter username',
                                ),
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Email or phone Number',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 8),
                            SizedBox(
                              height: 40,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Enter username',
                                ),
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Password',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 8),
                            SizedBox(
                              height: 40,
                              child: TextField(
                                obscureText: true, // For password field
                                decoration: InputDecoration(
                                  suffixIcon: Icon(Icons.remove_red_eye),
                                  border: OutlineInputBorder(),
                                  hintText: 'Enter password',
                                ),
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Confimred Password',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 8),
                            SizedBox(
                              height: 40,
                              child: TextField(
                                obscureText: true, // For password field
                                decoration: InputDecoration(
                                  suffixIcon: Icon(Icons.remove_red_eye),
                                  border: OutlineInputBorder(),
                                  hintText: 'Enter password',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8.0),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Text('Forget password?'),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 45,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black,
                                ),
                                child: Center(
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
            
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SignIn(),
                                    ),
                                  );
                                },
                                child: Center(
                                  child: Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Already have an account? ',
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        TextSpan(
                                          text: 'Sign in',
                                          style: TextStyle(
                                            decoration: TextDecoration.underline,
                                            fontSize: 15,
                                            decorationColor: Colors.black,
                                            decorationThickness: 2.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
