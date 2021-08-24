import 'package:flutter/material.dart';
import 'package:vocab_daily/config/size_config.dart';
import 'package:vocab_daily/models/vocab_model.dart';
import 'package:vocab_daily/screens/detail_screen/components/rounded_fill.dart';
import 'package:vocab_daily/services/services.dart';
import 'package:vocab_daily/shared/shared.dart';

class Body extends StatefulWidget {
  const Body({Key? key, required this.vocabModel}) : super(key: key);

  final VocabModel vocabModel;
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool isExpand = false;

  @override
  void initState() {
    super.initState();
    isExpand = false;
  }

  @override
  Widget build(BuildContext context) {
    ConnectionServices connectionServices = new ConnectionServices();
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: FutureBuilder(
            future: connectionServices.getApiRoot(),
            builder: (_, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: widget.vocabModel.tense.length,
                    itemBuilder: (_, index) {
                      VocabModel vb = widget.vocabModel;
                      return Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: getPropertionateScreenHeight(10),
                          horizontal: getPropertionateScreenWidht(5),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: kScaffoldColor,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade200,
                                blurRadius: 5,
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: ExpansionTile(
                            title: Container(
                              width: double.infinity,
                              child: Text(vb.tense[index].tenseName),
                            ),
                            trailing: Icon(Icons.arrow_drop_down),
                            onExpansionChanged: (value) {
                              setState(() {
                                isExpand = value;
                              });
                            },
                            children: [
                              RoundedFill(
                                  content: 'Rumus = ' + vb.tense[index].rumus),
                              RoundedFill(
                                  content:
                                      'Contoh = ' + vb.tense[index].contoh),
                              RoundedFill(
                                content: 'Ketuk untuk memasukkan teks',
                                isFilled: true,
                              ),
                              SizedBox(
                                height: getPropertionateScreenHeight(10),
                              ),
                            ],
                          ),
                        ),
                      );
                    });
              }
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                  SizedBox(
                    height: getPropertionateScreenHeight(10),
                  ),
                  Text('Loading..'),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
