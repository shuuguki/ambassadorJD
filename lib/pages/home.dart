import 'package:flutter/material.dart';
import 'package:hiringpage/pages/ambassadorApplication.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 19, 19, 19),
        body: (SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    Color.fromARGB(255, 19, 19, 19),
                    BlendMode.color,
                  ),
                  child: Image.network(
                    'https://cdn.discordapp.com/attachments/1208154401248645152/1208154443078705233/greekrow.jpg?ex=65e24081&is=65cfcb81&hm=069476d8715690ba2116f06b65e7ab313e59861009799e83934ec6785f503b16&',
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * .5,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                Color.fromARGB(80, 1, 1, 1),
                                Color.fromARGB(80, 1, 1, 1),
                              ])),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * .5,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                Color.fromARGB(80, 1, 1, 1),
                                Color.fromARGB(255, 19, 19, 19)
                              ])),
                          child: Text(''),
                        ),
                      ],
                    )),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * .4),
                    Text('Be a Leader on Campus',
                        style: Theme.of(context).textTheme.headline1,
                        textAlign: TextAlign.center),
                    SizedBox(height: MediaQuery.of(context).size.height * .02),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ambassadorApplication()));
                        },
                        child: Text('Apply Today!'),
                        style: Theme.of(context).elevatedButtonTheme.style)
                  ],
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .05),
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.headline1,
                children: <TextSpan>[
                  TextSpan(
                      text:
                          "Two Brands."), // This part inherits the default style
                  TextSpan(
                    text: 'One Mission',
                    style: TextStyle(
                        color: Color.fromARGB(
                            255, 202, 168, 245)), // This part will be purple
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .02),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 202, 168, 245)),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Text('FatFrat',
                            style: Theme.of(context).textTheme.headline2),
                        Image.network(
                          'https://cdn.discordapp.com/attachments/1208154401248645152/1208294815666536478/FatFrat_Logo_new_purple.png?ex=65e2c33d&is=65d04e3d&hm=b4ab7b7e6d95bff9f920352f6d49c5fc36c3e04c60fad0345f2e2e5fd63f34c4&',
                          width: MediaQuery.of(context).size.width *
                              0.3, // 80% of screen width
                          height: MediaQuery.of(context).size.height *
                              0.4, // 30% of screen height
                          fit: BoxFit.cover,
                        ),
                      ],
                    )),
                SizedBox(width: MediaQuery.of(context).size.width * .04),
                Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 202, 168, 245)),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Text('CampusJam',
                            style: Theme.of(context).textTheme.headline2),
                        Image.network(
                          'https://cdn.discordapp.com/attachments/1208154401248645152/1208294944620421172/campus_jam_logo_no_background.png?ex=65e2c35b&is=65d04e5b&hm=071630c23339912c2ef8141874e70b76a1a46ac678203d1627c1c869788c0be9&',
                          width: MediaQuery.of(context).size.width *
                              0.3, // 80% of screen width
                          height: MediaQuery.of(context).size.height *
                              0.4, // 30% of screen height
                          fit: BoxFit.cover,
                        ),
                      ],
                    ))
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .05),
            Container(
              width: MediaQuery.of(context).size.width *
                  0.64, // 80% of screen width
              child: Text(
                  'FatFrat launched in Fall of 2023 with one goal: Streamline the custom apparel process. In order to do so, we focus on outstanding customer service, unique designs, and superior quality garments. In 2024, we are focused on scaling to every campus across America and would love to have you along for the journey ',
                  textAlign: TextAlign.center),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .1),
            Container(
              child: Text('Am I a Good Fit',
                  style: Theme.of(context).textTheme.headline1),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .02),
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.bodyText2,
                children: <TextSpan>[
                  TextSpan(
                      text:
                          "We are looking for people who exemplify our "), // This part inherits the default style
                  TextSpan(
                    text: 'Core Values.',
                    style: TextStyle(
                        color: Color.fromARGB(
                            255, 202, 168, 245)), // This part will be purple
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .05),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width *
                      0.2, // 80% of screen width
                  height: MediaQuery.of(context).size.height *
                      0.3, // 30% of screen height
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 202, 168, 245)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.height * .02),
                      Text('Creative Curiosity',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headline2),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * .02),
                      Text(
                          'Be curious about the world around you. Learn from it.',
                          textAlign: TextAlign.center)
                    ],
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * .02),
                Container(
                  width: MediaQuery.of(context).size.width *
                      0.2, // 80% of screen width
                  height: MediaQuery.of(context).size.height *
                      0.3, // 30% of screen height
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 202, 168, 245)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.height * .02),
                      Text('Competitive Greatness',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headline2),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * .02),
                      Text(
                          'Be your best when your best is needed. Enjoy a hard challenge',
                          textAlign: TextAlign.center)
                    ],
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * .02),
                Container(
                  width: MediaQuery.of(context).size.width *
                      0.2, // 80% of screen width
                  height: MediaQuery.of(context).size.height *
                      0.3, // 30% of screen height
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 202, 168, 245)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.height * .02),
                      Text('Proactive Diligence',
                          style: Theme.of(context).textTheme.headline2,
                          textAlign: TextAlign.center),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * .02),
                      Text('Always plan ahead. Care about the little things.',
                          textAlign: TextAlign.center)
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .1),
            Text('Join Our Team', style: Theme.of(context).textTheme.headline1),
            SizedBox(height: MediaQuery.of(context).size.height * .1),
            Container(
              alignment: Alignment.center,
              height: 1.0, // Thickness of the line
              width: MediaQuery.of(context).size.width *
                  .64, // Make the container full width
              color: Color.fromARGB(255, 202, 168, 245), // Color of the line
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .05),
            Text('Campus Ambassador',
                style: Theme.of(context).textTheme.bodyText1),
            SizedBox(height: MediaQuery.of(context).size.height * .2),
          ],
        ))));
  }
}
