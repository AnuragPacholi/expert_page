import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ExpertsPage extends StatefulWidget {
  @override
  _DeliveryPageState createState() => _DeliveryPageState();
}

class _DeliveryPageState extends State<ExpertsPage>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Vx.red600,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: VStack([
          VxBox().size(20, 2).white.make(),
          5.heightBox,
          VxBox().size(28, 2).white.make(),
          5.heightBox,
          VxBox().size(15, 2).white.make(),
        ]).pOnly(left: 16, top: 15),
      ),
      body: VStack([
        VxBox(
                child: [
          Row(
            children: [
              Text(
                'Ask The Experts !!',
                style: TextStyle(
                    fontFamily: GoogleFonts.comfortaa().fontFamily,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Vx.white),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ].column())
            .alignTopCenter
            .makeCentered()
            .h(35),
        VxBox(
                child: [
          Row(
            children: [
              VxBox()
                  .size(300, 135)
                  // .neumorphic(
                  //     color: Vx.gray100, elevation: 0) // Comment this line.
                  .bgImage(DecorationImage(
                    image: AssetImage('assets/expert.png'),
                  ))
                  .alignCenterRight
                  .make(),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ].column())
            .padding(Vx.mV0)
            .alignTopCenter
            .makeCentered()
            .h(145),
        VxBox(
                child: [
          Row(
            children: [
              Text(
                'Need Advice? Ask Our Experts !!',
                style: TextStyle(
                    fontFamily: GoogleFonts.comfortaa().fontFamily,
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Vx.white),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ].column())
            .alignTopCenter
            .makeCentered()
            .h(35),
        ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          child: VxBox(
            child: VStack([
              "Available Experts -"
                  .richText
                  .red400
                  .bold
                  .size(18)
                  .make()
                  .h(28)
                  .centered(),
              Productcard(
                title: "Dr. Sunil Kumar",
                subtitle: "+91-802-221-XXXX",
                imageadd: "assets/sunil.jpg",
              ),
              Productcard(
                title: "Mr. S.Jay Kumar",
                subtitle: "+91-480-312-XXXX",
                imageadd: "assets/jaykumar.jpg",
              ),
              Productcard(
                title: "Mr. Kapil Kumar Sharma",
                subtitle: "+91-112-617-XXXX",
                imageadd: "assets/kapil.jpg",
              ),
              Productcard(
                title: "Mr. Mehul Makhani",
                subtitle: "+91-802-221-XXXX",
                imageadd: "assets/mehul.jpg",
              ),
              Productcard(
                title: "Dr. Anirudh Garg",
                subtitle: "+91-480-312-XXXX",
                imageadd: "assets/anirudh.jpg",
              ),
              Productcard(
                title: "Dr. Ganesh Prajapati",
                subtitle: "+91-112-617-XXXX",
                imageadd: "assets/ganesh.jpg",
              ),
            ]).scrollVertical().p12(),
          ).gray100.make(),
        ).expand()
      ]),
    );
  }
}

// Product Cards.
class Productcard extends StatelessWidget {
  final String title, subtitle, imageadd;

  Productcard({Key key, this.title, this.subtitle, this.imageadd})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HStack([
      Image.asset(imageadd).wh(85, 80).cornerRadius(20),
      20.widthBox,
      VStack(
        [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
            child: Column(
              children: [
                title.text.bold.red600.size(18).align(TextAlign.left).make(),
                3.heightBox,
                subtitle.text.red400.size(16).make(),
                5.heightBox,
                [
                  Icon(
                    Icons.call_outlined,
                    color: Vx.red500,
                    size: 25,
                  ),
                  WidthBox(15),
                  Icon(
                    Icons.message_outlined,
                    color: Vx.red500,
                    size: 25,
                  ),
                  WidthBox(15),
                  Icon(
                    Icons.video_call_outlined,
                    color: Vx.red500,
                    size: 27,
                  ),
                  WidthBox(15),
                  Icon(
                    Icons.email_outlined,
                    color: Vx.red500,
                    size: 25,
                  ),
                  WidthBox(15),
                  Icon(
                    Icons.report_outlined,
                    color: Vx.red500,
                    size: 25,
                  ),
                ].row(),
              ],
            ),
          )
        ],
        crossAlignment: CrossAxisAlignment.start,
      ).expand()
    ]).backgroundColor(Vx.gray200).cornerRadius(15).py(10);
  }
}
