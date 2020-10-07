import 'package:flutter/material.dart';

class MainSearchDelegate extends SearchDelegate{
  @override
  List<Widget> buildActions(BuildContext context) {
    print("buildActions");
    return [
      Container(child: Text("dataa"),),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    print("buildLeading");

    return IconButton(
      tooltip: 'Back',
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );

  }

  @override
  Widget buildResults(BuildContext context) {
    print("buildResults");
  
    return  Container(child: Text("datar"),);
  
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    print("buildSuggestions" + query);
    
    return  Container(child: Text("datas"),);
  }
  
}