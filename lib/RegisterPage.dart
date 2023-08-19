import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  DateTime selectedDate = DateTime.now();
  _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDate, // Refer step 1
      firstDate: DateTime(1980),
      lastDate: DateTime(2021),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  int religion = 1, lang = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.only(left: 15, right: 15),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.blue[200],
              width: 3,
            ),
            image: DecorationImage(
                image: AssetImage(
                  "img/back.jpg",
                ),
                fit: BoxFit.cover)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(padding: EdgeInsets.only(top: 10, bottom: 10)),
          TextFormField(
            maxLength: 20,
            style: TextStyle(color: Colors.yellow),
            decoration: InputDecoration(
                helperText: "Name",
                helperStyle: TextStyle(color: Colors.white70),
                hintText: "Name",
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white60, width: 2)),
                hintStyle: TextStyle(fontSize: 16, color: Colors.white)),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              Text(
                "${selectedDate.toLocal()}".split(' ')[0],
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent),
              ),
              RaisedButton(
                onPressed: () => _selectDate(context), // Refer step 3
                child: Text(
                  'Select DOB',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                color: Colors.purple,
              ),
            ],
          ),
          TextFormField(
            maxLength: 20,
            style: TextStyle(color: Colors.yellow),
            decoration: InputDecoration(
                helperText: "Location",
                helperStyle: TextStyle(color: Colors.white70),
                hintText: "Location",
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white60, width: 2)),
                hintStyle: TextStyle(fontSize: 16, color: Colors.white)),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.only(left: 10),
            child: DropdownButton(
                dropdownColor: Colors.black,
                style: TextStyle(color: Colors.white, fontSize: 16),
                value: religion,
                items: [
                  DropdownMenuItem(
                    child: Text("Hindu"),
                    value: 1,
                  ),
                  DropdownMenuItem(
                    child: Text("Christian"),
                    value: 2,
                  ),
                  DropdownMenuItem(
                    child: Text("Muslim"),
                    value: 3,
                  ),
                  DropdownMenuItem(
                    child: Text("Jain"),
                    value: 4,
                  ),
                  DropdownMenuItem(
                    child: Text("Sikh"),
                    value: 5,
                  ),
                  DropdownMenuItem(
                    child: Text("Buddist"),
                    value: 6,
                  ),
                  DropdownMenuItem(
                    child: Text("Inter-Religion"),
                    value: 7,
                  ),
                  DropdownMenuItem(
                    child: Text("No-Religion"),
                    value: 8,
                  ),
                  DropdownMenuItem(
                    child: Text("Others"),
                    value: 9,
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    religion = value;
                  });
                }),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.only(left: 10),
            child: DropdownButton(
                dropdownColor: Colors.black,
                style: TextStyle(color: Colors.white, fontSize: 16),
                value: lang,
                items: [
                  DropdownMenuItem(
                    child: Text("Tamil"),
                    value: 1,
                  ),
                  DropdownMenuItem(
                    child: Text("English"),
                    value: 2,
                  ),
                  DropdownMenuItem(
                    child: Text("Hindi"),
                    value: 3,
                  ),
                  DropdownMenuItem(
                    child: Text("Gujarathi"),
                    value: 4,
                  ),
                  DropdownMenuItem(
                    child: Text("Urdu"),
                    value: 5,
                  ),
                  DropdownMenuItem(
                    child: Text("Punjabi"),
                    value: 6,
                  ),
                  DropdownMenuItem(
                    child: Text("Marathi"),
                    value: 7,
                  ),
                  DropdownMenuItem(
                    child: Text("Telugu"),
                    value: 8,
                  ),
                  DropdownMenuItem(
                    child: Text("Malayalam"),
                    value: 9,
                  ),
                  DropdownMenuItem(
                    child: Text("Bengali"),
                    value: 10,
                  ),
                  DropdownMenuItem(
                    child: Text("Kannada"),
                    value: 11,
                  ),
                  DropdownMenuItem(
                    child: Text("Sindhi"),
                    value: 12,
                  ),
                  DropdownMenuItem(
                    child: Text("Others"),
                    value: 13,
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    lang = value;
                  });
                }),
          ),
          SizedBox(height: 10),
          Container(
            alignment: Alignment.center,
            child: ButtonTheme(
              minWidth: 200,
              height: 50,
              buttonColor: Colors.lightBlue,
              child: RaisedButton(
                onPressed: () {},
                textColor: Colors.black,
                child: Text("Register Now"),
                elevation: 5,
              ),
            ),
          )
        ]),
      )),
    );
  }
}
