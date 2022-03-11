import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      child: Row(
        children: [
          Expanded(child: TextFormField(
            cursorColor: Colors.grey,
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              hintText: 'Search',
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 18,
              ),
              contentPadding: EdgeInsets.zero,
              prefixIcon: Icon(Icons.search,color: Colors.grey,),
              border:OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none
              )
            ),
          )),
          SizedBox(
            width: 10,
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.circular(30)

            ),
            child: Icon(Icons.filter_alt_outlined),
          )
        ],
      ),
    );
  }
}
