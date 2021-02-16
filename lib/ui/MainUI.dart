import 'package:fluam_app/ui/widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainUI extends StatefulWidget {
  @override
  _MainUIState createState() => _MainUIState();
}

class _MainUIState extends State<MainUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: makeAppBar(context,
          title: makeTitleText(context, "Main", textAlign: TextAlign.center),
          centerTitle: true,
          actions: [
            IconButton(
                icon: Icon(
                  Icons.account_circle,
                  color: getTextColor(context),
                ),
                onPressed: () {})
          ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: getAppbarBackGroundColor(context),
        child: FaIcon(
          FontAwesomeIcons.pencilAlt,
          color: getTextColor(context),
        ),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomAppBar(
        color: getAppbarBackGroundColor(context),
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            IconButton(
              icon: Icon(
                Icons.home,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.apps,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}