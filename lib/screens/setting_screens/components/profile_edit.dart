import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vocab_daily/bloc/page_bloc/page_bloc.dart';
import 'package:vocab_daily/config/size_config.dart';
import 'package:vocab_daily/shared/shared.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileEdit extends StatelessWidget {
  ProfileEdit({
    Key? key,
  }) : super(key: key);

  GetProfiles getProfiles = new GetProfiles();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: getPropertionateScreenHeight(20)),
      child: FutureBuilder<List<String>>(
        future: getProfiles.getProfile(),
        builder: (_, snapshot) {
          if (snapshot.hasData) {
            String img = snapshot.data![0];
            String name = snapshot.data![1];

            return Column(
              children: [
                CircleAvatar(
                  radius: getPropertionateScreenWidht(50),
                  child: SvgPicture.asset(
                    img,
                  ),
                ),
                SizedBox(height: getPropertionateScreenHeight(20)),
                Text(
                  name,
                  style: TextStyle(
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: getPropertionateScreenWidht(20),
                  ),
                ),
                SizedBox(height: getPropertionateScreenHeight(10)),
                Container(
                  width: getPropertionateScreenWidht(170),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: kPrimaryColor,
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 10,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: () {
                      GetSharedPreferences.firstOpen(false);
                      context.read<PageBloc>().add(GoToAvatarScreen());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Edit Profile',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SvgPicture.asset(
                          'assets/icons/back_arrow.svg',
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
