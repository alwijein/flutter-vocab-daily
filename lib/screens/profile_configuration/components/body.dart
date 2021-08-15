import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vocab_daily/bloc/avatar_picker_bloc/avatar_picker_bloc.dart';
import 'package:vocab_daily/bloc/page_bloc/page_bloc.dart';
import 'package:vocab_daily/config/size_config.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vocab_daily/screens/profile_configuration/components/avatar_builder.dart';
import 'package:vocab_daily/screens/profile_configuration/components/profile_filled_name.dart';
import 'package:vocab_daily/shared/shared.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

TextEditingController textEditingController = new TextEditingController();

class _BodyState extends State<Body> with WidgetsBindingObserver {


  @override
  Widget build(BuildContext context) {
    GetSharedPreferences sp = new GetSharedPreferences();
    return SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getPropertionateScreenWidht(20),
              vertical: getPropertionateScreenHeight(60),
            ),
            child: Column(
              children: [
                ProfileFilledName(
                  textEditingController: textEditingController,
                ),
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
                    child: AvatarBuilder(),
                  ),
                ),
                BlocBuilder<AvatarPickerBloc, AvatarPickerState>(
                  builder: (context, state) {
                    return ElevatedButton(
                      onPressed: () {
                        if (state is OnPicker) {
                          print(textEditingController.text);
                          GetSharedPreferences.setUsername(
                              textEditingController.text);
                          GetSharedPreferences.setPathImg(state.avatarPath);
                          GetSharedPreferences.firstOpen(true);
                          context.read<PageBloc>().add(GoToNavbarScreen());
                        }
                      },
                      child: Text(
                        'Buka Vocab Daily',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
