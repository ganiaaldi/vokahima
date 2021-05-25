import 'package:flutter/material.dart';
import 'package:vokahima/model/candidate.dart';
import 'package:vokahima/participant_page.dart';

import 'model/participant.dart';

var titleSub = TextStyle(
    fontFamily: 'OpenSans',
    fontWeight: FontWeight.bold,
    fontSize: 12,
    color: Colors.black);

class VotePage extends StatefulWidget {

  @override
  _State createState() => _State();
}

class _State extends State<VotePage> {

  List<Member> member = memberList;
  String divisiValue = 'Pendidikan Pengembangan & Rohani';
  String positionValue = 'Ketua Himpunan';
  String imageValue = '';

  TextEditingController nameController = TextEditingController();



  void addItemToList() {
    setState(() {
      member.add(Member(
          nameMember: nameController.text,
          positionMember: positionValue,
          votingMember: 0, imageAsset: imageValue, divisionMember: divisiValue));
    });
  }

  void setImage(){
    switch(divisiValue){
      case 'Pendidikan Pengembangan & Rohani':
        imageValue = ("images/icon_book.png");
        break;
      case 'Informasi & Komunikasi':
        imageValue = ("images/icon_camera.png");
        break;
      case 'Dana & Usaha':
        imageValue = ("images/icon_money.png");
        break;
      case 'Minat & Bakat':
        imageValue = ("images/icon_ball.png");
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Data Partisipan',
            style: TextStyle(
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.white),
          ),
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nama',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "Divisi",
                  textAlign: TextAlign.left,
                  style: titleSub,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: DropdownButton(
                  isExpanded: true,
                  value: divisiValue,
                  icon: const Icon(Icons.arrow_drop_down_outlined),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(color: Colors.black),
                  underline: Container(
                    height: 2,
                    color: Colors.blue,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      divisiValue = newValue!;
                    });
                  },
                  items: <String>[
                    'Pendidikan Pengembangan & Rohani',
                    'Informasi & Komunikasi',
                    'Dana & Usaha',
                    'Minat & Bakat'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "Posisi",
                  textAlign: TextAlign.left,
                  style: titleSub,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: DropdownButton(
                  isExpanded: true,
                  value: positionValue,
                  icon: const Icon(Icons.arrow_drop_down_outlined),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(color: Colors.black),
                  underline: Container(
                    height: 2,
                    color: Colors.blue,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      positionValue = newValue!;
                    });
                  },
                  items: <String>[
                    'Ketua Himpunan',
                    'Wakil Ketua Himpunan',
                    'Sekretaris Umum',
                    'Bendahara',
                    'Ketua Divisi',
                    'Anggota'
                  ].map<DropdownMenuItem<String>>((String valuee) {
                    return DropdownMenuItem<String>(
                      value: valuee,
                      child: Text(valuee),
                    );
                  }).toList(),
                ),
              ),
              Center(
                child: ElevatedButton(
                  child: Text('Vote',
                      style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  onPressed: () {
                    setImage();
                    addItemToList();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return ParticipantPage();
                        }));
                  },
                ),
              ),
            ]));
  }
}
