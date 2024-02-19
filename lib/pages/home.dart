import 'package:flutter/material.dart';
import 'package:hiringpage/pages/ambassadorApplication.dart';

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
                  colorFilter: const ColorFilter.mode(
                    Color.fromARGB(255, 19, 19, 19),
                    BlendMode.color,
                  ),
                  child: Image.asset(
                    'assets/images/landing.png',
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
                          decoration: const BoxDecoration(
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
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                Color.fromARGB(80, 1, 1, 1),
                                Color.fromARGB(255, 19, 19, 19)
                              ])),
                          child: const Text(''),
                        ),
                      ],
                    )),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (MediaQuery.of(context).size.width >= 500)
                      SizedBox(height: MediaQuery.of(context).size.height * .4),
                    Text('Be a Leader on Campus',
                        style: MediaQuery.of(context).size.width < 500
                            ? Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(fontSize: 70)
                            : Theme.of(context).textTheme.displayLarge,
                        textAlign: TextAlign.center),
                    SizedBox(height: MediaQuery.of(context).size.height * .02),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ambassadorApplication()));
                        },
                        style: Theme.of(context).elevatedButtonTheme.style,
                        child: const Text('Apply Today!',
                            style: TextStyle(color: Colors.black)))
                  ],
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .05),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.displayLarge,
                  children: const <TextSpan>[
                    TextSpan(
                        text:
                            "Two Brands. "), // This part inherits the default style
                    TextSpan(
                      text: 'One Mission',
                      style: TextStyle(
                          color: Color.fromARGB(
                              255, 202, 168, 245)), // This part will be purple
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .02),
            Wrap(
              alignment: WrapAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      width:
                          (MediaQuery.of(context).size.width < 450) ? 300 : 400,
                      height:
                          (MediaQuery.of(context).size.width < 450) ? 300 : 400,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 202, 168, 245)),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Text('FatFrat',
                              style: Theme.of(context).textTheme.displayMedium),
                          Image.asset(
                            "assets/images/Fatfrat.png",
                            width: (MediaQuery.of(context).size.width < 450)
                                ? 230
                                : 330,
                            fit: BoxFit.cover,
                          ),
                        ],
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      width:
                          (MediaQuery.of(context).size.width < 450) ? 300 : 400,
                      height:
                          (MediaQuery.of(context).size.width < 450) ? 300 : 400,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 202, 168, 245)),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Text('CampusJam',
                              style: Theme.of(context).textTheme.displayMedium),
                          Image.asset(
                            'assets/images/campus_jam.png',
                            width: (MediaQuery.of(context).size.width < 450)
                                ? 250
                                : 350,
                            fit: BoxFit.cover,
                          ),
                        ],
                      )),
                )
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .05),
            SizedBox(
              width: MediaQuery.of(context).size.width *
                  0.64, // 80% of screen width
              child: const Text(
                  'FatFrat launched in Fall of 2023 with one goal: Streamline the custom apparel process. In order to do so, we focus on outstanding customer service, unique designs, and superior quality garments. In 2024, we are focused on scaling to every campus across America and would love to have you along for the journey ',
                  textAlign: TextAlign.center),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .1),
            Container(
              child: Text('Am I a Good Fit',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.displayLarge),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: Theme.of(context).textTheme.bodyMedium,
                  children: const <TextSpan>[
                    TextSpan(
                        text:
                            "We are looking for people who exemplify our "), // This part inherits the default style
                    TextSpan(
                      text: 'Core Values.',
                      style: TextStyle(
                        color: Color.fromARGB(255, 202, 168, 245),
                      ), // This part will be purple
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .05),
            Wrap(
              alignment: WrapAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width:
                        (MediaQuery.of(context).size.width < 450) ? 250 : 300,
                    height:
                        (MediaQuery.of(context).size.width < 450) ? 250 : 300,
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
                            style: Theme.of(context).textTheme.displayMedium),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * .02),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: const Text(
                              'Be curious about the world around you. Learn from it.',
                              textAlign: TextAlign.center),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: (MediaQuery.of(context).size.width < 450)
                        ? 250
                        : 300, // 80% of screen width
                    height: (MediaQuery.of(context).size.width < 450)
                        ? 250
                        : 300, // 30% of screen height
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
                            style: Theme.of(context).textTheme.displayMedium),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * .02),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: const Text(
                              'Be your best when your best is needed. Enjoy a hard challenge',
                              textAlign: TextAlign.center),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: (MediaQuery.of(context).size.width < 450)
                        ? 250
                        : 300, // 80% of screen width
                    height: (MediaQuery.of(context).size.width < 450)
                        ? 250
                        : 300, // 30% of screen height
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
                            style: Theme.of(context).textTheme.displayMedium,
                            textAlign: TextAlign.center),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * .02),
                        const Text(
                            'Always plan ahead. Care about the little things.',
                            textAlign: TextAlign.center)
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .1),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Join Our Team',
                  textAlign: (MediaQuery.of(context).size.width < 450)
                      ? TextAlign.center
                      : null,
                  style: Theme.of(context).textTheme.displayLarge),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .1),
            Container(
              alignment: Alignment.center,
              height: 1.0, // Thickness of the line
              width: MediaQuery.of(context).size.width *
                  .64, // Make the container full width
              color:
                  const Color.fromARGB(255, 202, 168, 245), // Color of the line
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .05),
            Text('Campus Ambassador',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge),
            SizedBox(height: MediaQuery.of(context).size.height * .2),
          ],
        ))));
  }
}
