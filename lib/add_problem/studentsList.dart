import 'package:epsapp/add_problem/studentListMaker.dart';
import 'package:epsapp/models/studentSearch.dart';
import 'package:epsapp/services/database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class etud_list extends StatefulWidget {
  var problem ;

etud_list({this.problem});
  @override
  _etud_listState createState() => _etud_listState();
}

class _etud_listState extends State<etud_list> {

  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<student>>.value(
      value: DatabaseServices().Students,
      child: Scaffold(
          appBar: AppBar(
                title: Text('eps '),

              ),
              body:
              Column(
                children: <Widget>[
                  Expanded(
                    child: studentsListMaker(problem: widget.problem,),
                  ),
              ],
              ),

              ),
    );

  }
}
