import 'package:flutter/material.dart';
import 'package:vocab_daily/bloc/page_bloc/page_bloc.dart';
import 'package:vocab_daily/screens/list_screen/list_screen.dart';
import 'package:vocab_daily/shared/shared.dart';
import 'package:vocab_daily/config/size_config.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ReadMore extends StatelessWidget {
  const ReadMore({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: getPropertionateScreenHeight(26)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Vocab Today",
            style: TextStyle(
              color: kTextColor,
              fontWeight: FontWeight.bold,
              fontSize: getPropertionateScreenWidht(18),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_){
                return ListScreen();
              }));
              },
            child: Text(
              "more",
              style: TextStyle(
                color: kSecondaryColor,
                fontSize: getPropertionateScreenWidht(18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
