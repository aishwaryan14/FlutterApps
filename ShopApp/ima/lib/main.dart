
import 'package:flutter/material.dart';

import 'appscreens/mainpage.dart';
import 'appscreens/signin.dart';

void main() => runApp(shopping());

class shopping extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Login'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    final emailField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "name@example.com",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
          focusedBorder:OutlineInputBorder(
          borderSide: BorderSide(width: 2.0,color:Colors.redAccent[100]),
          borderRadius:  BorderRadius.circular(32.0),
        ),
      )   
    );

    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "********",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
          focusedBorder:OutlineInputBorder(
          borderSide: BorderSide(width:2.0,color:Colors.redAccent[100]),
          borderRadius:  BorderRadius.circular(32.0),
          
        ),
      )
    );

    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.redAccent[400],
      child: MaterialButton(
        minWidth: MediaQuery
            .of(context)
            .size
            .width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          navigateToMainPage(context);
                  },
                  child: Text("Login",
                      textAlign: TextAlign.center,
                      style: style.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              );
          
              final signintext = Text(
                  "Dont have an account?Create account",
                   style: new TextStyle(
                   fontSize: 15.0,
                   fontWeight: FontWeight.bold,
                   color: Colors.black,
                   ),
                );

              final signinField = GestureDetector(
                child: signintext,
                onTap : (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>SignInPage()));
                },
                );

              return Scaffold(
                appBar: AppBar(
                     title: Text(
                       "Login",
                       style: new TextStyle(
                         fontSize: 20.0,
                         color: Colors.white,
                       ),
                       ),
                     backgroundColor: Colors.black87,
                   ),
                  body: SingleChildScrollView( 
                    child: Center(
                      child: Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                height: 155.0,
                                child: Image.asset(
                                  "assets/logo.png",
                                  fit: BoxFit.contain,
                                ),
                              ),
                              SizedBox(height: 45.0),
                              emailField,
                              SizedBox(height: 25.0),
                              passwordField,
                              SizedBox(
                                height: 35.0,
                              ),
                              loginButon,
                              SizedBox(
                                height: 15.0,
                              ),
                              signinField,
                              SizedBox(
                                height: 15.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
              );
            }
          
 Future navigateToMainPage(BuildContext context) async{
   Navigator.push(context , MaterialPageRoute(builder: (context)=>MainPage()));
    }
   }
   