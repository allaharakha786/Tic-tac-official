import 'package:TicTacToe/Helper/color.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PrivacyPolicy extends StatelessWidget {
  String type;
  PrivacyPolicy({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: primaryColor,
          title: type.toLowerCase().contains('privacy')
              ? Text('Privacy Policy')
              : type.toLowerCase().contains('contact')
                  ? Text('Contact Us')
                  : type.toLowerCase().contains('about')
                      ? Text('About Us')
                      : Text('Terms & Conditions'),
        ),
        body: Container(
            color: Colors.white,
            height: mediaQuerySize.height,
            width: mediaQuerySize.width,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: mediaQuerySize.width * 0.06, vertical: mediaQuerySize.height * 0.02),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    type.toLowerCase().contains('privacy')
                        ? Column(
                            children: [
                              Text(
                                "Welcome to Tic Tac Official! This Privacy Policy explains how We collect, use, and protect Your personal information. By using the Application, You agree to this Policy. \n \n1. Information We Collect We collect information to enhance and personalize Your experience, including: Personal Data: Name, email address, and other details You provide. Usage Data: Information about Your device, IP address, browsing history, and app activity. Device Data: Mobile type, unique device ID, operating system, and diagnostics.  \n \n2. How We Use Your Information We use the data collected to: Operate and maintain the Service. Manage Your account and provide customer support. Send updates, notifications, and promotional content. Improve app functionality through performance analysis. Comply with legal obligations or protect rights. \n \n3. Sharing Your Data We may share Your information in the following situations: With Service Providers: To assist in operating and improving the Service. Business Transfers: If We undergo a merger, acquisition, or asset sale. Legal Compliance: When required by law or to protect legal rights. With Affiliates: To provide related services under this Policy. With Your Consent: For other purposes You explicitly approve. \n \n4. Data Retention Personal Data is retained only as long as necessary to fulfill the purposes outlined in this Policy. Usage Data is kept for analysis unless longer retention is required by law. \n \n5. Your Rights You have the right to: Access & Update: View and edit Your personal data through the app Delete Data: Request deletion of Your data, except when retention is required by law. To exercise Your rights, contact Us at the details below. \n \n6. Security We implement robust measures to protect Your data. However, no method of online transmission or storage is 100% secure. We strive to use commercially acceptable means to safeguard Your information. \n \n7. Children’s Privacy Our Service is not intended for users under the age of 13. We do not knowingly collect personal data from children without parental consent. Contact Us if You believe a child has provided Us with personal data. \n \n8. External Links The Application may contain links to external websites. We are not responsible for their content, privacy policies, or practices. Review the privacy policies of any external sites You visit. \n \n9. Changes to This Policy We may update this Privacy Policy periodically. Any changes will be posted in the Application, and the 'Last updated' date will be revised. Significant changes may be communicated via email or a prominent notice in the app. \n \n10. Contact Us If You have any questions about this Privacy Policy, feel free to reach out:",
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Email:',
                                        style: TextStyle(color: Colors.black, fontSize: 16),
                                      ),
                                      TextSpan(
                                        text: ' contactus@enigmanex.com',
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 16,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            _launchURL('mailto:contactus@enigmanex.com');
                                          },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Website:',
                                        style: TextStyle(color: Colors.black, fontSize: 16),
                                      ),
                                      TextSpan(
                                        text: ' www.enigmanex.com',
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 16,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            _launchURL('https://enigmanex.com/');
                                          },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        : type.toLowerCase().contains('terms')
                            ? Column(
                                children: [
                                  Text(
                                    "Terms and Conditions\nLast Updated: November 22, 2024.\n\nWelcome to Tic Tac Official! These Terms and Conditions ('Terms') govern your access to and use of the Tic Tac Official game ('Service').By downloading, accessing, or playing the game, you agree to comply with these Terms. If you do not agree to these Terms, please do not use the Service.______________\n\n1. Interpretation and Definitions Interpretation Terms with capitalized initial letters are defined here and apply uniformly whether used in singular or plural form.\nDefinitions\n•	Application: The Tic Tac Official game provided by the Company, accessible on electronic devices.\n•	Application Store: Platforms such as the Apple App Store or Google Play Store where the Application is made available.\n•	Affiliate: Any entity under shared control with the Company.\n•	Country: Pakistan.\n•	Company: Software Company, Bahawalpur, Punjab, Pakistan, referred to as 'We,' 'Us,' or 'Our.'\n•	Device: Any electronic device capable of running the Application, such as a phone, tablet, or computer.\n•	Service: The Tic Tac Official game and all associated features, functionalities, and updates.\n•	Third-party Social Media Service: External platforms or content integrated with the game for enhanced functionality (e.g., leaderboards or sharing scores).\n•	You: The individual, company, or legal entity downloading, playing, or otherwise using the Service.______________\n\n2. Acknowledgment By using the Service, You agree to comply with these Terms and our Privacy Policy. You represent and confirm that:\n•	You are at least 13 years old.\n•	If You are between 13 and 18 years old, You have obtained parental or legal guardian consent to use the Service.\n•	You are using the Service for personal, non-commercial purposes. The Service is not intended for users under the age of 13.______________\n\n3. Game Use and Restrictions\n•	Fair Play: You agree to use the game as intended and not engage in activities that exploit, cheat, or disrupt the gaming experience for others.\n•	Prohibited Conduct: You will not reverse engineer, modify, or redistribute the Application without written permission from the Company.\n•	Updates: The Company may periodically provide updates or enhancements to the game, which must be installed to continue using the Service.______________\n\n4. Links to Third-party Websites or Services. The Service may include links or integrations with third-party services, such as leaderboards, advertisements, or social media sharing tools. The Company is not responsible for the content, privacy practices, or functionality of these third-party services. ______________\n\n5. Termination We reserve the right to suspend or terminate your access to the Service if You:\n•	Breach these Terms.\n•	Engage in activities deemed harmful to the community or integrity of the game. Upon termination, You will lose access to the Service, including any progress, in-game items, or achievements. ______________\n\n6. Disclaimer The Service is provided 'AS IS' and 'AS AVAILABLE' without warranties of any kind, including implied warranties of merchantability or fitness for a particular purpose. The Company does not guarantee uninterrupted gameplay, error-free performance, or the accuracy of game content. ______________\n\n7. Limitation of Liability To the fullest extent permitted by law, the Company will not be liable for:\n•	Indirect or consequential damages, including loss of data, in-game progress, or revenue.\n•	Any damages exceeding the amount paid for in-game purchases within the Service.______________\n\n8. Governing Law These Terms are governed by the laws of Pakistan. Disputes arising from these Terms will be resolved under the jurisdiction of the courts located in Bahawalpur, Punjab, Pakistan. ______________\n\n9. Dispute Resolution If You have concerns or disputes regarding the Service, please contact Us first to attempt an informal resolution. EU Users If You reside in the European Union, You are entitled to the protections of the laws in your country of residence. US Compliance By using the Service, You affirm that You are not located in a country subject to US government embargoes or restrictions. ______________ \n\n10. Severability and Waiver\n•	Severability: If any provision of these Terms is deemed invalid or unenforceable, the remaining provisions will remain in full effect.\n•	Waiver: The Company’s failure to enforce a provision of these Terms does not constitute a waiver of its right to enforce it in the future.______________\n\n11. Changes to These Terms The Company reserves the right to update or modify these Terms at any time. Material changes will be communicated at least 30 days before taking effect. By continuing to use the Service after changes are implemented, You agree to the updated Terms.______________\n\n13. Contact Us If You have questions or concerns about these Terms, reach out to us:",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Email:',
                                            style: TextStyle(color: Colors.black, fontSize: 16),
                                          ),
                                          TextSpan(
                                            text: ' contactus@enigmanex.com',
                                            style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 16,
                                            ),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                _launchURL('mailto:contactus@enigmanex.com');
                                              },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Website:',
                                            style: TextStyle(color: Colors.black, fontSize: 16),
                                          ),
                                          TextSpan(
                                            text: ' www.enigmanex.com',
                                            style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 16,
                                            ),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                _launchURL('https://enigmanex.com/');
                                              },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            : type.toLowerCase().contains('contact')
                                ? Center(
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Website:',
                                                  style: TextStyle(color: Colors.black, fontSize: 16),
                                                ),
                                                TextSpan(
                                                  text: ' www.enigmanex.com',
                                                  style: TextStyle(
                                                    color: Colors.blue,
                                                    fontSize: 16,
                                                  ),
                                                  recognizer: TapGestureRecognizer()
                                                    ..onTap = () {
                                                      _launchURL('https://enigmanex.com/');
                                                    },
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Email:',
                                                  style: TextStyle(color: Colors.black, fontSize: 16),
                                                ),
                                                TextSpan(
                                                  text: ' contactus@enigmanex.com',
                                                  style: TextStyle(
                                                    color: Colors.blue,
                                                    fontSize: 16,
                                                  ),
                                                  recognizer: TapGestureRecognizer()
                                                    ..onTap = () {
                                                      _launchURL('mailto:contactus@enigmanex.com');
                                                    },
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          'Location: Bahawalpur, Punjab, Pakistan',
                                          style: TextStyle(color: Colors.black),
                                        )
                                      ],
                                    ),
                                  )
                                : Column(
                                    children: [
                                      Text(
                                        "About Us – EnigmaNex\nOur Founder\n\nI'm Umair, the founder of Enigmanex. We provide complete IT solutions for businesses, startups, and individuals. Our services include website development, graphic design, app development, and digital marketing. Our skilled team offers reliable and affordable services to help your business grow. With many years of experience, I have managed many web and mobile app projects from start to finish. At Enigmanex, we aim to become the top software company in Pakistan by meeting all your IT needs with the best resources. I also enjoy mentoring and helping new IT enthusiasts. Let's connect and see how to collaborate to create new and successful projects.\nCompany History\nEnigmaNex began its journey over a year ago, driven by a passion for technology and innovation. Founded to empower businesses in the digital realm, EnigmaNex has rapidly gained recognition for creating user-friendly apps and visually stunning websites. The company's mission is to turn ideas into impactful digital solutions, helping businesses connect with their audience and thrive in the modern world. Through its dedication to excellence and a collaborative spirit, EnigmaNex continues to shape the future of digital experiences.\nOur Mission\nTransform your digital experience with EnigmaNex – where we turn ideas into amazing apps and websites! Hey everyone! Welcome to EnigmaNex, where we're all about making cool apps and websites. We help businesses tell their stories online with web development and advanced software solutions. EnigmaNex is a company that loves technology. We create apps that people love to use and websites that look amazing. Our team is really good at turning ideas into reality and helping businesses grow.\nOur Services:\n App Development: We make apps from start to finish. Our apps are easy to use and help businesses grow by getting more people interested. Web Development: We create websites that are exciting and easy for people to use. Our websites show off your brand and make sure people have a great time visiting. Digital Transformation: Let us help you change and grow online. We'll guide you through everything digital, making sure you become even better in the digital world.\nWhy Choose EnigmaNex? We're not just about technology – we're about helping your business succeed online. Whether you're just starting or already have a company, we can help you reach more people and grow. Let's Connect: If you want to make your business online, let's connect! EnigmaNex is here to help you build your digital empire and tell your story to the world.\nMeet Our Team\nMuhammad Umair Mushtaq – Founder & CEO\nContact Information.",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Email:',
                                                style: TextStyle(color: Colors.black, fontSize: 16),
                                              ),
                                              TextSpan(
                                                text: ' contactus@enigmanex.com',
                                                style: TextStyle(
                                                  color: Colors.blue,
                                                  fontSize: 16,
                                                ),
                                                recognizer: TapGestureRecognizer()
                                                  ..onTap = () {
                                                    _launchURL('mailto:contactus@enigmanex.com');
                                                  },
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Website:',
                                                style: TextStyle(color: Colors.black, fontSize: 16),
                                              ),
                                              TextSpan(
                                                text: ' www.enigmanex.com',
                                                style: TextStyle(
                                                  color: Colors.blue,
                                                  fontSize: 16,
                                                ),
                                                recognizer: TapGestureRecognizer()
                                                  ..onTap = () {
                                                    _launchURL('https://enigmanex.com/');
                                                  },
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'Connect With Us',
                                            style: TextStyle(color: Colors.black),
                                          )),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Facebook:',
                                                style: TextStyle(color: Colors.black, fontSize: 16),
                                              ),
                                              TextSpan(
                                                text: ' www.facebook.com/EnigmaNex',
                                                style: TextStyle(
                                                  color: Colors.blue,
                                                  fontSize: 16,
                                                ),
                                                recognizer: TapGestureRecognizer()
                                                  ..onTap = () {
                                                    _launchURL('https://www.facebook.com/EnigmaNex');
                                                  },
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'LinkedIn:',
                                                style: TextStyle(color: Colors.black, fontSize: 16),
                                              ),
                                              TextSpan(
                                                text: ' www.linkedin.com/enigmanex',
                                                style: TextStyle(
                                                  color: Colors.blue,
                                                  fontSize: 16,
                                                ),
                                                recognizer: TapGestureRecognizer()
                                                  ..onTap = () {
                                                    _launchURL('https://www.linkedin.com/company/enigmanexx/');
                                                  },
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Instagram:',
                                                style: TextStyle(color: Colors.black, fontSize: 16),
                                              ),
                                              TextSpan(
                                                text: ' www.instagram.com/enigmanex',
                                                style: TextStyle(
                                                  color: Colors.blue,
                                                  fontSize: 16,
                                                ),
                                                recognizer: TapGestureRecognizer()
                                                  ..onTap = () {
                                                    _launchURL('https://www.instagram.com/enigma_nex/');
                                                  },
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                  ],
                ),
              ),
            )));
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
