import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vocab_daily/bloc/avatar_picker_bloc/avatar_picker_bloc.dart';
import 'package:vocab_daily/config/size_config.dart';
import 'package:vocab_daily/models/user_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GridViewAvatar2 extends StatelessWidget {
  const GridViewAvatar2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 0.5,
              crossAxisCount: 3,
              crossAxisSpacing: 0.5,
            ),
            itemCount: avatarPageTwo.length,
            itemBuilder: (_, index) {
              return Padding(
                padding: EdgeInsets.symmetric(
                    vertical: getPropertionateScreenWidht(10),
                    horizontal: getPropertionateScreenWidht(20)),
                child: GestureDetector(
                  onTap: () {
                    context.read<AvatarPickerBloc>().add(SetPicker(
                          path: avatarPageTwo[index].namePath,
                        ));
                    avatarPageTwo[index].namePath;
                  },
                  child: SvgPicture.asset(
                    avatarPageTwo[index].namePath,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
