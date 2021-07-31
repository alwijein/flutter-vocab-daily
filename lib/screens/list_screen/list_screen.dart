import 'package:flutter/material.dart';
import 'package:vocab_daily/screens/list_screen/components/body.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daftar Vocab"),
      ),
      body: Body(),
    );
  }
}
