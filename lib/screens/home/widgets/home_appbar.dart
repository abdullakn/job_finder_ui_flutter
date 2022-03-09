import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 56,
        left: 25,
        right: 25
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Welcome Home",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
              SizedBox(height: 10,),
              Text("Abdulla KN",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),)
              
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30,right: 10),
                transform: Matrix4.rotationZ(100),
                child: Stack(
                  children: [
                    Icon(Icons.notifications_none_outlined),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.all(4),
                        // width: 4,
                        // height: 4,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle
                      ),
                    ))
                  ],
                ),
              ),
              SizedBox(width: 20,),
              ClipOval(
                child: Image.asset('assets/images/avatar1.png',width: 40,),
              )

            ],
          )
          
        ],
      ),
      
    );
  }
}