import 'package:flutter/material.dart';

class addressDetails extends StatelessWidget{
  String name;
  final _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Address Details',style:TextStyle(color:Colors.black)),),
        bottomNavigationBar: Container(
            height: 55,
            decoration: BoxDecoration(
              gradient:
              LinearGradient(begin: AlignmentDirectional.topCenter, colors: [
                Colors.cyan[700],
                Colors.cyan[600],
                Colors.cyan[400],
                Colors.cyan[200]
              ]),
            ),
            child: RaisedButton(
                  child: Text("Proceed →",
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                  color:Colors.transparent,
                  onPressed: (){},
                )),
      body:SingleChildScrollView(
        child: Container(
          width:500,
          height: 700,
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 40),
                  child: TextFormField(
                    autofocus: true,
                    decoration: InputDecoration(
                        labelText: 'Full name',
                        hintText: 'Enter your full name',
                        //prefixIcon: Icon(Icons.account_circle_outlined),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.grey,),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.green,),
                        )
                    ),
                    //controller: _nameController,
                  )),

              Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    autofocus: true,
                    decoration: InputDecoration(
                        labelText: 'Mobile',
                        hintText: 'Enter your Mobile',
                        //prefixIcon: Icon(Icons.account_circle_outlined),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.grey,),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.green,),
                        )
                    ),
                    //controller: _nameController,
                  )),
              Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    autofocus: true,
                    decoration: InputDecoration(
                        labelText: 'Pin Code',
                        hintText: 'Pin Code',
                        //prefixIcon: Icon(Icons.account_circle_outlined),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.grey,),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.green,),
                        )
                    ),
                    //controller: _nameController,
                  )),
              Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: TextFormField(
                    autofocus: true,
                    decoration: InputDecoration(
                        labelText: 'Flat no, House no, Building name',
                        //hintText: '',
                        //prefixIcon: Icon(Icons.account_circle_outlined),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.grey,),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.green,),
                        )
                    ),
                    //controller: _nameController,
                  )),
              Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: TextFormField(
                    autofocus: true,
                    decoration: InputDecoration(
                        labelText: 'Area,Colony,Street,sector',
                        //hintText: '',
                        //prefixIcon: Icon(Icons.account_circle_outlined),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.grey,),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.green,),
                        )
                    ),
                    //controller: _nameController,
                  )),
              Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: TextFormField(
                    autofocus: true,
                    decoration: InputDecoration(
                        labelText: 'District',
                        hintText: 'e.g. South-west district',
                       // prefixIcon: Icon(Icons.account_circle_outlined),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.grey,),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.green,),
                        )
                    ),
                    //controller: _nameController,
                  )
              ),
              Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: TextFormField(
                    autofocus: true,
                    decoration: InputDecoration(
                        labelText: 'Landmark',
                        hintText: 'e.g. near Apollo Hospital',
                        //prefixIcon: Icon(Icons.account_circle_outlined),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.grey,),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.green,),
                        )
                    ),
                    //controller: _nameController,
                  )),

            ])
        ),
      )
    );
  }

}