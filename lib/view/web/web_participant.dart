import 'package:flutter/material.dart';
import 'package:vokahima/model/participant.dart';

var nameText = TextStyle(
    fontFamily: 'OpenSans',
    fontWeight: FontWeight.bold,
    fontSize: 24,
    color: Colors.black);

var regularText = TextStyle(
    fontFamily: 'OpenSans',
    fontSize: 18,
    color: Colors.black);

class ParticipantWeb extends StatelessWidget {
  final int gridCount;

  ParticipantWeb({required this.gridCount});

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      isAlwaysShown: true,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: GridView.count(
          crossAxisCount: 4,
          children: memberList.map((member) {
            return InkWell(
              onTap: () {
              },
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Image.asset(
                        member.imageAsset,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        member.nameMember,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                      child: Text(
                        member.divisionMember,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                      child: Text(
                        member.positionMember,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
