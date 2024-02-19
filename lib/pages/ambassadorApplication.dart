import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ambassadorApplication extends StatelessWidget {
  const ambassadorApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MediaQuery.of(context).size.width < 400
            ? null
            : AppBar(backgroundColor: Color.fromARGB(255, 202, 168, 245)),
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * .1),
                    Text('Campus Ambassador',
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(
                                fontSize:
                                    MediaQuery.of(context).size.width < 500
                                        ? 48
                                        : 85)),
                    SizedBox(height: MediaQuery.of(context).size.height * .1),
                    ElevatedButton(
                        onPressed: () async {
                          final Uri url = Uri.parse(
                              'https://docs.google.com/forms/d/e/1FAIpQLSeDOGsKv5SXOlh1vI_1JHPlMHjJcSHI9ugrk4eJawlRs3Y-AQ/viewform?usp=sf_link'); // Your external link
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url,
                                mode: LaunchMode
                                    .externalApplication); // Opens in a new tab
                          } else {
                            print("Cannot launch $url");
                          }
                        },
                        style: Theme.of(context).elevatedButtonTheme.style,
                        child: const Text('Submit Application')),
                    SizedBox(height: MediaQuery.of(context).size.height * .1),
                    Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: RichText(
                          text: TextSpan(
                            style: MediaQuery.of(context).size.width < 500
                                ? Theme.of(context).textTheme.bodySmall
                                : Theme.of(context).textTheme.bodyMedium,
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Role:',
                                  style: Theme.of(context).textTheme.bodyLarge),
                              const TextSpan(
                                  text:
                                      "\n\nCampus Ambassadors are at the forefront of our organization. They are the individuals that will help CampusJams become one of the fastest growing organizations across the American collegiate network. We will provide extensive training and support from day one. This is a sales and customer success role that will be extremely time flexible. Campus Ambassadors understand that they are more than “Sales”, they are the first impression a prospect will get of the company and thus they must be professional, an effective communicator, and excellent at building rapport. They are also motivated by helping our clients achieve the highest levels of success. Campus Ambassadors understand that the sales process itself is a choreographed experience that should have the customer begging to buy."), // This part inherits the default style
                              TextSpan(
                                  text: '\n\n\nResponsibilities:',
                                  style: Theme.of(context).textTheme.bodyLarge),
                              const TextSpan(
                                  text:
                                      '\n\n-Establish, develop, and maintain positive business and customer relationships'),
                              const TextSpan(
                                  text:
                                      '\n-Maintain a clear, up to date and accurate pipeline in our CRM'),
                              const TextSpan(
                                  text:
                                      '\n-Document all interactions with all prospects and clients in “Notes” section of CRM'),
                              const TextSpan(
                                  text:
                                      '\n-Educate prospects on our products from an expert perspective'),
                              const TextSpan(
                                  text:
                                      '-Record calls for review and feedback'),
                              const TextSpan(
                                  text:
                                      '\n-Be mindful of any emerging patterns of negative feedback from clients and report to the sales leader'),
                              TextSpan(
                                  text: '\n\n\nResults:',
                                  style: Theme.of(context).textTheme.bodyLarge),
                              const TextSpan(
                                  text:
                                      '\n\n-All prospects are moved in CRM and information is documented on client details so service staff has proper expectations by EOD'),
                              const TextSpan(
                                  text:
                                      '\n-A close rate of 40% of in bound leads per month is maintained'),
                              const TextSpan(
                                  text:
                                      '\n-A close rate of 30% of outbound qualified leads is maintained'),
                              const TextSpan(
                                  text:
                                      '\n-All qualified prospects are consistently followed up with indefinitely'),
                              const TextSpan(
                                  text:
                                      '-There is an effective line of communication between the Ambassador and Sales Lead in which all necessary information is communicated in a timely manner'),
                              const TextSpan(
                                  text:
                                      '\n-All internal communication cycles are properly followed'),
                              TextSpan(
                                  text: '\n\n\nRequirements:',
                                  style: Theme.of(context).textTheme.bodyLarge),
                              const TextSpan(
                                  text:
                                      '\n\n-Good over the phone / video conference'),
                              const TextSpan(
                                  text: '\n-Excellent communication skills'),
                              const TextSpan(
                                  text: '\n-Must be great at presenting'),
                              const TextSpan(
                                  text: '\n-Excellent at building rapport'),
                              const TextSpan(
                                  text:
                                      '-\nOpen to learning new processes in sales'),
                              const TextSpan(text: '\n-Are routine driven'),
                              const TextSpan(text: '\n-Open to rapid growth'),
                              const TextSpan(
                                  text:
                                      '\n-Self-sufficient and able to properly manage one’s own time'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ))));
  }
}
