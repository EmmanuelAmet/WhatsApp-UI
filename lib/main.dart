import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './search.dart';

void main(){
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(accentColor: Colors.white, primarySwatch: Colors.deepOrange),
        home: DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(
                    child: IconButton(
                      icon: Icon(Icons.camera_alt, color: Colors.white,),
                    )
                  ),
                  Tab(
                    child: Text('CHATS'),
                  ),
                  Tab(
                    child: Text('STATUS'),
                  ),
                  Tab(
                    child: Text('CALL'),
                  ),

                ],
              ),
              title: Text('WhatsApp'),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: (){
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (BuildContext context) => new SearchUser())
                  );
                    //showSearch(context: context, delegate: DataSearch());
                  },
                ),
                IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: (){
                    SearchUser();
                  },
                ),

              ],
            ),
//            drawer: new  Drawer(
//              child: ListView(
//                children: <Widget>[
//                  Column(
//                    children: <Widget>[
//                      Container(
//                        height: 150,
//                        decoration: new BoxDecoration(
//                          color: Colors.teal,
////                          image: new DecorationImage(
////                            image: new AssetImage(
////                              "images/wallback.jpg",
////                            ),
////                            fit: BoxFit.fill,
////                          )
//                        ),
//                        child: Row(
//                          children: <Widget>[
//                            Text('    '),
//                            SizedBox(
//                              height: 50.0,
//                            ),
//                            Image.asset(
//                              "images/atl.png",
//                              height: 100,
//                              width: 100.0,
//                            ),
//                            SizedBox(
//                              height: 20.0,
//                            ),
////                          Text('UNIVERSITY OF CAPE COAST',
////                          style: TextStyle(
////                            color: Colors.white,
////                            fontWeight: FontWeight.w900
////                          ),)
//                          ],
//                        ),
//                      ),
//                    ],
//                  ),
//                  new ListTile(
//                    leading: Icon(
//                      Icons.home,
//                      color: Colors.blueGrey,
//                    ),
//                    title: new Text('Home'),
//                    onTap: () {
//                      Navigator.of(context).pop();
//                      // Navigator.push(
//                      //context,
//                      //new MaterialPageRoute(
//                      // builder: (BuildContext context) => new main()));
//                    },
//                  ),
//                  Divider(),
//                  new ListTile(
//                    leading: Icon(
//                      Icons.account_circle,
//                      color: Colors.blueGrey,
//                    ),
//                    title: new Text('Profile'),
//                    onTap: () {
//                      // Navigator.of(context).pop();
//                      //                  Navigator.push(
//                      //                      context,
//                      //                      new MaterialPageRoute(
//                      //                          builder: (BuildContext context) => new uccmap())
//                      //                  );
//                    },),
//                  Divider(),
//                  Text('      Communicate'),
//                  new ListTile(
//                    leading: Icon(
//                      Icons.share,
//                      color: Colors.blueGrey,
//                    ),
//                    title: new Text('Share'),
//                    onTap: () {
//                      Navigator.of(context).pop();
////                Navigator.push(
////                    context,
////                    new MaterialPageRoute(
////                        builder: (BuildContext context) => new AboutPage()));
//                    },
//                  ),
//                  new ListTile(
//                    leading: Icon(
//                      Icons.send,
//                      color: Colors.blueGrey,
//                    ),
//                    title: new Text('Feedback'),
//                    onTap: () {
//                      //_feedback();
//                    },
//                  ),
//                  Divider(),
//                  Text('      Extra'),
//                  new ListTile(
//                    leading: Icon(
//                      Icons.lightbulb_outline,
//                      color: Colors.blueGrey,
//                    ),
//                    title: new Text('About'),
//                    onTap: () {
//                      //Navigator.of(context).pop();
////                  Navigator.push(
////                      context,
////                      new MaterialPageRoute(
////                          builder: (BuildContext context) => new developer())
////                  );
//                    },
//                  ),
//                  Divider(),
//                ],
//              ),
//            ),
            body: TabBarView(
              children: <Widget>[
                ListView(
                  children: <Widget>[

                  ],
                ),

                ListView(
                  children: <Widget>[
                    new ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/developer.jpg'),
                      ),
                      title: Text('Emmanuel DSC Lead'),
                      subtitle: Text('Hi'),
                      trailing: Column(
                        children: <Widget>[
                          Text('\n7:00 PM'),
                          Expanded(
                            child: CircleAvatar(
                              radius: 12.0,
                              child: Text('1'),
                            ),
                          )
                        ],
                      ),
                      onTap: (){
                        page(context);
                      },
                    ),
                    Divider(),
                    new ListTile(
                      leading: CircleAvatar(
                        child: Text('H')
                      ),
                      title: Text('Henry'),
                      subtitle: Text('Hi Bro'),
                      trailing: Text('5:47 AM'),
                      onTap: (){

                      },
                    ),
                    Divider(),
                    new ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/nat.jpg'),
                      ),
                      title: Text('Nathan'),
                      subtitle: Text('Please kindly call me'),
                      trailing: Column(
                        children: <Widget>[
                          Text('\n11:00 PM'),
                          Expanded(
                            child: CircleAvatar(
                              radius: 12.0,
                              child: Text('10'),
                            ),
                          )
                        ],
                      ),
                      onTap: (){

                      },
                    ),
                    Divider(),
                    new ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        child: Text('MUM'),
                      ),
                      title: Text('Mum'),
                      subtitle: Text('Miss You Son!'),
                      trailing: Column(
                        children: <Widget>[
                          Text('\n9:00 PM'),
                          Expanded(
                            child: CircleAvatar(
                              radius: 13.0,
                              child: Text('32'),
                            ),
                          )
                        ],
                      ),
                      onTap: (){

                      },
                    ),

                    Divider(),
                    new ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/emrys.jpg'),
                      ),
                      title: Text('Emrys'),
                      subtitle: Text('Mum travelled to New York for weekends.'),
                      trailing: Column(
                        children: <Widget>[
                          Text('\n3:00 AM'),
                          Expanded(
                            child: CircleAvatar(
                              radius: 13.0,
                              child: Text('58'),
                            ),
                          )
                        ],
                      ),
                      onTap: (){

                      },
                    ),
                    Divider(),

                    new ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        child:
                        Text('K.D')
                      ),
                      title: Text('Stephan'),
                      subtitle: Text('How do you do?'),
                      trailing: Text('7:00 PM'),
                      onTap: (){

                      },
                    ),
                    Divider(),
                    new ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('images/desucc.jpg'),
                      ),
                      title: Text('DSC - UCC'),
                      subtitle: Text('Hi Guys, next week, we will be Mastering GCP and AMP'),
                      trailing: Column(
                        children: <Widget>[
                          Text('\n7:00 PM'),
                          Expanded(
                            child: CircleAvatar(
                              radius: 13.0,
                              child: Text('5k'),
                            ),
                          )
                        ],
                      ),
                      onTap: (){

                      },
                    ),
                    Divider(),
                    new ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('images/ucc.jpg'),
                      ),
                      title: Text('University of Cape Coast'),
                      subtitle: Text('Hi fellow students, DSC is making great impact on our campus.'),
                      trailing: Column(
                        children: <Widget>[
                          Text('\n7:00 PM'),
                          Expanded(
                            child: CircleAvatar(
                              radius: 13.0,
                              child: Text('9k'),
                            ),
                          )
                        ],
                      ),
                      onTap: (){

                      },
                    ),

                    Divider(),
                    new ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/jane.jpg'),
                      ),
                      title: Text('Jane Waitara'),
                      subtitle: Text('Hi '),
                      trailing: Column(
                        children: <Widget>[
                          Text('\n8:40 PM'),
                          Expanded(
                            child: CircleAvatar(
                              radius: 13.0,
                              child: Text('51'),
                            ),
                          )
                        ],
                      ),
                      onTap: (){
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (BuildContext context) => new SearchUser())
                        );
                      },
                    ),
                    Divider(),
                    new ListTile(
                      leading: CircleAvatar(
                          child: Text('H')
                      ),
                      title: Text('Henry'),
                      subtitle: Text('Hi Bro'),
                      trailing: Column(
                        children: <Widget>[
                          Text('\n8:40 PM'),
                          Expanded(
                            child: CircleAvatar(
                              radius: 13.0,
                              child: Text('11'),
                            ),
                          )
                        ],
                      ),
                      onTap: (){

                      },
                    ),
                    Divider(),
                    new ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/nat.jpg'),
                      ),
                      title: Text('Nathan'),
                      subtitle: Text('Please kindly call me'),
                      trailing: Column(
                        children: <Widget>[
                          Text('\n7:00 PM'),
                          Expanded(
                            child: CircleAvatar(
                              radius: 13.0,
                              child: Text('67'),
                            ),
                          )
                        ],
                      ),
                      onTap: (){

                      },
                    ),
                    Divider(),
                    new ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/esther.jpg'),
                      ),
                      title: Text('Eric'),
                      subtitle: Text('Will See you at DSC'),
                      trailing: Column(
                        children: <Widget>[
                          Text('\n7:00 PM'),
                          Expanded(
                            child: CircleAvatar(
                              radius: 13.0,
                              child: Text('81'),
                            ),
                          )
                        ],
                      ),
                      onTap: (){

                      },
                    ),

                    Divider(),
                    new ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/emrys.jpg'),
                      ),
                      title: Text('Emrys'),
                      subtitle: Text('Hi Dearest'),
                      trailing: Column(
                        children: <Widget>[
                          Text('\n7:00 PM'),
                          Expanded(
                            child: CircleAvatar(
                              radius: 13.0,
                              child: Text('17'),
                            ),
                          )
                        ],
                      ),
                      onTap: (){

                      },
                    ),
                    Divider(),

                    new ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/developer.jpg'),
                      ),
                      title: Text('CSC 300'),
                      subtitle: Text('How do you do?'),
                      trailing: Column(
                        children: <Widget>[
                          Text('\n7:00 PM'),
                          Expanded(
                            child: CircleAvatar(
                              radius: 13.0,
                              child: Text('87'),
                            ),
                          )
                        ],
                      ),
                      onTap: (){

                      },
                    ),
                    Divider(),
                    new ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/desucc.jpg'),
                      ),
                      title: Text('DSC - UCC'),
                      subtitle: Text('Hi Guys, next week, we will be Mastering Bootstrap'),
                      trailing: Text('7:00 PM'),
                      onTap: (){

                      },
                    ),
                    Divider(),
                    new ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/developer.jpg'),
                      ),
                      title: Text('Emmanuel Patrova'),
                      subtitle: Text('Hi'),
                      trailing: Column(
                        children: <Widget>[
                          Text('\n7:00 PM'),
                          Expanded(
                            child: CircleAvatar(
                              radius: 13.0,
                              child: Text('7k'),
                            ),
                          )
                        ],
                      ),
                      onTap: (){

                      },
                    ),
                    Divider(),
                    new ListTile(
                      leading: CircleAvatar(
                          child: Text('H')
                      ),
                      title: Text('Henry'),
                      subtitle: Text('Hi Bro'),
                      trailing: Text('5:47 AM'),
                      onTap: (){

                      },
                    ),
                    Divider(),
                    new ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/nat.jpg'),
                      ),
                      title: Text('Nathan'),
                      subtitle: Text('Please kindly call me'),
                      trailing: Text('7:50 PM'),
                      onTap: (){

                      },
                    ),
                    Divider(),
                    new ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/esther.jpg'),
                      ),
                      title: Text('Stephanie'),
                      subtitle: Text('Will See you at DSC'),
                      trailing: Column(
                        children: <Widget>[
                          Text('\n7:00 PM'),
                          Expanded(
                            child: CircleAvatar(
                              radius: 13.0,
                              child: Text('52'),
                            ),
                          )
                        ],
                      ),
                      onTap: (){

                      },
                    ),

                    Divider(),
                    new ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/emrys.jpg'),
                      ),
                      title: Text('Emrys'),
                      subtitle: Text('How do you do?'),
                      trailing: Column(
                        children: <Widget>[
                          Text('\n7:00 PM'),
                          Expanded(
                            child: CircleAvatar(
                              radius: 13.0,
                              child: Text('48'),
                            ),
                          )
                        ],
                      ),
                      onTap: (){

                      },
                    ),

                    new ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        child:
                        Text('J.A')
                      ),
                      title: Text('JulieAndy'),
                      subtitle: Text('Miss you dear'),
                      trailing: Column(
                        children: <Widget>[
                          Text('\n7:00 PM'),
                          Expanded(
                            child: CircleAvatar(
                              radius: 13.0,
                              child: Text('71'),
                            ),
                          )
                        ],
                      ),
                      onTap: (){

                      },
                    ),
                    Divider(),
                    new ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/jane.jpg'),
                      ),
                      title: Text('Jane Waitara'),
                      subtitle: Text('How is Ghana?'),
                      trailing: Column(
                        children: <Widget>[
                          Text('\n7:00 PM'),
                          Expanded(
                            child: CircleAvatar(
                              radius: 13.0,
                              child: Text('45'),
                            ),
                          )
                        ],
                      ),
                      onTap: (){

                      },
                    ),



                  ],

                ),

//Status ******************************************************************************************************
                ListView(
                  children: <Widget>[
                    ListTile(
                      leading: CircleAvatar(
                        child: Icon(Icons.account_circle,)
                      ),
                      title: Text('My Status'),
                      subtitle: Text('Tap to add status update'),
                    ),
                    Divider(),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      color: Colors.grey,
                      child: Text('     Recent updates', ),
                    ),
                    Divider(),

                    new ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/developer.jpg'),
                      ),
                      title: Text('Emmanuel DSC Lead'),
                      subtitle: Text('14 minutes ago'),
                      onTap: (){

                      },
                    ),
                    Divider(),
                    new ListTile(
                      leading: CircleAvatar(
                          child: Text('H')
                      ),
                      title: Text('Henry'),
                      subtitle: Text('44 minutes ago'),
                      onTap: (){

                      },
                    ),
                    Divider(),
                    new ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/nat.jpg'),
                      ),
                      title: Text('Nathan'),
                      subtitle: Text('5 minutes ago'),
                      onTap: (){

                      },
                    ),
                    Divider(),
                    new ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        child: Text('EA'),
                      ),
                      title: Text('Emmanuella'),
                      subtitle: Text('53 minutes ago'),
                      onTap: (){

                      },
                    ),

                    Divider(),
                    new ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/emrys.jpg'),
                      ),
                      title: Text('Emrys'),
                      subtitle: Text('13 minutes ago'),
                      onTap: (){

                      },
                    ),

                    new ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/developer.jpg'),
                      ),
                      title: Text('CSC 300'),
                      subtitle: Text('51 minutes ago'),
                      onTap: (){

                      },
                    ),
                    Divider(),
                    new ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/dsc.png'),
                      ),
                      title: Text('DSC - UCC'),
                      subtitle: Text('37 minutes ago'),
                      onTap: (){

                      },
                    ),
                    Divider(),
                    new ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/developer.jpg'),
                      ),
                      title: Text('Emmanuel'),
                      subtitle: Text('9 minutes ago'),
                      onTap: (){

                      },
                    ),
                    Divider(),
                    new ListTile(
                      leading: CircleAvatar(
                          child: Text('H')
                      ),
                      title: Text('Henry'),
                      subtitle: Text('27 minutes ago'),
                      onTap: (){

                      },
                    ),
                    Divider(),
                    new ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/nat.jpg'),
                      ),
                      title: Text('Nathan'),
                      subtitle: Text('44 minutes ago'),
                      onTap: (){

                      },
                    ),
                    Divider(),
                    new ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        child: Text('T'),
                      ),
                      title: Text('Theodore'),
                      subtitle: Text('76 minutes ago'),
                      onTap: (){

                      },
                    ),
                  ],

                ),


                //Call ****************************************************************************
                ListView(
                  children: <Widget>[
                    new ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/developer.jpg'),
                      ),
                      title: Text('Emmanuel DSC Lead'),
                      subtitle: Row(
                        children: <Widget>[
                          Icon(Icons.call_received, color: Colors.teal, size: 20.0,),
                          Text(' October 12, 8:45 PM'),
                        ],
                      ),
                      trailing: Icon(Icons.videocam, color: Colors.deepOrange,),
                      onTap: (){

                      },
                    ),
                    Divider(),
                    new ListTile(
                      leading: CircleAvatar(
                          child: Text('H')
                      ),
                      title: Text('Henry'),
                      subtitle: Row(
                        children: <Widget>[
                          Icon(Icons.call_received, color: Colors.red, size: 20.0,),
                          Text(' October 12, 8:45 PM'),
                        ],
                      ),
                      trailing: Icon(Icons.call, color: Colors.deepOrange,),
                      onTap: (){

                      },
                    ),
                    Divider(),
                    new ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/nat.jpg'),
                      ),
                      title: Text('Nathan'),
                      subtitle: Row(
                        children: <Widget>[
                          Icon(Icons.call_made, color: Colors.teal, size: 20.0,),
                          Text(' October 12, 8:45 PM'),
                        ],
                      ),
                      trailing: Icon(Icons.videocam, color: Colors.deepOrange,),
                      onTap: (){

                      },
                    ),
                    Divider(),
                    new ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        child: Text('S'),
                      ),
                      title: Text('Stephen'),
                      subtitle: Row(
                        children: <Widget>[
                          Icon(Icons.call_received, color: Colors.red, size: 20.0,),
                          Text(' October 12, 8:45 PM'),
                        ],
                      ),
                      trailing: Icon(Icons.call, color: Colors.deepOrange,),
                      onTap: (){

                      },
                    ),

                    Divider(),
                    new ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/emrys.jpg'),
                      ),
                      title: Text('Emrys'),
                      subtitle: Row(
                        children: <Widget>[
                          Icon(Icons.call_received, color: Colors.red, size: 20.0,),
                          Text(' October 12, 8:45 PM'),
                        ],
                      ),
                      trailing: Icon(Icons.videocam, color: Colors.deepOrange,),
                      onTap: (){

                      },
                    ),

                    new ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/developer.jpg'),
                      ),
                      title: Text('CSC 300'),
                      subtitle: Row(
                        children: <Widget>[
                          Icon(Icons.call_received, color: Colors.red, size: 20.0,),
                          Text(' October 12, 8:45 PM'),
                        ],
                      ),
                      trailing: Icon(Icons.videocam, color: Colors.deepOrange,),
                      onTap: (){

                      },
                    ),
                    Divider(),
                    new ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/dsc.png'),
                      ),
                      title: Text('DSC - UCC'),
                      subtitle: Row(
                        children: <Widget>[
                          Icon(Icons.call_received, color: Colors.teal, size: 20.0,),
                          Text(' October 12, 8:45 PM'),
                        ],
                      ),
                      trailing: Icon(Icons.videocam, color: Colors.deepOrange,),
                      onTap: (){

                      },
                    ),
                    Divider(),
                    new ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('images/ucc.jpg'),
                      ),
                      title: Text('University of Cape Coast'),
                      subtitle: Row(
                        children: <Widget>[
                          Icon(Icons.call_received, color: Colors.red, size: 20.0,),
                          Text(' October 12, 8:45 PM'),
                        ],
                      ),
                      trailing: Icon(Icons.call, color: Colors.deepOrange,),
                      onTap: (){

                      },
                    ),
                    Divider(),



                    new ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        child: Text('F'),
                      ),
                      title: Text('Francis'),
                      subtitle: Row(
                        children: <Widget>[
                          Icon(Icons.call_received, color: Colors.red, size: 20.0,),
                          Text(' October 12, 8:45 PM'),
                        ],
                      ),
                      trailing: Icon(Icons.call, color: Colors.deepOrange,),
                      onTap: (){

                      },
                    ),
                    Divider(),
                    new ListTile(
                      leading: CircleAvatar(
                          child: Text('H')
                      ),
                      title: Text('Henry'),
                      subtitle: Row(
                        children: <Widget>[
                          Icon(Icons.call_received, color: Colors.red, size: 20.0,),
                          Text(' October 12, 8:45 PM'),
                        ],
                      ),
                      trailing: Icon(Icons.call, color: Colors.deepOrange,),
                      onTap: (){

                      },
                    ),
                    Divider(),
                    new ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/nat.jpg'),
                      ),
                      title: Text('Nathan'),
                      subtitle: Row(
                        children: <Widget>[
                          Icon(Icons.call_received, color: Colors.red, size: 20.0,),
                          Text(' October 12, 8:45 PM'),
                        ],
                      ),
                      trailing: Icon(Icons.call, color: Colors.deepOrange,),
                      onTap: (){

                      },
                    ),
                    Divider(),
                    new ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/esther.jpg'),
                      ),
                      title: Text('Esther'),
                      subtitle: Row(
                        children: <Widget>[
                          Icon(Icons.call_received, color: Colors.red, size: 20.0,),
                          Text(' October 12, 8:45 PM'),
                        ],
                      ),
                      trailing: Icon(Icons.call, color: Colors.deepOrange,),
                      onTap: (){

                      },
                    ),

                    Divider(),
                    new ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/emrys.jpg'),
                      ),
                      title: Text('Emrys'),
                      subtitle: Row(
                        children: <Widget>[
                          Icon(Icons.call_received, color: Colors.red, size: 20.0,),
                          Text(' October 12, 8:45 PM'),
                        ],
                      ),
                      trailing: Icon(Icons.videocam, color: Colors.deepOrange,),
                      onTap: (){

                      },
                    ),

                    new ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/developer.jpg'),
                      ),
                      title: Text('CSC 300'),
                      subtitle: Row(
                        children: <Widget>[
                          Icon(Icons.call_received, color: Colors.red, size: 20.0,),
                          Text(' October 12, 8:45 PM'),
                        ],
                      ),
                      trailing: Icon(Icons.call, color: Colors.deepOrange,),
                      onTap: (){

                      },
                    ),
                    Divider(),
                    new ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/dsc.png'),
                      ),
                      title: Text('DSC - UCC'),
                      subtitle: Row(
                        children: <Widget>[
                          Icon(Icons.call_received, color: Colors.red, size: 20.0,),
                          Text(' October 12, 8:45 PM'),
                        ],
                      ),
                      trailing: Icon(Icons.videocam, color: Colors.deepOrange,),
                      onTap: (){

                      },
                    ),
                    Divider(),
                    new ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/developer.jpg'),
                      ),
                      title: Text('Emmanuel Patrova'),
                      subtitle: Row(
                        children: <Widget>[
                          Icon(Icons.call_received, color: Colors.red, size: 20.0,),
                          Text(' October 12, 8:45 PM'),
                        ],
                      ),
                      trailing: Icon(Icons.call, color: Colors.deepOrange,),
                      onTap: (){

                      },
                    ),
                    Divider(),
                    new ListTile(
                      leading: CircleAvatar(
                          child: Text('H')
                      ),
                      title: Text('Henry'),
                      subtitle: Row(
                        children: <Widget>[
                          Icon(Icons.call_received, color: Colors.red, size: 20.0,),
                          Text(' October 12, 8:45 PM'),
                        ],
                      ),
                      trailing: Icon(Icons.call, color: Colors.deepOrange,),
                      onTap: (){

                      },
                    ),
                    Divider(),
                    new ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/nat.jpg'),
                      ),
                      title: Text('Nathan'),
                      subtitle: Row(
                        children: <Widget>[
                          Icon(Icons.call_received, color: Colors.red, size: 20.0,),
                          Text(' October 12, 8:45 PM'),
                        ],
                      ),
                      trailing: Icon(Icons.videocam, color: Colors.deepOrange,),
                      onTap: (){

                      },
                    ),
                    Divider(),
                    new ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/esther.jpg'),
                      ),
                      title: Text('Esther'),
                      subtitle:Row(
                        children: <Widget>[
                          Icon(Icons.call_received, color: Colors.red, size: 20.0,),
                          Text(' October 12, 8:45 PM'),
                        ],
                      ),
                      trailing: Icon(Icons.videocam, color: Colors.deepOrange,),
                      onTap: (){

                      },
                    ),

                    Divider(),
                    new ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/owl.jpg'),
                      ),
                      title: Text('Emrys'),
                      subtitle: Row(
                        children: <Widget>[
                          Icon(Icons.call_received, color: Colors.red, size: 20.0,),
                          Text(' October 12, 8:45 PM'),
                        ],
                      ),
                      trailing: Icon(Icons.call, color: Colors.deepOrange,),
                      onTap: (){

                      },
                    ),

                    new ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/developer.jpg'),
                      ),
                      title: Text('CSC 300'),
                      subtitle: Row(
                        children: <Widget>[
                          Icon(Icons.call_received, color: Colors.red, size: 20.0,),
                          Text(' October 12, 8:45 PM'),
                        ],
                      ),
                      trailing: Icon(Icons.call, color: Colors.deepOrange,),
                      onTap: (){

                      },
                    ),
                    Divider(),
                    new ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/dsc.png'),
                      ),
                      title: Text('DSC - UCC'),
                      subtitle: Row(
                        children: <Widget>[
                          Icon(Icons.call_received, color: Colors.red, size: 20.0,),
                          Text(' October 12, 8:45 PM'),
                        ],
                      ),
                      trailing: Icon(Icons.call, color: Colors.deepOrange,),
                      onTap: (){

                      },
                    ),
                  ],

                ),

              ],


            ),
              floatingActionButton: FloatingActionButton(
                backgroundColor: Colors.deepOrange,
                onPressed: (){
                    var alertDialog = AlertDialog(
                      title: Text('Developer Student Club\nUniversity of Cape Coast, Ghana\nDSC Lead: Emmanuel Ametepee...'),
                      content: LinearProgressIndicator(),
                    );
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return alertDialog;
                        });
                },
                tooltip: 'Increment',
                child: Icon(Icons.message, color: Colors.white,),
              ),
          ),
        ));
  }

  void page(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return new Scaffold(
            appBar: new AppBar(
              title: new Text('Download Status'),
            ),
            body:
            Container(
                child:
                ListView(
                  children: <Widget>[
                    new ListTile(
                      leading: Image.asset('images/atlas.jpg'),
                      trailing: Icon(
                        Icons.cloud_download,
                        color: Colors.black,
                      ),
                      title: Column(
                        children: <Widget>[
                          new Text('Atlas of the World History'),
                          //LinearProgressIndicator()
                        ],
                      ),
                      onTap: () {
                        var alertDialog = AlertDialog(
                          title: Text('Downloading...'),
                          content: LinearProgressIndicator(),
                        );
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return alertDialog;
                            });
                      },
                    ),

                  ],
                )

            ),

          );
        }
    );
  }

}

