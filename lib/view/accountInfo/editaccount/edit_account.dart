import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:image_picker/image_picker.dart';
import 'package:marvel_user/constant.dart';
import 'package:marvel_user/view/accountInfo/account_info.dart';
import 'package:marvel_user/view/accountInfo/editaccount/edit_account_controller.dart';
import 'package:marvel_user/view/widgets/button_main.dart';

import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class EditAccount extends StatelessWidget {
  EditAccount({Key? key}) : super(key: key);
  EditProfileController _editProfileController =
      Get.put(EditProfileController());

  bool obscuretext = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("EDIT ACCOUNT").text.black.make(),
        leading: InkWell(
          onTap: () {},
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        key: _editProfileController.userform,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                2.h.heightBox,
                SizedBox(
                  height: 65.h,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 20.h,
                        width: 100.w,

                        //from here change + sign in to circle avtar
                        child: Obx(() => Container(
                              height: 15.h,
                              width: 15.w,
                              child: _editProfileController.image.value.path ==
                                      ''
                                  ? CircleAvatar(
                                      radius: (10),
                                      backgroundColor: btn1,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(30),
                                        child: Image.asset(
                                          "lib/assets/images/propic.jpg",
                                          fit: BoxFit.fill,
                                        ),
                                      ))
                                  : Image.file(
                                      _editProfileController.image.value),
                            ).onTap(() async {
                              _editProfileController
                                  .pickImage(ImageSource.gallery);
                            })),
                      ),
                      Positioned(
                        top: 20.h,
                        left: 35,
                        right: 35,
                        child: Container(
                          height: 45.h,
                          width: 80.w,
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              3.h.heightBox,
                              Text("USERNAME"),
                              TextFormField(
                                controller: _editProfileController.name,
                                decoration: InputDecoration(
                                  hintText: 'BRITO',
                                ),
                              ),
                              3.h.heightBox,
                              Text("MOBILE NUMBER"),
                              TextFormField(
                                controller: _editProfileController.location,
                                decoration: InputDecoration(
                                  hintText: '9988776655',
                                ),
                              ),
                              3.h.heightBox,
                              Text("EMAIL Address"),
                              TextFormField(
                                controller: _editProfileController.email,
                                decoration: InputDecoration(
                                  hintText: 'brit@gmail.com',
                                ),
                              ),
                              2.h.heightBox,
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: ButtonMain(
                    onpress: () {
                      Get.to(AccountInfo());
                    },
                    btncolor: btn1,
                    btncolortext: btn2,
                    btnname: "Save",
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
