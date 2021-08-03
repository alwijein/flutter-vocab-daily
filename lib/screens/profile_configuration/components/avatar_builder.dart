import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vocab_daily/bloc/avatar_picker_bloc/avatar_picker_bloc.dart';
import 'package:vocab_daily/config/size_config.dart';
import 'package:vocab_daily/models/user_model.dart';
import 'package:vocab_daily/shared/shared.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AvatarBuilder extends StatelessWidget {
  const AvatarBuilder({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 0.5,
            crossAxisCount: 3,
            crossAxisSpacing: 0.5,
          ),
          itemCount: UserModel.avatar.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: EdgeInsets.symmetric(
                  vertical: getPropertionateScreenWidht(10),
                  horizontal: getPropertionateScreenWidht(20)),
              child: GestureDetector(
                onTap: () {
                  context.read<AvatarPickerBloc>().add(SetPicker(
                        path: UserModel.avatar[index].namePath,
                      ));
                  UserModel.avatar[index].namePath;
                },
                child: SvgPicture.asset(
                  UserModel.avatar[index].namePath,
                ),
              ),
            );
          },
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: getPropertionateScreenHeight(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: getPropertionateScreenWidht(10),
                height: getPropertionateScreenHeight(10),
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
