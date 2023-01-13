import 'package:almithy/drawer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const TextStyle klabeltextstyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w400,
);
void main(){
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(
      ),
      home: Scaffold(
        backgroundColor: Colors.black,
        drawer: UserDrawer(),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Text('Allmity'),
        ),
        body: ListView(
          children: [
            InfoCard(
              cardcolor: Colors.red,
              cardicon: Icon(Icons.library_books_sharp),
              cardtitle: 'Study Material',
              catdsubtitle: 'PPTs, PDFs, and more...',
            ),
            InfoCard(
              cardcolor: Colors.orange,
              cardicon: Icon(Icons.padding),
              cardtitle: 'Portal',
              catdsubtitle: 'SLCM, Hostel Booking Portal, SIS Portal etc.',
            ),
            InfoCard(
              cardcolor: Colors.orangeAccent,
              cardicon: Icon(Icons.group),
              cardtitle: 'Clubs / Student Projects / Groups',
              catdsubtitle: 'Get to know about all the clubs, student projects and groups in Manipal',
            ),
            InfoCard(
              cardcolor: Color(0XFF3DA1AA),
              cardicon: Icon(FontAwesomeIcons.car),
              cardtitle: 'Cab Sharing',
              catdsubtitle: 'Because we 🧡 the environment.',
            ),
            InfoCard(
              cardcolor: Color(0XFF3D8D83),
              cardicon: Icon(FontAwesomeIcons.calendar),
              cardtitle: 'Events',
              catdsubtitle: 'Register and participate in events, directly from the Allmity app!',
            ),
            InfoCard(
              cardcolor: Colors.blueAccent,
              cardicon: Icon(FontAwesomeIcons.gamepad),
              cardtitle: 'Games',
              catdsubtitle: 'Wanna take a break?',
            ),
            InfoCard(
              cardcolor: Colors.blue,
              cardicon: Icon(Icons.mic),
              cardtitle: 'The Allmity Podcast',
              catdsubtitle: 'Chill podcast, with a lot of fun moments :)',
            ),
          ],
        )
      ),
    );
  }
}

class InfoCard extends StatelessWidget {

  final Icon cardicon;
  final String cardtitle;
  final String catdsubtitle;
  final Color cardcolor;
  const InfoCard({
    Key? key, required this.cardicon, required this.cardtitle, required this.catdsubtitle, required this.cardcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: cardcolor
      ),
      height: 110,
      width: double.infinity,
      child: Column(
        children: [
          ListTile(
            horizontalTitleGap: 0.0,
            leading: cardicon,
            title: Text(cardtitle,style: klabeltextstyle,),
          ),
          Container(
            margin: EdgeInsets.only(left: 17, top: 5),
            alignment: Alignment.centerLeft,
            child: Text(catdsubtitle),
          )
        ],
      )
    );
  }
}
