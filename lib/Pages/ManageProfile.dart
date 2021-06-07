import 'package:flutter/material.dart';


class ManageProfile extends StatefulWidget {
  _ManageProfile createState() => _ManageProfile();
}

class _ManageProfile extends State<ManageProfile> {
  final _formKey = GlobalKey<FormState>();
  final nameController = new TextEditingController();
  String name = 'Arshneet';
  var showName =true;

  var showMobile = false;

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // toolbarHeight: 60,
          leading: 
             
               Icon(Icons.person_rounded, color: Colors.black, size: 30),
              
          backgroundColor: Colors.white,
          title: Text("Manage Profile",
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.start),
        ),
        backgroundColor: Colors.blueGrey[50],
        body: Form(
            key: _formKey,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Name",
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 19,
                          ),
                        )),
                    SizedBox(height: 10),
                    Row(children: [
                      showName == false
                          ? Text(name,
                              style: TextStyle(
                                  color: Colors.grey[800],
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold))
                          : DynamicTextField(),
                      showName == false
                          ? Visibility(
                              visible: true,
                              child: Expanded(
                                child: Align(
                                    alignment: Alignment.topRight,
                                    child: FloatingActionButton(
                                      heroTag: "btn1",
                                      backgroundColor: Colors.blueGrey[50],
                                      onPressed: () => {
                                        setState(() {
                                          showName = !showName;
                                        })
                                      },
                                      child: Icon(
                                        Icons.border_color,
                                        color: Colors.grey[800],
                                        size: 25,
                                      ),
                                    )),
                              ))
                          : Visibility(visible: false, child: Text(""))
                    ]),
                    SizedBox(height: 40),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Email",
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 19,
                            // fontWeight: FontWeight.bold
                          ),
                          // textAlign: TextAlign.left)
                        )),
                    SizedBox(height: 10),
                    Row(children: [
                      Text("arntkr13@gmail.com",
                          style: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ]),
                    SizedBox(height: 40),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Mobile Number",
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 19,
                            // fontWeight: FontWeight.bold
                          ),
                          // textAlign: TextAlign.left)
                        )),
                    SizedBox(height: 10),
                    Row(children: [
                      showMobile == false
                          ? Text("9989787",
                          style: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 20,
                              fontWeight: FontWeight.bold))
                          : DynamicTextField(),
                       showMobile== false
                            ? Visibility(
                            visible: true,
                            child: Expanded(
                              child: Align(
                                  alignment: Alignment.topRight,
                                  child: FloatingActionButton(
                                    heroTag: "btn2",
                                    backgroundColor: Colors.blueGrey[50],
                                    onPressed: () => {
                                      setState(() {
                                        showMobile = !showMobile;
                                      })
                                    },
                                    child: Icon(
                                      Icons.border_color,
                                      color: Colors.grey[800],
                                      size: 25,
                                    ),
                                  )),
                            ))
                            : Visibility(visible: false, child: Text("")),
                    ])

                  ]),
            )));
  }
}

class DynamicTextField extends StatefulWidget {
  _DynamicTextField createState()=>_DynamicTextField();
}
class _DynamicTextField extends State<DynamicTextField>{
  var save=false;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: new TextField(
          decoration: InputDecoration(
              suffixIcon: Padding(
                  padding: EdgeInsets.all(12),
                  child: RaisedButton(
                    color: Colors.cyan,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text("Save"),
                    onPressed: () => {
                      save=!save
                    },
                  )),
              filled: true,
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(25)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(25))),
        ));
  }
}
