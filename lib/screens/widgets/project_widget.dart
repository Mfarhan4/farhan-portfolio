import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/screens/widgets/image_view.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectWidget extends StatelessWidget {
   final List images;
   final String title;
   final String des;
   final String link;


  const ProjectWidget({Key? key, required this.images,required this.title ,required this.link,required this.des}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScrollController controller = ScrollController();
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Card(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              title,
              style: kSectionTitleText,
            ),
          ),
          const SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              des,
            ),
          ),
          const SizedBox(height: 5,),
         SizedBox(
           width: MediaQuery.of(context).size.width * 0.8,
           height: 310,
           child: ScrollConfiguration(
             behavior: MyCustomScrollBehavior(),
             child: ListView.builder(
                 itemCount: images.length,
                 controller: controller,
                 shrinkWrap: true,
                // physics: const AlwaysScrollableScrollPhysics(),
                 scrollDirection: Axis.horizontal,

                 itemBuilder: (context,index){
               return Padding(
                 padding: const EdgeInsets.all(12.0),
                 child: SizedBox(
                 //  height: 90,
                   child: InkWell(
                     onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (_)=> ImageViewPage(image: images[index])));
                     },


                       child: Image.asset(images[index])),
                   // child: PhotoView(
                   //   imageProvider: AssetImage(images[index]),
                   // ),
                 ),
               );
             }),
           ),
         ),
          const SizedBox(height: 10,),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () async {
                  //Launch project on GitHub
                  final Uri _url = Uri.parse(link);
                  await launchUrl(_url);
                },
                child: Text(
                  "View Project",
                  style: kSubTitleText.copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
    // etc.
  };
}