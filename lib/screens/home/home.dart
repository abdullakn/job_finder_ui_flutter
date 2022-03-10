import 'package:flutter/material.dart';
import 'package:job_finder/screens/home/widgets/home_appbar.dart';
import 'package:job_finder/screens/home/widgets/job_list.dart';
import 'package:job_finder/screens/home/widgets/search_card.dart';
import 'package:job_finder/screens/home/widgets/tag_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(flex:2,child: Container()),
              Expanded(flex:1,child: Container(color: Colors.grey.withOpacity(0.1),))
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeAppBar(),
              SearchBox(),
              TagButton(),
              JobList()

            ],
          )
        ],
      ),

    );
  }
}

