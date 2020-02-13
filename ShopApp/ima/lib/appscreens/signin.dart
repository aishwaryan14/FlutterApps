import 'package:flutter/material.dart';
import 'package:shopping/appscreens/mainpage.dart';

import '../main.dart';

class SignInPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  
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

    final signinButon = Material(
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
                  child: Text("Signin",
                      textAlign: TextAlign.center,
                      style: style.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              );
          
              final logintext = Text(
                  "Already have an account?Login",
                   style: new TextStyle(
                   fontSize: 15.0,
                   fontWeight: FontWeight.bold,
                   color: Colors.black,
                   ),
                );

              final loginField = GestureDetector(
                child: logintext,
                onTap : (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>MyHomePage()));
                },
                );

              return Scaffold(
                appBar: AppBar(
                     title: Text(
                       "Signin",
                       style: new TextStyle(
                         fontSize: 20.0,
                         color: Colors.white,
                       ),
                       ),
                     backgroundColor: Colors.redAccent[700],
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
                              emailField,
                              SizedBox(height: 25.0),
                              passwordField,
                              SizedBox(
                                height: 35.0,
                              ),
                              signinButon,
                              SizedBox(
                                height: 15.0,
                              ),
                              loginField,
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
