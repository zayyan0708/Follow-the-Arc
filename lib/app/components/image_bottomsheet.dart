// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

Widget bottomSheet(BuildContext context, var controller) {
  return Container(
    height: 100,
    width: MediaQuery.of(context).size.width,
    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    child: Column(children: <Widget>[
      Text(
        "Chooose Profile Photo",
        style: TextStyle(fontSize: 20.0),
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FlatButton.icon(
            onPressed: () {
              controller.getImage(ImageSource.camera);
            },
            icon: Icon(Icons.camera),
            label: Text('Camera'),
          ),
          FlatButton.icon(
            onPressed: () {
              controller.getImage(ImageSource.gallery);
            },
            icon: Icon(Icons.image),
            label: Text('Gallery'),
          ),
        ],
      )
    ]),
  );
}
