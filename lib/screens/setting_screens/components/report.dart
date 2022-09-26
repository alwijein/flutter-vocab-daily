import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vocab_daily/config/size_config.dart';
import 'package:vocab_daily/shared/shared.dart';

class Report extends StatelessWidget {
  const Report({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lapor Bug Aplikasi'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                child: Text(
                  'LAPORKAN BUG APLIKASI VOCAB DAILY!!! kalau mau lapor bug apapun, silahkan pada field di bawah Tombol laporkan akan muncul jika laporan lebih dari 80 huruf!',
                  style: TextStyle(
                    fontSize: getPropertionateScreenWidht(15),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getPropertionateScreenWidht(20)),
                child: Container(
                  height: getPropertionateScreenHeight(200),
                  color: kPrimaryLightColor,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintMaxLines: 2,
                      hintText:
                          'Tuliskan secara lengkap bug aplikasi vocab daily! jelas dan padat',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getPropertionateScreenWidht(20),
                  vertical: getPropertionateScreenHeight(20),
                ),
                child: Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: kPrimaryColor,
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 10,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: () {
                      GetSharedPreferences.firstOpen(false);
                    },
                    child: Text(
                      'LAPORKAN',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
