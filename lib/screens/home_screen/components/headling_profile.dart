import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vocab_daily/shared/shared.dart';
import 'package:vocab_daily/config/size_config.dart';

class HeadlingProfile extends StatelessWidget {
  Future<List<String>> getImgPath() async {
    String pathImg = await GetSharedPreferences.getPathImg();
    String username = await GetSharedPreferences.getUsername();

    List<String> data = [
      pathImg,
      username,
    ];
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: getPropertionateScreenHeight(10)),
      child: FutureBuilder<List<String>>(
          future: getImgPath(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              String img = snapshot.data![0];
              String name = snapshot.data![1];
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello,",
                        style: TextStyle(
                          color: kSecondaryColor,
                          fontSize: getPropertionateScreenWidht(18),
                        ),
                      ),
                      Text(
                        name + '.',
                        style: TextStyle(
                          color: kTextColor,
                          fontWeight: FontWeight.bold,
                          fontSize: getPropertionateScreenWidht(20),
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    child: SvgPicture.asset(
                      img,
                    ),
                  ),
                ],
              );
            } else {
              return CircularProgressIndicator();
            }
          }),
    );
  }
}
