import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vocab_daily/bloc/avatar_picker_bloc/avatar_picker_bloc.dart';
import 'package:vocab_daily/config/size_config.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileFilledName extends StatelessWidget {
  const ProfileFilledName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AvatarPickerState avatarPickerState =
        context.watch<AvatarPickerBloc>().state;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: getPropertionateScreenHeight(10),
          ),
          child: SvgPicture.asset(
            avatarPickerState is OnPicker
                ? OnPicker.avatarPath
                : 'assets/icons/avatar/man.svg',
            width: getPropertionateScreenWidht(90),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: getPropertionateScreenHeight(20),
            horizontal: getPropertionateScreenWidht(40),
          ),
          child: TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintText: 'Masukkan Nama Anda',
            ),
          ),
        ),
      ],
    );
  }
}
