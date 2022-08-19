import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ImageDialog extends StatelessWidget {
  const ImageDialog({Key? key, required this.images}) : super(key: key);
  final String images;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    double width;
    double height;
    if (screenSize.width >= screenSize.height && screenSize.height >= 720) {
      width = 600;
      height = 600;
    } else {
      width = 300;
      height = 300;
    }
    return CircleAvatar(
        child: GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (_) => Dialog(
                child: Container(
                  width: width,
                  height: height,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: ExactAssetImage(images), fit: BoxFit.cover)),
                ),
              ),
            );
          },
        ),
        radius: 50.0,
        backgroundImage: AssetImage(images));
  }
}
