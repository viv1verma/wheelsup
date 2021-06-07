//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
import 'navbarhome.dart';
import 'signup.dart';
import 'secondScreen.dart';

class login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue[200],
      appBar: AppBar(
        backgroundColor: Colors.cyan[500],
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        title: Text("Sign In",style:TextStyle(color: Colors.white)),
        elevation: 0,
      ),
      body: app() ,
    );
  }
}
class app extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return appState();
  }
}
class appState extends State<app> {
  final _emailController = TextEditingController();
  final  _passwordController = TextEditingController();
  /*Future<FirebaseUser>login(String email,String password) async{
    FirebaseAuth _auth = FirebaseAuth.instance;
    try{
      AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;
      return user;
    }catch(e){
      print("Your Email Id or Password might be wrong");
      return null;
    }
  }*/
  @override
  Widget build(BuildContext context) {

    final TapGestureRecognizer _tapGestureRecognizer = TapGestureRecognizer();
    return
      ListView(
        children:<Widget>[
          Container(
            width:500,
            height:1000,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: AlignmentDirectional.bottomCenter,
                  colors: [
                    Colors.cyan[800],
                    Colors.cyan[700],
                    Colors.cyan[600],
                    Colors.cyan[500]
                  ]
              ),
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 30),
                  child:
                  Text(
                      "Welcome Back",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      )
                  ),
                ),
                Text(
                  "Sign In with your Email and Password",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[300],
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.normal,
                    fontSize: 13,
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, top: 70),
                    child:
                    TextFormField(
                      autofocus: true,
                      decoration: InputDecoration(
                          labelText: 'Email Id',
                          hintText: 'Enter Email Id or Mobile Number',
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: Icon(Icons.mail_outline_rounded),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(color: Colors.grey,),


                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(color: Colors.green,),

                          )
                      ),
                      controller: _emailController,
                    )
                ),
                Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, top: 20),
                    child:
                    TextFormField(
                      autofocus: true,
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Enter Your Password',
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: Icon(Icons.vpn_key_outlined),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(color: Colors.grey,),

                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(color: Colors.green,),


                          )
                      ),
                      controller: _passwordController,

                    )
                ),
                Padding(padding:EdgeInsets.only(top:10,right:25,left:250),
                    child:
                    SizedBox(width: double.infinity,
                        child:
                        RichText(text:
                        TextSpan(text:
                        "Forgot Password",

                            style: TextStyle(
                                fontSize: 15,color: Colors.grey[300]),
                            recognizer:  _tapGestureRecognizer
                              ..onTap = () {
                                print('Clicked"');
                              }
                        ),)
                    )
                ),
                Padding(
                    padding: EdgeInsets.only(left: 10, right: 20, top: 70,bottom:30),
                    child:
                    Container(
                      width: 300,
                      height: 40,
                      child:
                      RaisedButton(child: Text(
                          'LogIn⇛',
                          style:TextStyle(
                            color: Colors.white,
                          )),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                          elevation: 10.0,
                          color: Colors.cyan[800],
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MyHomePage() ),);
                          }
                        /*async{
                      final email = _emailController.text.toString().trim();
                      final password = _passwordController.text.toString().trim();

                      FirebaseUser user = await login(email, password);

                      if(user!=null){
                        print("Congratulations LADDU BATVA DO");
                      }
                      else(){
                        print("eror");
                      };
                      },*/
                      ),
                    )
                ),

                Row(children: <Widget>[
                  Container(width:65),
                  Container(
                    width:120,
                    child:
                    Divider(color: Colors.white,thickness: 1.0,),),
                  Padding(padding: EdgeInsets.all(7.0),
                    child:
                    Text('OR',style:TextStyle(color: Colors.white)),),
                  Container(width:120,
                      child:
                      Divider(color:Colors.white,thickness:1.0)),
                ]
                ),


                Padding(padding:EdgeInsets.only(top:40,right:25,left:100),
                  child:
                  SizedBox(width: double.infinity,
                      child:
                      RichText(

                          text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(text:
                                "Don't have an Account? ",
                                    style: TextStyle(
                                        fontSize: 15,color: Colors.white)),
                                TextSpan(text:
                                "SignUp",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white),
                                    recognizer:  _tapGestureRecognizer
                                      ..onTap = () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => signup ()),
                                        );
                                      }
                                ),
                              ]
                          )
                      )
                  ),
                ),
                /* Padding(
                  padding: EdgeInsets.only(left: 10, right: 20, top: 15),
                  child:
                  Container(
                    width: 300,
                    height: 40,

                    child:
                    RaisedButton(child: Text(
                        'Sign Up⇛',
                        style:TextStyle(
                          color: Colors.white,
                        )),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        side: BorderSide(color: Colors.white,width:3.0),

                      ),
                      color: Colors.blue[600],
                      onPressed: () { Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => signup ()),
                      ); },
                    ),
                  )
              )*/
              ],
            ),
          )
        ],

      );


  }
}