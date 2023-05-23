

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../utilis/routes.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  String username="";
  bool changeButton=false;
  // final _formKey=  GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey =   GlobalKey<FormState>();

  void moveToHomePage(BuildContext context) async {

    if( _formKey.currentState!.validate()){

    
          setState(() {
            changeButton=true;
          });
          await Future.delayed(const Duration(seconds: 1));
          await Navigator.pushNamed(context, MyRoutes.homeRoute);
          setState(() {
            changeButton=false;
          });

      }
  }

  @override
  Widget build(BuildContext context) {
    return  Material(
        color: context.canvasColor,
        
        
        // child: Scaffold(
        //   resizeToAvoidBottomInset:true,
          child: SingleChildScrollView(
            
              child:  Form(
                key: _formKey,
                child: Column(
                children: [
                  Image.asset("assets/images/login_asset.png",
                  fit: BoxFit.cover,
                   ),
                   const SizedBox(    // to provide some gap
                    height: 12,
                   ),
                    const Text("catalog app",
                     style:    TextStyle(
                       fontSize: 32, 
                      // fontWeight: FontWeight.bold,
                      fontFamily: 'Cirka'
                      ),
                   ),
                     Text("welcome $username ",
                   style: const  TextStyle(
                    fontSize: 22, 
                    fontWeight: FontWeight.bold
                   ),
                   ),
                   const SizedBox(
                    height: 12,
                   ),
                   Padding(padding: const EdgeInsets.symmetric(vertical:12,horizontal: 32),
                   child: Column(
                      children: [
                      TextFormField(
                      decoration: const InputDecoration(
                        hintText: "enter username",
                        labelText: "username",
                        hintStyle: TextStyle(
                          
                        ),
                        
                      ),
                      onChanged: (value){
                        username=value;
                        setState(() { });
                      },
                      validator: (value){
                          if(value!=null && value.isEmpty){
                              return "username is required";
                          }
                          return null; 
                          
                      },
                    ),
                      TextFormField(
                        // obscureText: true,            // to do not show password
                        decoration: const InputDecoration(
                        hintText: "enter password",
                        labelText: "password",
                        hintStyle: TextStyle(
                          
                        ),
                        
                        
                      ),
                       validator: (value){
                          if(value!=null && value.length < 6){
                              return "password length should be greater than 6";
                          } 
                          return null; 
                      },
                    ),
                      const SizedBox(    // to provide some gap
                      height: 18,
                    ),
                      
                    InkWell(
                      onTap: () => moveToHomePage(context),
                      child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        height: 50,
                        width:changeButton? 50:150,
                        
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: context.theme.buttonColor,
                            borderRadius: BorderRadius.circular(changeButton?100:0)
                          ),
                        child: changeButton? const Icon(
                          Icons.done,
                          color: Colors.white,
                      
                        ) : const Text('login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          
                          ),
                        
                        ),
                      ),
                    )
                    // ElevatedButton(
                    // style: TextButton.styleFrom(minimumSize: const Size(150,40)),
                    // onPressed: (){
                    //    Navigator.pushNamed(context, MyRoutes.homeRoute );
                    //  }, 
                    // child: const Text('login'),
                    // ),
                          
                          
                    ],
                      ),
                   ),
                   
                    
                ]),
              ),
          
               
          ),
        // )
        
        
      );
    
  }
}