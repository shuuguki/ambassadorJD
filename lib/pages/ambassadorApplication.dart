import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ambassadorApplication extends StatelessWidget {
  const ambassadorApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * .1),
                    Text('Campus Ambassador',
                        style: Theme.of(context).textTheme.headline1),
                    SizedBox(height: MediaQuery.of(context).size.height * .1),
                    ElevatedButton(
                        onPressed: () async {
                          final Uri url = Uri.parse(
                              'https://www.example.com'); // Your external link
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url,
                                mode: LaunchMode
                                    .externalApplication); // Opens in a new tab
                          } else {
                            print("Cannot launch $url");
                          }
                        },
                        child: Text('Submit Application'),
                        style: Theme.of(context).elevatedButtonTheme.style),
                    SizedBox(height: MediaQuery.of(context).size.height * .1),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.bodyText2,
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Role:',
                                style: Theme.of(context).textTheme.bodyText1),
                            TextSpan(
                                text:
                                    "\n\nCampus Ambassadors are at the forefront of our organization. They are the individuals that will help CampusJams become one of the fastest growing organizations across the American collegiate network. We will provide extensive training and support from day one. This is a sales and customer success role that will be extremely time flexible. Campus Ambassadors understand that they are more than “Sales”, they are the first impression a prospect will get of the company and thus they must be professional, an effective communicator, and excellent at building rapport. They are also motivated by helping our clients achieve the highest levels of success. Campus Ambassadors understand that the sales process itself is a choreographed experience that should have the customer begging to buy."), // This part inherits the default style
                            TextSpan(
                                text: '\n\n\nResponsibilities:',
                                style: Theme.of(context).textTheme.bodyText1),
                            TextSpan(
                                text:
                                    '\n\n-Establish, develop, and maintain positive business and customer relationships'),
                            TextSpan(
                                text:
                                    '\n-Maintain a clear, up to date and accurate pipeline in our CRM'),
                            TextSpan(
                                text:
                                    '\n-Document all interactions with all prospects and clients in “Notes” section of CRM'),
                            TextSpan(
                                text:
                                    '\n-Educate prospects on our products from an expert perspective'),
                            TextSpan(
                                text: '-Record calls for review and feedback'),
                            TextSpan(
                                text:
                                    '\n-Be mindful of any emerging patterns of negative feedback from clients and report to the sales leader'),
                            TextSpan(
                                text: '\n\n\nResults:',
                                style: Theme.of(context).textTheme.bodyText1),
                            TextSpan(
                                text:
                                    '\n\n-All prospects are moved in CRM and information is documented on client details so service staff has proper expectations by EOD'),
                            TextSpan(
                                text:
                                    '\n-A close rate of 40% of in bound leads per month is maintained'),
                            TextSpan(
                                text:
                                    '\n-A close rate of 30% of outbound qualified leads is maintained'),
                            TextSpan(
                                text:
                                    '\n-All qualified prospects are consistently followed up with indefinitely'),
                            TextSpan(
                                text:
                                    '-There is an effective line of communication between the Ambassador and Sales Lead in which all necessary information is communicated in a timely manner'),
                            TextSpan(
                                text:
                                    '\n-All internal communication cycles are properly followed'),
                            TextSpan(
                                text: '\n\n\nRequirements:',
                                style: Theme.of(context).textTheme.bodyText1),
                            TextSpan(
                                text:
                                    '\n\n-Good over the phone / video conference'),
                            TextSpan(text: '\n-Excellent communication skills'),
                            TextSpan(text: '\n-Must be great at presenting'),
                            TextSpan(text: '\n-Excellent at building rapport'),
                            TextSpan(
                                text:
                                    '-\nOpen to learning new processes in sales'),
                            TextSpan(text: '\n-Are routine driven'),
                            TextSpan(text: '\n-Open to rapid growth'),
                            TextSpan(
                                text:
                                    '\n-Self-sufficient and able to properly manage one’s own time'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ))));
  }
}
