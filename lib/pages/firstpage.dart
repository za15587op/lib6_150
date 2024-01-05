import 'package:flutter/material.dart';
import 'package:lib6_150/hobby.dart';

class firstPage extends StatefulWidget {
  const firstPage({super.key});

  @override
  State<firstPage> createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  List<Hobby> hobbys = [];
  List _seclectedItem = [];

  @override
  void initState() {
    super.initState();
    hobbys = Hobby.gethobby();
  }

  List<Widget> createCheckboxHobby() {
    List<Widget> myhobby = [];

    for (var hy in hobbys) {
      myhobby.add(CheckboxListTile(
        value: hy.value,
        onChanged: (value) {
          setState(() {
            hy.value = value!;

            if (value) {
              _seclectedItem.add(hy.hobby_en);
            } else {
              _seclectedItem.remove(hy.hobby_en);
            }
          });
        },
        title: Text(hy.hobby_en),
        subtitle: Text(hy.hobby_th),
      ));
    }
    return myhobby;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hobbies'),
        backgroundColor: Color.fromARGB(31, 10, 193, 248),
      ),
      body: Column(
        children: [
          Text("งานอดิเรก"),
          Column(
            children: createCheckboxHobby(),
          ),
          Text(_seclectedItem.toString()),
        ],
      ),
    );
  }
}
