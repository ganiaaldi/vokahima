import 'package:flutter/material.dart';
import 'package:vokahima/first_page.dart';
import 'package:vokahima/model/participant.dart';

var nameText = TextStyle(
    fontFamily: 'OpenSans',
    fontWeight: FontWeight.bold,
    fontSize: 16,
    color: Colors.black);

class ParticipantMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          final Member member = memberList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                //return DetailScreen(member: member);
                return FirstPage();
              }));
            },
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image.asset(member.imageAsset),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            member.nameMember,
                            style: nameText,
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(member.divisionMember,
                              style: TextStyle(
                                  decoration: TextDecoration.underline)),
                          Text(member.positionMember),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
        itemCount: memberList.length,
      ),
    );
  }
}