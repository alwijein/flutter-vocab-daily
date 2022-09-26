import 'package:flutter/material.dart';
import 'package:vocab_daily/config/size_config.dart';
import 'package:vocab_daily/services/services.dart';
import 'package:vocab_daily/shared/shared.dart';

class RoundedFill extends StatefulWidget {
  const RoundedFill({
    Key? key,
    required this.content,
    this.isFilled = false,
    this.idVocab = 0,
  }) : super(key: key);

  final String content;
  final bool isFilled;
  final int idVocab;
  @override
  _RoundedFillState createState() => _RoundedFillState();
}

TextEditingController textEditingController = TextEditingController();

class _RoundedFillState extends State<RoundedFill> {
  ConnectionServices connectionServices = ConnectionServices();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getPropertionateScreenWidht(20),
        vertical: getPropertionateScreenHeight(8),
      ),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: getPropertionateScreenWidht(20),
              vertical: getPropertionateScreenHeight(10),
            ),
            width: double.infinity,
            height: widget.isFilled == true
                ? getPropertionateScreenHeight(200)
                : getPropertionateScreenHeight(50),
            decoration: BoxDecoration(
              color: kAccentColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: widget.isFilled == true
                ? Stack(
                    children: [
                      TextField(
                        style: TextStyle(
                          fontSize: getPropertionateScreenHeight(16),
                        ),
                        decoration: InputDecoration(
                          hintText: widget.content,
                          hintStyle: TextStyle(
                            fontSize: getPropertionateScreenWidht(16),
                          ),
                          border: InputBorder.none,
                        ),
                        controller: textEditingController,
                      ),
                      Positioned(
                        bottom: 10,
                        right: 5,
                        child: GestureDetector(
                          onTap: () {
                            connectionServices.sendVocabTest(
                              textEditingController.text,
                              widget.idVocab,
                            );
                            textEditingController.text = '';
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: kPrimaryColor,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                : Text(
                    widget.content,
                    style: TextStyle(fontSize: getPropertionateScreenWidht(16)),
                  ),
          ),
        ],
      ),
    );
  }
}
