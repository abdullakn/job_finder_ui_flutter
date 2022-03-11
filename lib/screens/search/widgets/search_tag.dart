import 'package:flutter/material.dart';

class SearchTag extends StatefulWidget {
  const SearchTag({Key? key}) : super(key: key);

  @override
  State<SearchTag> createState() => _SearchTagState();
}

class _SearchTagState extends State<SearchTag> {
  final optionMap = <String, bool>{
    'Development': true,
    'Design': false,
    'HR': false,
    'Marketing': false,
    'Sales': false
  };
  @override
  Widget build(BuildContext context) {
    var keys = optionMap.keys.toList();
    return Container(
      height: 40,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 25),
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  // var res=optionMap[keys[index]]??false;
                  // print(res);

                  setState(() {
                    var res = optionMap[keys[index]] ?? false;
                    optionMap[keys[index]] = !res;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                      color: optionMap[keys[index]]!
                          ? Theme.of(context).primaryColor
                          : Colors.grey.withOpacity(0.1),
                          border: Border.all(color: Theme.of(context).primaryColor.withOpacity(0.5)),
                      borderRadius: BorderRadius.circular(20)),
                      
                  child: Row(
                    children: [
                      Text(
                        keys[index],
                        style: TextStyle(
                            color: optionMap[keys[index]]!
                                ? Colors.white
                                : Colors.black),
                      ),
                      SizedBox(width: 5,),
                      optionMap[keys[index]]!?Icon(Icons.close,color: Colors.white,size: 15,):SizedBox()
                    ],
                  ),
                ),
              ),
          separatorBuilder: (_, index) => SizedBox(
                width: 20,
              ),
          itemCount: optionMap.length),
    );
  }
}
