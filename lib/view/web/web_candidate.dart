import 'package:flutter/material.dart';
import 'package:vokahima/model/candidate.dart';
import '../../detail_candidate.dart';

var nameText = TextStyle(
    fontFamily: 'OpenSans',
    fontWeight: FontWeight.bold,
    fontSize: 24,
    color: Colors.black);

var regularText = TextStyle(
    fontFamily: 'OpenSans',
    fontSize: 18,
    color: Colors.black);

class CandidateWeb extends StatelessWidget {
  final int gridCount;

  CandidateWeb({required this.gridCount});

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      isAlwaysShown: true,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: GridView.count(
          crossAxisCount: gridCount,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          children: candidateList.map((candidate) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailCandidate(candidate: candidate);
                }));
              },
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Image.asset(
                        candidate.imageAsset,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Text(
                                candidate.nameCandidate,
                                style: nameText,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.blueGrey,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Text(candidate.nameKahim,style: regularText),
                                        Text(candidate.gradeKahim,style: regularText),
                                        Text(candidate.classKahim,style: regularText),
                                        Text(candidate.divisionKahim,style: regularText),
                                      ],
                                    ),
                                    Expanded(
                                        child: Container(
                                            height: 15,
                                            child: VerticalDivider(
                                                color: Colors.blueGrey))),
                                    Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Text(candidate.nameWakahim,style: regularText),
                                        Text(candidate.gradeWakahim,style: regularText),
                                        Text(candidate.classWakahim,style: regularText),
                                        Text(candidate.divisionWakahim,style: regularText),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
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
