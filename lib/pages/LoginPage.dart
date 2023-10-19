import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Image.asset('images/login.png'),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFF5F9FD),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF475269).withOpacity(.3),
                      blurRadius: 5,
                      spreadRadius: 1,
                    )
                  ]
                ),
                child: Row(
                  children: [
                    const Icon(Icons.person, color: Color(0xFF465269), size: 27,),
                    const SizedBox(width: 15,),
                    Container(
                      width: 250,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter Username'
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFF5F9FD),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF475269).withOpacity(.3),
                      blurRadius: 5,
                      spreadRadius: 1,
                    )
                  ]
                ),
                child: Row(
                  children: [
                    const Icon(Icons.lock, color: Color(0xFF465269), size: 27,),
                    const SizedBox(width: 15,),
                    Container(
                      width: 250,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter Password'
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                margin: const EdgeInsets.only(left: 15),
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: (){}, 
                  child: const Text(
                    'Forget Password', 
                    style: TextStyle(
                      color: Color(0xFFF475269), 
                      fontSize: 16, 
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40,),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, 'homePage');
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xFF475269),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF475269).withOpacity(.3),
                        blurRadius: 5,
                        spreadRadius: 1,
                      )
                    ]
                  ),
                  child: const Text(
                    'Sign In', 
                    style: TextStyle(
                      fontSize: 20, 
                      fontWeight: FontWeight.w500, 
                      color: Colors.white, 
                      letterSpacing: 1
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't Have Account? -",
                    style: TextStyle(
                      color: const Color(0xFF475269).withOpacity(.8),
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                    onPressed: (){},
                    child: const Text(
                      "Sign up",
                      style: TextStyle(
                        color: Color(0xFF475269),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                  ),
                  )
                ],)
            ],
          )
        ),
      )
    );
  }
}