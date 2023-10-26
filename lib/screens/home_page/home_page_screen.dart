import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../course_screen.dart';
import 'home_page_compoents.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,

      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
            bottom : TabBar(
              tabs: [
                Tab(child: Column(
                  children: [
                    Text(
                      ' مجموعات الابناء ',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),
                    ),
                    Container(
                      width: 110,
                      height: 5,

                    ),
                  ],
                ),),
                Tab(child:   Column(
                  children: [
                    Text(
                      'كورسات الابناء ',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    // Container(
                    //   width: 110,
                    //   height: 5,
                    //
                    // ),
                  ],
                ),)
              ],
            )
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Row(
                    children: [



                    ],
                  ),
                ),
                buildietmbodylist(name: '  خالد',subName: 'لغة عربيه '),
                buildietmbodylist(name: 'محمد',subName: 'لغة فرنسيه'),
                buildietmbodylist(name: 'احمد'  ,subName: 'لغة فرنسيه'),

              ],

            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Row(
                    children: [



                    ],
                  ),
                ),
                buildietmbodylist(name: 'م. احمد خالد',subName: 'لغة عربيه'),
                buildietmbodylist(name: 'م. لمياء  جمال',subName: 'لغة انجليزية'),
                buildietmbodylist(name: 'م. محمد خالد',subName: 'لغة فرنسيه'),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>CourseScreen()));
                  },
                  child: Text(
                    'متجر الكورسات',
                    style: TextStyle(color: Colors.white,fontSize: 18),
                  ),
                  color: Colors.lightBlueAccent,
                )
              ],

            ),

          ],
        ),

    )
    );

  }



  Padding buildietmbodylist({required String name ,required String subName}) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 20.0,
            offset: Offset(10, 10),
          ),
        ]),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
           mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(

                  children: [
                    Text(
                      '$name',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      ' $subName   ',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                  ],
                ),
                HomePageComponent(),
              ],
            ),
          ),
        ),
      ),
    );
  }


}
