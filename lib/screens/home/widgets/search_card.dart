import 'package:flutter/material.dart';
import 'package:job_finder/screens/search/search.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
      width: double.maxFinite,
      height: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
              image: AssetImage(
                "assets/images/search_bg.png",
              ),
              fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Fast Search',
            style: TextStyle(color: Colors.white, fontSize: 26),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "You can Search the job quickly\nfor the job you want",
            style: TextStyle(
                height: 1.8, color: Colors.white, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.white),
              child: Stack(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>SearchPage()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: double.maxFinite,
                      height: 30,
                      child: Text('Search...'),
                    ),
                  ),
                  // Text('Search'),
                  // TextFormField(
                  //   decoration: InputDecoration(
                  //       contentPadding: EdgeInsets.symmetric(vertical: 0),
                  //       border: InputBorder.none,
                  //       hintText: "Search here..."),
                  // ),
                  Positioned(
                      top: 5,
                      right: 10,
                      child: IconButton(
                          onPressed: () {}, icon: Icon(Icons.search)))
                ],
              ))
        ],
      ),
    );
  }
}
