import 'package:flutter/material.dart';
import 'package:job_finder/screens/home/widgets/search_card.dart';
import 'package:job_finder/screens/home/widgets/tag_list.dart';
import 'package:job_finder/screens/search/widgets/search_appbar.dart';
import 'package:job_finder/screens/search/widgets/search_input.dart';
import 'package:job_finder/screens/search/widgets/search_tag.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:  Stack(
          children: [
            Row(
              children: [
                Expanded(flex:2,child: Container()),
                Expanded(flex:1,child: Container(color: Colors.grey.withOpacity(0.2)))
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchAppBar(),
                SearchInput(),
                SearchTag()

              ],
            )
          
          ],
        ),
     

    );
  }
}