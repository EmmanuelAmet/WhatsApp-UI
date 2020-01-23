import 'package:flutter/material.dart';

class help extends StatefulWidget {
  @override
  _helpPageState createState() => new _helpPageState();
}

class _helpPageState extends State<help> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Help & FAQ')),
      body:
      getListView(),
    );

  }
  Widget getListView(){
    var listView = ListView(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(2),
          child: Container(margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            color: Colors.white70,
            child: Column(
              children: <Widget>[


                Column(
                  children: <Widget>[
                    new GestureDetector(
                      onTap: (){
                        now(context);
                      },
                      child:
                      new Card(
                        child: new Container(
                          padding: new EdgeInsets.all(25),
                          margin: EdgeInsets.only(top: 2.0),
                          child: new Row(
                            children: <Widget>[
                              //Icon(Icons.border_all, color: Colors.deepPurple,),
                              Expanded(
                                child:
                                new Text('Welcome to UCCMobile', textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                    color: Colors.black,
                                    //fontSize: 20,
                                  ),
                                ),
                              ),
                              Icon(Icons.arrow_forward, color: Colors.redAccent,),
                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
                Column(
                  children: <Widget>[
                    new GestureDetector(
                      onTap: (){
                        courses(context);
                      },
                      child:
                      new Card(
                        child: new Container(
                          padding: new EdgeInsets.all(25),
                          margin: EdgeInsets.only(top: 2.0),
                          child: new Row(
                            children: <Widget>[
                              //Icon(Icons.border_all, color: Colors.deepPurple,),
                              Expanded(
                                child:
                                new Text('How Can I View My Personal Details, Examination TimeTable, Registered Courses and others?', textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                    color: Colors.black,
                                    //fontSize: 20,
                                  ),
                                ),
                              ),
                              Icon(Icons.arrow_forward, color: Colors.redAccent,),
                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
                Column(
                  children: <Widget>[
                    new GestureDetector(
                      onTap: (){
                        wifi(context);
                      },
                      child:
                      new Card(
                        child: new Container(
                          padding: new EdgeInsets.all(25),
                          margin: EdgeInsets.only(top: 2.0),
                          child: new Row(
                            children: <Widget>[
                              //Icon(Icons.border_all, color: Colors.deepPurple,),
                              Expanded(
                                child:
                                new Text('How to Connect your Phone to Campus WIFI', textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                    color: Colors.black,
                                    //fontSize: 20,
                                  ),
                                ),
                              ),
                              Icon(Icons.arrow_forward, color: Colors.redAccent,),
                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
                Column(
                  children: <Widget>[
                    new GestureDetector(
                      onTap: (){
                        studentEmail(context);
                      },
                      child:
                      new Card(
                        child: new Container(
                          padding: new EdgeInsets.all(25),
                          margin: EdgeInsets.only(top: 2.0),
                          child: new Row(
                            children: <Widget>[
                              //Icon(Icons.border_all, color: Colors.deepPurple,),
                              Expanded(
                                child:
                                new Text('How Can I Get UCC Student Email', textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                    color: Colors.black,
                                    //fontSize: 20,
                                  ),
                                ),
                              ),
                              Icon(Icons.arrow_forward, color: Colors.redAccent,),
                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
                Column(
                  children: <Widget>[
                    new GestureDetector(
                      onTap: (){
                        studentEmailReset(context);
                      },
                      child:
                      new Card(
                        child: new Container(
                          padding: new EdgeInsets.all(25),
                          margin: EdgeInsets.only(top: 2.0),
                          child: new Row(
                            children: <Widget>[
                              //Icon(Icons.border_all, color: Colors.deepPurple,),
                              Expanded(
                                child:
                                new Text('How Can I Reset Student Password', textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                    color: Colors.black,
                                    //fontSize: 20,
                                  ),
                                ),
                              ),
                              Icon(Icons.arrow_forward, color: Colors.redAccent,),
                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
                Column(
                  children: <Widget>[
                    new GestureDetector(
                      onTap: (){
                        studentPortalReset(context);                      },
                      child:
                      new Card(
                        child: new Container(
                          padding: new EdgeInsets.all(25),
                          margin: EdgeInsets.only(top: 2.0),
                          child: new Row(
                            children: <Widget>[
                              //Icon(Icons.border_all, color: Colors.deepPurple,),
                              Expanded(
                                child:
                                new Text('How To Reset Student Portal Password', textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                    color: Colors.black,
                                    //fontSize: 20,
                                  ),
                                ),
                              ),
                              Icon(Icons.arrow_forward, color: Colors.redAccent,),
                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),

              ],
            ),

          ),
        ),

      ],
    );
    return listView;
  }

  void now(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return new Scaffold(
            appBar: new AppBar(
              title: new Text('Details'),
            ),
            body:
            Container(
              child:
              Card(
                  elevation: 5.0,
                  margin: EdgeInsets.all(15.0),
                  child:
                  new Container(
                    //height: 300,
                    margin: new EdgeInsets.all(10.0),
                    padding: new EdgeInsets.all(10.0),
                    child:
                    new Text('Thank you for downloading UCCMobile. This is an app for Students, Staff and Visitors. Explore our News, Events, Courses, Maps etc', textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 15.0,
                        fontStyle: FontStyle.normal,
                        color: Colors.black,
                        // fontSize: 20,
                      ),
                    ),
                  )


              ),

            ),

          );
        }
    );
  }

  void courses(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return new Scaffold(
            appBar: new AppBar(
              title: new Text('Details'),
            ),
            body:
            Container(
              child:
              Card(
                  elevation: 5.0,
                  margin: EdgeInsets.all(15.0),
                  child:
                  new Container(
                    //height: 300,
                    margin: new EdgeInsets.all(10.0),
                    padding: new EdgeInsets.all(10.0),
                    child:
                    new Text('Click on Student Portal at the home page of UCCMobile app. Enter your Student ID and its corresponding password. You will be able to view the following:\n -Personal Details\n -Registered Courses\n -Examination Results \n Semester Fees \n -Examination Time Table', textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 15.0,
                        fontStyle: FontStyle.normal,
                        color: Colors.black,
                        // fontSize: 20,
                      ),
                    ),
                  )


              ),

            ),

          );
        }
    );
  }


  void wifi(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return new Scaffold(
            appBar: new AppBar(
              title: new Text('Details'),
            ),
            body:
            Container(
              child:
              Card(
                  elevation: 5.0,
                  margin: EdgeInsets.all(15.0),
                  child:
                  new Container(
                    //height: 300,
                    margin: new EdgeInsets.all(10.0),
                    padding: new EdgeInsets.all(10.0),
                    child:
                    new Text('Put on your WIFI and wait for sometimes, a list of available WIFI will been shown depending on your Geographical Location on Campus.\nClick or Select the WIFI of your choice\nEnter the Corresponding password of that very WIFI\nClick on connect in order to get connected.', textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 15.0,
                        fontStyle: FontStyle.normal,
                        color: Colors.black,
                        // fontSize: 20,
                      ),
                    ),
                  )


              ),

            ),
          );
        }
    );
  }

  void studentEmail(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return new Scaffold(
            appBar: new AppBar(
              title: new Text('Details'),
            ),
            body:
            Container(
              child:
              Card(
                  elevation: 5.0,
                  margin: EdgeInsets.all(15.0),
                  child:
                  new Container(
                    //height: 300,
                    margin: new EdgeInsets.all(10.0),
                    padding: new EdgeInsets.all(10.0),
                    child:
                    new Text('In order to get a student email, please kindly go to MIS office and submit your personal email.\nA link will be sent to you via the personal email you submit\nThe link will be available for validation\nAfter 48 hours, the link will expire.', textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 15.0,
                        fontStyle: FontStyle.normal,
                        color: Colors.black,
                        // fontSize: 20,
                      ),
                    ),
                  )


              ),

            ),

          );
        }
    );
  }

  void studentEmailReset(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return new Scaffold(
            appBar: new AppBar(
              title: new Text('Details'),
            ),
            body:
            Container(
              child:
              Card(
                  elevation: 5.0,
                  margin: EdgeInsets.all(15.0),
                  child:
                  new Container(
                    //height: 300,
                    margin: new EdgeInsets.all(10.0),
                    padding: new EdgeInsets.all(10.0),
                    child:
                    new Text('For UCC Student Email Password Reset, kindly pass by MIS front desk for assistance', textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 15.0,
                        fontStyle: FontStyle.normal,
                        color: Colors.black,
                        // fontSize: 20,
                      ),
                    ),
                  )
              ),
            ),
          );
        }
    );
  }

  void studentPortalReset(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return new Scaffold(
            appBar: new AppBar(
              title: new Text('Details'),
            ),
            body:
            Container(
              child:
              Card(
                  elevation: 5.0,
                  margin: EdgeInsets.all(15.0),
                  child:
                  new Container(
                    //height: 500,
                    margin: new EdgeInsets.all(10.0),
                    padding: new EdgeInsets.all(10.0),
                    child:
                    new Text('- STEP  1: Login to your Student Portal. \n - STEP 2: On the interface, click on the FORGOT PASSWORD button. A link will be sent to you via your email \n STEP 3: Check your email in order to confirm it. \n -STEP 4: Create a new password using the following  criteria:. \n STEP 5: Then Login using your Student ID and the new password you created. \n \n PASSWORD CRITERIA \n *Should be at least 8 characters \n *Should have a capital letter. Eg: A,B,C,D,E,F,G,H, etc \n *Should have a number(s) Eg: 1,2,3,4,5, etc \n *Should have a special character or symbol Eg: !,@,#,\$,%,^,&,+,*,?, etc \n * Should have a lower case letter Eg: a,b,c,d,e,f,g,h, etc \n \n EXAMPLE OF A VALID PASSWORD: \n Stephen*254=+Theodore% \n \$grAce124`Emrys\n Francis*&\$Cynthia# \n %Ernestine\$!-?Benedicta \n Emmanuel_\$%#@CyhER?PaTrOvA? \n henRy*!<Nathan>%StePHaN^% \n JuLiEt(Andy)*#@Beatrice \n >Antoinett<?Esther?> \n<Freda</>Cape@2020.', textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 15.0,
                        fontStyle: FontStyle.normal,
                        color: Colors.black,
                        // fontSize: 20,
                      ),
                    ),
                  )


              ),

            ),

          );
        }
    );
  }
}
