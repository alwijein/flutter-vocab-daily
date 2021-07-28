import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vocab_daily/config/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List avatar = [
      'assets/icons/avatar/boy.svg',
      'assets/icons/avatar/boy-1.svg',
      'assets/icons/avatar/girl.svg',
      'assets/icons/avatar/girl-1.svg',
      'assets/icons/avatar/man.svg',
      'assets/icons/avatar/man-1.svg',
      'assets/icons/avatar/man-2.svg',
      'assets/icons/avatar/man-3.svg',
      'assets/icons/avatar/man-4.svg',
    ];
    return SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getPropertionateScreenWidht(20),
                vertical: getPropertionateScreenHeight(20)),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: getPropertionateScreenHeight(40),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 7,
                          spreadRadius: 2,
                          offset: Offset(0, 5),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 0.5,
                        crossAxisCount: 3,
                        crossAxisSpacing: 0.5,
                      ),
                      itemCount: avatar.length,
                      itemBuilder: (_, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: getPropertionateScreenWidht(10),
                              horizontal: getPropertionateScreenWidht(20)),
                          child: GestureDetector(
                            onTap: () {},
                            child: SvgPicture.asset(
                              avatar[index],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: getPropertionateScreenHeight(20)),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Nama Profile',
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: 'Masukkan Nama Anda',
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('selanjutnya'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
