import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/screens/widgets/project_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const [
            Icon(
              Icons.circle_sharp,
              size: 12,
              color: Colors.black,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "",
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
        // foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,

              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius:110,
                    backgroundImage: AssetImage(imagePath),
                  ),
                ),
              ),
            ),
            Center(
                child: Text(
              name,
              style: kTitleText,
            )),
            Center(
                child: Text(
              "@$username",
              style: kSubTitleText,
            )),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                    onPressed: () async {
                      //Code to launch resume
                      final Uri _url = Uri.parse(resumeLink);
                      await launchUrl(_url);
                    },
                    child: Text(
                      "View Resume",
                      style: kSubTitleText,
                    )),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () async {
                      //Call to launch email
                      final Uri emailLaunchUri = Uri(
                        scheme: 'mailto',
                        path: contactEmail,
                      );
                      await launchUrl(emailLaunchUri);
                    },
                    child: Row(
                      children: [
                        const Icon(
                          Icons.add,
                          size: 16,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Contact",
                          style: kSubTitleText.copyWith(color: Colors.white),
                        )
                      ],
                    ))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child:

                     Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Experience",
                                style: kSectionTitleText,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(aboutWorkExperience),
                              const Divider(),
                              Text("Contact us", style: kSectionTitleText),
                              const SizedBox(
                                height: 10,
                              ),
                             // Text(aboutMeSummary),
                            ],
                          ),
                          Column(
                            children: [
                              Card(
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 20, horizontal: 40),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Location",
                                          style: kSubTitleText,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.circle,
                                              size: 16,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              location,
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        // Text(
                                        //   "Website",
                                        //   style: kSubTitleText,
                                        // ),
                                        // const SizedBox(
                                        //   height: 10,
                                        // ),
                                        // Row(
                                        //   children: [
                                        //     Text(website),
                                        //     const SizedBox(
                                        //       width: 5,
                                        //     ),
                                        //     const Icon(
                                        //       Icons.launch,
                                        //       size: 16,
                                        //     )
                                        //   ],
                                        // ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Phone Number",
                                          style: kSubTitleText,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        InkWell(

                                          onTap: (){
                                            
                                            launchUrl(Uri.parse('tel://21213123123')) ;
                                          },
                                          child: const Text(
                                            "+923074600554",
                                           // style: kSubTitleText,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                      
                                        Text(
                                          "Email",
                                          style: kSubTitleText,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            InkWell(
                                              onTap:(){

                                                launchUrl(Uri.parse('mailto:$email'));
                                              },
                                                child
                                                : Text(email)),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            const Icon(
                                              Icons.launch,
                                              size: 16,
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),

                                        Text(
                                          "Linkedin",
                                          style: kSubTitleText,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            InkWell(
                                                onTap:(){

                                                  launchUrl(Uri.parse('https://www.linkedin.com/in/muhammad-farhan-879b2b216'));
                                                },
                                                child
                                                    : const Text('https://www.linkedin.com/in/muhammad-farhan-879b2b216',style: TextStyle(),),),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            const Icon(
                                              Icons.launch,
                                              size: 16,
                                            )
                                          ],
                                        ),

                                      ]),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 35,
                          ),
                          Row(
                            children: [
                              Text("Projects", style: kSectionTitleText),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
              ),
            ),

           Center(
            // height: 200,
            // width: 400,
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
              // shrinkWrap: true,
               children:  [
               ProjectWidget(images:suria, title: 'Suria Subah', link: 'https://play.google.com/store/apps/details?id=com.suriasabah.sabah_suria_app', des: 'This is Ecommerce Based App for a shopping Mall ',),
               const SizedBox(height: 20,),
                 ProjectWidget(images:guard, title: 'Guard360', link: 'https://play.google.com/store/apps/details?id=com.cybermeteors.guard_360', des: 'A premium App to manage security guards with an effective reporting tool',),
                 const SizedBox(height: 20,),
                 ProjectWidget(images:insta, title: 'InstaService Pro', link: 'https://play.google.com/store/apps/details?id=com.instaserviceapp.pro', des: 'InstaService Pro is the country’s first open lead marketplace for service providers.',),
                 const SizedBox(height: 20,),
                 ProjectWidget(images:alberta, title: 'Alberta Security Training', link: 'https://play.google.com/store/apps/details?id=com.cybermeteors.alberta_security_training', des: 'A quiz app for learning and very  useFull to online interviews and test etc.',),
                 const SizedBox(height: 20,),

               ],),
           )


          ],
        ),
      ),
    );
  }
}
