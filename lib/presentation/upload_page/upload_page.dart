import 'dart:io';

import 'package:flutter/material.dart';
import 'dart:core';
import 'package:image_picker/image_picker.dart';
import 'package:mohammed_s_application1/core/app_export.dart';
import 'package:mohammed_s_application1/services/firestore.dart';
import 'package:mohammed_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:mohammed_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:mohammed_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:firebase_storage/firebase_storage.dart';

class PlaceholderDialog extends StatelessWidget {
  const PlaceholderDialog({
    this.icon,
    this.title,
    this.message,
    this.actions = const [],
    Key? key,
  }) : super(key: key);

  final Widget? icon;
  final String? title;
  final String? message;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      icon: icon,
      title: title == null
          ? null
          : Text(
              title!,
              textAlign: TextAlign.center,
            ),
      titleTextStyle: TextStyle(color: Colors.black87),
      content: message == null
          ? null
          : Text(
              message!,
              textAlign: TextAlign.center,
            ),
      contentTextStyle: TextStyle(color: Color.fromARGB(255, 252, 0, 0)),
      actionsAlignment: MainAxisAlignment.center,
      actionsOverflowButtonSpacing: 8.0,
      actions: actions,
    );
  }
}

String imageUrl = '';

class UploadPage extends StatefulWidget {
  const UploadPage({Key? key}) : super(key: key);

  @override
  State<UploadPage> createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  final FirestoreService firestoreService = FirestoreService();
  final namecontroller = TextEditingController();
  final jobtypecontroller = TextEditingController();
  final salarycontroller = TextEditingController();
  final numbercontroller = TextEditingController();
  final timeSchedule = TextEditingController();
  final place = TextEditingController();
  var items = [
    'Full Time',
    'Part Time',
    'Daily works',
  ];
  bool _validate = true;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA70001,
        appBar: CustomAppBar(
            leadingWidth: getHorizontalSize(48),
            leading: AppbarImage(
                svgPath: ImageConstant.imgGroup162799,
                margin: getMargin(left: 24, top: 13, bottom: 13),
                onTap: () {
                  onTapArrowbackone(context);
                }),
            centerTitle: true,
            title: AppbarTitle(text: "Upload")),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 65,
                        backgroundImage:
                            AssetImage("assets/images/img_ProfilePic.webp"),
                      ),
                      Positioned(
                        child: IconButton(
                          onPressed: () async {
                            //pick image from gallery
                            ImagePicker imagePicker = ImagePicker();
                            XFile? file = await imagePicker.pickImage(
                                source: ImageSource.gallery);
                            print('${file?.path}');

                            if (file == null) return;

                            String uniqueFileName = DateTime.now()
                                .millisecondsSinceEpoch
                                .toString();
                            //upload to firebase
                            Reference referenceRoot =
                                FirebaseStorage.instance.ref();
                            Reference referenceDirImages =
                                referenceRoot.child('image');

                            //create a referance for the image to be stored
                            Reference referenceImageToUpload =
                                referenceDirImages.child(uniqueFileName);

                            try {
                              //store the file
                              await referenceImageToUpload
                                  .putFile(File(file.path));
                              imageUrl =
                                  await referenceImageToUpload.getDownloadURL();
                            } catch (error) {}
                          },
                          icon: const Icon(
                            Icons.add_a_photo_outlined,
                            size: 30,
                            shadows: [
                              Shadow(
                                  color: Color.fromRGBO(238, 242, 245, 1),
                                  offset: Offset.zero,
                                  blurRadius: 1)
                            ],
                          ),
                        ),
                        bottom: -10,
                        left: 80,
                      )
                    ],
                  ),
                ),

                //textfield
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: namecontroller,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person,
                        shadows: [
                          Shadow(
                              color: Color.fromRGBO(0, 56, 101, 1),
                              offset: Offset.zero,
                              blurRadius: 1)
                        ],
                      ),
                      border: new OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.teal)),
                      label: Text("name"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: jobtypecontroller,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.business_sharp,
                        shadows: [
                          Shadow(
                              color: Color.fromRGBO(0, 56, 101, 1),
                              offset: Offset.zero,
                              blurRadius: 1)
                        ],
                      ),
                      border: OutlineInputBorder(),
                      label: Text("job type"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: salarycontroller,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.money,
                        shadows: [
                          Shadow(
                              color: Color.fromRGBO(0, 56, 101, 1),
                              offset: Offset.zero,
                              blurRadius: 1)
                        ],
                      ),
                      border: OutlineInputBorder(),
                      label: Text("salary"),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: timeSchedule,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Schedule Time"),
                        prefixIcon: Icon(
                          Icons.timelapse,
                          shadows: [
                            Shadow(
                                color: Color.fromRGBO(0, 56, 101, 1),
                                offset: Offset.zero,
                                blurRadius: 1)
                          ],
                        ),
                        suffixIcon: PopupMenuButton<String>(
                          color: Color.fromARGB(255, 255, 255, 255),
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            shadows: [
                              Shadow(
                                  color: Color.fromRGBO(0, 56, 101, 1),
                                  offset: Offset.zero,
                                  blurRadius: 1)
                            ],
                          ),
                          onSelected: (String value) {
                            timeSchedule.text = value;
                          },
                          itemBuilder: (BuildContext context) {
                            return items
                                .map<PopupMenuItem<String>>((String value) {
                              return new PopupMenuItem(
                                child: new Text(
                                  value,
                                  style: TextStyle(color: Colors.black),
                                  selectionColor:
                                      const Color.fromARGB(255, 255, 255, 255),
                                ),
                                value: value,
                              );
                            }).toList();
                          },
                        ),
                      ),
                    )),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: numbercontroller,
                    keyboardType: TextInputType.number,
                    maxLength: 10,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.phone,
                        shadows: [
                          Shadow(
                              color: Color.fromRGBO(0, 56, 101, 1),
                              offset: Offset.zero,
                              blurRadius: 1)
                        ],
                      ),
                      border: OutlineInputBorder(),
                      label: Text("phone number"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: place,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.place,
                        shadows: [
                          Shadow(
                              color: Color.fromRGBO(0, 56, 101, 1),
                              offset: Offset.zero,
                              blurRadius: 1)
                        ],
                      ),
                      border: OutlineInputBorder(),
                      label: Text("place"),
                    ),
                  ),
                ),

                //botton to save

                Padding(
                  padding: const EdgeInsets.all(15),
                  child: SizedBox(
                    width: 200,
                    height: 50,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromRGBO(0, 56, 101, 1))),
                      onPressed: () {
                        if (namecontroller.text == "") {
                          _validate = false;
                        } else if (jobtypecontroller.text == "") {
                          _validate = false;
                        } else if (salarycontroller.text == "") {
                          _validate = false;
                        } else if (numbercontroller.text == "") {
                          _validate = false;
                        } else if (timeSchedule.text == "") {
                          _validate = false;
                        } else if (place.text == "") {
                          _validate = false;
                        } else {
                          _validate = true;
                        }
                        if (_validate == false) {
                          showDialog(
                            context: context,
                            builder: (ctx) => PlaceholderDialog(
                              icon: Icon(
                                Icons.error_outline,
                                color: Colors.teal,
                                size: 80.0,
                              ),
                              title: 'submit Failed',
                              message: 'you must need to enter the details',
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.of(ctx).pop(),
                                  child: Text('!Got It'),
                                ),
                              ],
                            ),
                          );
                        } else if (imageUrl.isEmpty) {
                          showDialog(
                            context: context,
                            builder: (ctx) => PlaceholderDialog(
                              icon: Icon(
                                Icons.error_outline,
                                color: Colors.teal,
                                size: 80.0,
                              ),
                              title: 'submit Failed',
                              message: 'you must need to pic image',
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.of(ctx).pop(),
                                  child: Text('!Got It'),
                                ),
                              ],
                            ),
                          );
                        } else {
                          //add data to firebase
                          firestoreService.addData(
                            namecontroller.text,
                            jobtypecontroller.text.toUpperCase(),
                            salarycontroller.text,
                            numbercontroller.hashCode,
                            place.text,
                            timeSchedule.text,
                          );

                          // clear the text controller

                          namecontroller.clear();
                          jobtypecontroller.clear();
                          salarycontroller.clear();
                          numbercontroller.clear();
                          place.clear();
                          timeSchedule.clear();

                          // clear the page

                          Navigator.pop(context);
                        }
                      },
                      child: Text(
                        "Submit",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            fontSize: 15,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowbackone(BuildContext context) {
    Navigator.pop(context);
  }
}
