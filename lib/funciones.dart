import 'package:flutter/material.dart';

class searchbarhome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp( //use MaterialApp() widget like this
        home: searchbar() //create new widget class for this 'home' to
      // escape 'No MediaQuery widget found' error
    );
  }
}

class searchbar extends StatelessWidget{
  const searchbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.4,
      ),
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
          title: const Text("Buscar"),
          backgroundColor: Colors.teal,
          actions: <Widget>[
            IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  showSearch(context: context, delegate: dataSearch());
                }
            )
          ]
      ),
    );
  }
}

class dataSearch extends SearchDelegate<String>{

  final nombres1 =[
    "Ivan",
    "Diana",
    "Sebastian",
    "Diego",
    "Jeffer"
  ];
  final recentNames =[
    "Garzon",
    "Lillo",
    "Giraldo",
    "Lanino",
    "Figeroa"
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    // Action de appbar
    return [
      IconButton(icon: Icon(Icons.clear), onPressed: () {})
    ];
    throw UnimplementedError();
  }

  @override
  Widget buildLeading(BuildContext context) {
    // Iconos principales
    return IconButton(icon: AnimatedIcon(
      icon: AnimatedIcons.menu_arrow,
      progress: transitionAnimation,
    ),
        onPressed: (){});
  }

  @override
  Widget buildResults(BuildContext context) {
    // Muestra los resultados
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // lo que se quiere ver
    final suggestionList = query.isEmpty?nombres1:recentNames;
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.location_city),
        title: Text(suggestionList[index]),
      ),
      itemCount: suggestionList.length,
    );
    throw UnimplementedError();
  }

}




