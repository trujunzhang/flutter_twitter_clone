import 'package:flutter/material.dart';
import 'package:ieatta/helper/theme.dart';
import 'package:ieatta/helper/utility.dart';
import 'package:ieatta/page/settings/widgets/headerWidget.dart';
import 'package:ieatta/page/settings/widgets/settingsRowWidget.dart';
import 'package:ieatta/widgets/customAppBar.dart';
import 'package:ieatta/widgets/customWidgets.dart';
import 'package:ieatta/widgets/newWidget/title_text.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TwitterColor.white,
      appBar: CustomAppBar(
        isBackButton: true,
        title: customTitleText(
          'About Fwitter',
        ),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          HeaderWidget(
            'Help',
            secondHeader: true,
          ),
          SettingRowWidget(
            "Help Centre",
            vPadding: 15,
            showDivider: false,
            onPressed: (){
              launchURL("https://github.com/TheAlphamerc/flutter_twitter_clone/issues");
            },
          ),
          HeaderWidget('Legal'),
          SettingRowWidget(
            "Terms of Service",
            showDivider: true,
          ),
          SettingRowWidget(
            "Privacy policy",
            showDivider: true,
          ),
          SettingRowWidget(
            "Cookie use",
            showDivider: true,
          ),
          SettingRowWidget(
            "Legal notices",
            showDivider: true,
            onPressed: () async {
              showLicensePage(
                context: context,
                applicationName: 'Fwitter',
                applicationVersion: '1.0.0',
                useRootNavigator: true,
              );
            },
          )
        ],
      ),
    );
  }
}
