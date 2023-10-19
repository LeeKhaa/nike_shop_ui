import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:nike_shop_app/widgets/AllItemsWidget.dart';
import 'package:nike_shop_app/widgets/HomeBottomNavBar.dart';
import 'package:nike_shop_app/widgets/RowItemsWidget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // Custom AppBar
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF5F9FD),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0xFF475269),
                              blurRadius: 5,
                              spreadRadius: 1
                            ),
                          ]
                        ),
                        child: const Icon(
                          Icons.sort, 
                          size: 30, 
                          color: Color(0xFF475269),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF5F9FD),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xFF475269),
                            blurRadius: 5,
                            spreadRadius: 1
                          ),
                        ]
                      ),
                      child: const badges.Badge(
                        badgeContent: Text("3", style: TextStyle(color: Colors.white)),
                        child: Icon(
                        Icons.notifications, 
                        size: 30, 
                        color: Color(0xFF475269),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: 55,
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F9FD),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xFF475269),
                      blurRadius: 5,
                      spreadRadius: 1,
                    ),
                  ]
                ),
                child: Row( children: [
                  Container(
                    margin: const EdgeInsets.only(left: 5),
                    width: 300,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search'
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Icon(Icons.search, size: 27, color: Color(0xFF475269),)
                ]),
              ),
              const SizedBox(height: 30,),
              RowItemsWidget(),
              const SizedBox(height: 20),
              AllItemsWidget(),
            ]
          ),
        ),
      ),
      bottomNavigationBar: HomeBottomNavBar(),
    );
  }
}
