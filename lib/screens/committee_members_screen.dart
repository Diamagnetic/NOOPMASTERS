import 'package:flutter/material.dart';
import 'package:vjcommittee/constants.dart';
import 'package:vjcommittee/data/committee_data_getter.dart';

class CommitteeMembersScreen extends StatelessWidget {
  CommitteeMembersScreen(
      {@required this.committeeName, @required this.committeeLogo});

  final String committeeName;
  final String committeeLogo;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              child: Image.asset(committeeLogo),
            ),
            Container(
              padding: EdgeInsets.only(left: 10, top: 15, right: 10),
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment(-.95, 0),
                    child: Text(
                      committeeName,
                      style: kAboutPageCommitteeTextStyle,
                    ),
                  ),
                  Container(
                    alignment: Alignment(-.95, 0),
                    child: Text(
                      'Committee Members',
                      style: kAboutPageAboutTextStyle,
                    ),
                  ),
                  Divider(
                    indent: 7.5,
                    endIndent: 300,
                    thickness: 1.2,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            Container(
              child: CommitteeDataGetter(
                committeeName: committeeName,
                committeeDataType: 'MEMBERS',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
