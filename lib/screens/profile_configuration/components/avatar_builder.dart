import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vocab_daily/bloc/avatar_picker_bloc/avatar_picker_bloc.dart';
import 'package:vocab_daily/config/size_config.dart';
import 'package:vocab_daily/models/user_model.dart';
import 'package:vocab_daily/shared/shared.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AvatarBuilder extends StatefulWidget {
  const AvatarBuilder({
    Key? key,
  }) : super(key: key);

  @override
  _AvatarBuilderState createState() => _AvatarBuilderState();
}

int itemsNumber = 5;

class _AvatarBuilderState extends State<AvatarBuilder> {
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
          itemCount: itemsNumber,
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
