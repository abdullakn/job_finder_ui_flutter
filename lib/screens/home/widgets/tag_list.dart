import 'package:flutter/material.dart';

class TagButton extends StatefulWidget {
  const TagButton({Key? key}) : super(key: key);

  @override
  State<TagButton> createState() => _TagButtonState();
}

class _TagButtonState extends State<TagButton> {
  var selecedTag = 0;
  final tagList = <String>['All', 'Populrar', 'Featured'];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      height: 40,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    selecedTag = index;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(30),
                      color: selecedTag == index
                          ? Colors.tealAccent[700]
                          : Theme.of(context).primaryColor.withOpacity(0.2)),
                  child: Text(
                    tagList[index],
                    style: TextStyle(
                        color:
                            selecedTag == index ? Colors.white : Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
          separatorBuilder: (_, index) => SizedBox(
                width: 10,
              ),
          itemCount: tagList.length),
    );
  }
}
