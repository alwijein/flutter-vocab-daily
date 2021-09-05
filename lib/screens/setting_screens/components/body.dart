import 'package:about/about.dart';
import 'package:flutter/material.dart';
import 'package:vocab_daily/config/size_config.dart';
import 'package:vocab_daily/screens/setting_screens/components/card_body_setting.dart';
import 'package:vocab_daily/screens/setting_screens/components/card_header_setting.dart';
import 'package:vocab_daily/screens/setting_screens/components/privacy_policy.dart';
import 'package:vocab_daily/screens/setting_screens/components/profile_edit.dart';
import 'package:vocab_daily/screens/setting_screens/components/report.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getPropertionateScreenWidht(20),
            vertical: getPropertionateScreenHeight(20),
          ),
          child: Column(
            children: [
              ProfileEdit(),
              Column(
                children: [
                  CardHeaderSetting(
                    title: 'CONTENT',
                    item: [
                      CardBodySetting(
                        iconData: Icons.favorite_outline,
                        subTitle: 'Favorite',
                        iconPath: 'assets/icons/back_arrow.svg',
                        press: () {},
                      ),
                    ],
                  ),
                  CardHeaderSetting(
                    title: 'DUKUNGAN',
                    item: [
                      CardBodySetting(
                        iconData: Icons.bug_report_outlined,
                        subTitle: 'Laportkan bug dan saran',
                        iconPath: 'assets/icons/back_arrow.svg',
                        press: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return Report();
                          }));
                        },
                      ),
                      CardBodySetting(
                        iconData: Icons.privacy_tip_outlined,
                        subTitle: 'Privacy policy',
                        iconPath: 'assets/icons/back_arrow.svg',
                        press: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return PrivacyPolicy();
                          }));
                        },
                      ),
                    ],
                  ),
                  CardHeaderSetting(
                    title: 'INFORMASI',
                    item: [
                      CardBodySetting(
                        iconData: Icons.info_outline,
                        subTitle: 'About',
                        iconPath: 'assets/icons/back_arrow.svg',
                        press: () {
                          showAboutPage(
                            context: context,
                            values: {
                              'version': 'Beta 0.2',
                              'year': DateTime.now().year.toString(),
                            },
                            applicationLegalese:
                                'Copyright © Buthu Group, {{ year }}',
                            applicationDescription: const Text(
                                'Aplikasi belajar vocab untuk menambah kota kasa bahasa inggris yang Akan Update setiap harinya'),
                            children: <Widget>[
                              MarkdownPageListTile(
                                icon: Icon(Icons.list),
                                title: const Text('Changelog'),
                                filename: 'CHANGELOG.md',
                              ),
                              LicensesPageListTile(
                                icon: Icon(Icons.favorite),
                              ),
                            ],
                            applicationIcon: const SizedBox(
                              width: 100,
                              height: 100,
                              child: Image(
                                image: AssetImage('assets/icons/Logo.png'),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
