import 'package:flutter/material.dart';
import 'package:vocab_daily/config/size_config.dart';
import 'package:vocab_daily/models/tense_model.dart';
import 'package:vocab_daily/models/vocab_model.dart';
import 'package:vocab_daily/screens/detail_screen/components/rounded_fill.dart';
import 'package:vocab_daily/shared/shared.dart';

class Body extends StatefulWidget {
  const Body({Key? key, required this.vocabModel}) : super(key: key);

  final VocabModel vocabModel;
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int index = 0;
  List<ExpansionPanel> expansionList = [];

  bool isExpand = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isExpand = false;
  }

  // void expansionBuilder() {
  //   int count = 0;
  //   for (TenseModel item in widget.vocabModel.tense) {
  //     expansionList.add(
  //       ExpansionPanel(
  //         headerBuilder: (_, isExpanded) {
  //           return ListTile(
  //             title: Text(item.tenseName),
  //           );
  //         },
  //         canTapOnHeader: true,
  //         body: Column(
  //           children: [
  //             RoundedFill(
  //               content: 'Rumus = ' + item.rumus,
  //             ),
  //             RoundedFill(
  //               content: 'Contoh = ' + item.contoh,
  //             ),
  //             RoundedFill(
  //               content: 'Ketuk untuk memasukkan teks',
  //               isFilled: true,
  //             ),
  //           ],
  //         ),
  //         isExpanded: index == count,
  //       ),
  //     );
  //     count++;
  //   }
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: ExpansionTile(
              title: Container(
                width: double.infinity,
                child: Text('data 1'),
              ),
              trailing: Icon(Icons.arrow_drop_down),
              onExpansionChanged: (value) {
                setState(() {
                  isExpand = value;
                });
              },
              children: [
                for (TenseModel item in widget.vocabModel.tense)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            border: Border.all(color: Colors.pinkAccent)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            item.rumus,
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
