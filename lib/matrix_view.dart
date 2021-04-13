import 'dart:math';
import 'package:flutter/material.dart';

class MatrixView extends StatefulWidget {
  @override
  _MatrixViewState createState() => _MatrixViewState();
}

class _MatrixViewState extends State<MatrixView> {
  var controllerMapMatrix1 = Map();
  List<Widget> textFiledesList = [];
  List<Widget> textFiledesListRow = [];
  List<Widget> listWidget = [];
  int row1 = 0, column1 = 1;
  int row2 = 0, column2 = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Wrap(
            spacing: 8.0,
            runSpacing: 4.0,
            children: [
              Row(
                children: [...textFormFiledColumn(column1)],
              ),
              ...textFormFiledRow(column1, row1),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    child: Text("+R"),
                    onPressed: () {
                      setState(() {
                        row1 += 1;
                      });
                    },
                  ),
                  FloatingActionButton(
                    child: Text("-R"),
                    onPressed: () {
                      setState(() {
                        row1 -= 1;
                      });
                    },
                  ),
                  FloatingActionButton(
                    child: Text("+C"),
                    onPressed: () {
                      setState(() {
                        column1 += 1;
                      });
                    },
                  ),
                  FloatingActionButton(
                    child: Text("-C"),
                    onPressed: () {
                      setState(() {
                        column1 -= 1;
                      });
                    },
                  ),
                ],
              ),
              Divider(
                color: Colors.grey.shade600,
              ),
              Row(
                children: [...textFormFiledColumn(column2)],
              ),
              ...textFormFiledRow(column2, row2),
              Divider(
                color: Colors.grey.shade600,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    child: Text("+R"),
                    onPressed: () {
                      setState(() {
                        row2 += 1;
                      });
                    },
                  ),
                  FloatingActionButton(
                    child: Text("-R"),
                    onPressed: () {
                      setState(() {
                        row2 -= 1;
                      });
                    },
                  ),
                  FloatingActionButton(
                    child: Text("+C"),
                    onPressed: () {
                      setState(() {
                        column2 += 1;
                      });
                    },
                  ),
                  FloatingActionButton(
                    child: Text("-C"),
                    onPressed: () {
                      setState(() {
                        column2 -= 1;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

// First Matrix Column and Rows

  List<Widget> textFormFiledColumn(matrixColumn) {
    textFiledesList = [];
    for (var i = 0; i < matrixColumn; i++) {
      textFiledesList.add(
        Container(
          decoration: BoxDecoration(border: Border.all()),
          //margin: const EdgeInsets.only(left:20),
          width: 50,
          height: 50,
          child: TextFormField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(hintText: "0"),
            validator: (v) {
              if (v.trim().isEmpty) return 'Please enter something';
              return null;
            },
          ),
        ),
      );
      // controllerValueMap();
    }
    // print(controllerValueMap());
    return textFiledesList;
  }

  List<Widget> textFormFiledRow(matrixColumn, row) {
    textFiledesListRow = [];
    listWidget = [];
    textFiledesListRow.addAll(textFormFiledColumn(matrixColumn));
    for (var i = 0; i < row; i++) {
      listWidget.add(
        Row(
          children: [
            ...textFiledesListRow,
          ],
        ),
      );
    }
    return listWidget;
  }

///////////////////////////////////////////
// Matrix2 row and Column
  void controllerValueMap() {
    for (var i = 0; i <= row1; i++) {
      for (var j = 0; j <= column1; j++) {
        String index = "$row1+$column1";
        // controllerMapMatrix1["$index"] = "$numberController.text";
      }
    }
  }
}

// ineteger popoxakanner 2 hat toxer ev syuneri , static
//function vory ksarqe controllerner syuneri ev toxeri vra fralov(stringov gumareov)
//henc popoxakannery poxvav ksarqem

class Value extends StatefulWidget {
  @override
  _ValueState createState() => _ValueState();
}

class _ValueState extends State<Value> {
  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
