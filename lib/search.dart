import 'package:flutter/material.dart';

class SearchUser extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: new AppBar(
          title: Text("Home"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search,
                color: Colors.white,),
              onPressed: (){
                showSearch(context: context, delegate: DataSearch());
              },
            )
          ],
        ),
        drawer: new Drawer(
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    height: 150,
                    decoration: new BoxDecoration(
                      //color: Colors.yellowAccent,
                        image: new DecorationImage(
                          image: new AssetImage(
                            "images/wallback.jpg",
                          ),
                          fit: BoxFit.fill,
                        )
                    ),
                    child: Row(
                      children: <Widget>[
                        Text('    '),
                        SizedBox(
                          height: 50.0,
                        ),
                        Image.asset(
                          "images/atl.png",
                          height: 100,
                          width: 100.0,
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
//                          Text('UNIVERSITY OF CAPE COAST',
//                          style: TextStyle(
//                            color: Colors.white,
//                            fontWeight: FontWeight.w900
//                          ),)
                      ],
                    ),
                  ),
                ],
              ),
              new ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.cyan,
                ),
                title: new Text('Home'),
                onTap: () {
                  Navigator.of(context).pop();
                  // Navigator.push(
                  //context,
                  //new MaterialPageRoute(
                  // builder: (BuildContext context) => new main()));
                },
              ),



            ],
          ),
        ),
        body: Container(
          child: ListView(
            children: <Widget>[

            ],
          ),
        )
    );
  }
}

class DataSearch extends SearchDelegate<String>{
  final countries = [
    'Ghana',
    'Togo',
    'Nigeria',
    'Mali',
    'Kenya',
    'Ghana',
    'Togo',
    'Nigeria',
    'Mali',
    'Kenya',
    'Ghana',
    'Togo',
    'Nigeria',
    'Mali',
    'Kenya'
  ];

  final resentCountries = [
    'Ghana',
    'Nigeria',
    'Togo',
    'Nigeria',
    'Mali',
    'Kenya',
    'Ghana',
    'Togo',
    'Nigeria',
    'Mali',
    'Kenya',
    'Ghana',
    'Togo',
    'Nigeria',
    'Kenya'
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: (){
          query = '';
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ), onPressed: (){
      close(context, null);
    }
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return Container(
      margin: EdgeInsets.all(10.0),
      height: 100,
      width: 100,
      child: Card(
        elevation: 5.0,
        child: Container(
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.all(10.0),
          child: Text(query),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    final suggestionList = query.isEmpty?resentCountries: countries.where((p)=>p.startsWith(query)).toList();

    return ListView.builder(itemBuilder: (context, index)=>ListTile(
      onTap: (){
        showResults(context);
      },
      leading: Icon(Icons.settings_input_antenna),
      title: RichText(
        text: TextSpan(
            text: suggestionList[index].substring(0,query.length),
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold
            ),
            children: [
              TextSpan(
                  text: suggestionList[index].substring(query.length),
                  style: TextStyle(
                      color: Colors.grey
                  )
              )
            ]
        ),
      ),
      trailing: Icon(Icons.arrow_forward, color: Colors.red,),
    ),
      itemCount: suggestionList.length,
    );
  }

}