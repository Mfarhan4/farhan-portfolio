import 'package:flutter/material.dart';

class ImageViewPage extends StatelessWidget {
  const ImageViewPage({Key? key,required this.image}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: (){
            Navigator.pop(context);
          }, child: Image.asset(image)),
      ),
    );
  }
}
