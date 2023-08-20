import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  RegisterState createState() => RegisterState();
}

class RegisterState extends State<Register> {
  DateTime selectedDate = DateTime.now();
  _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate, // Refer step 1
      firstDate: DateTime(1980),
      lastDate: DateTime(2021),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  int? religion = 1, lang = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.only(left: 15, right: 15),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.blue[200]!,
              width: 3,
            ),
            image: const DecorationImage(
                image: AssetImage(
                  "img/back.jpg",
                ),
                fit: BoxFit.cover)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(padding: EdgeInsets.only(top: 10, bottom: 10)),
          TextFormField(
            maxLength: 20,
            style: const TextStyle(color: Colors.yellow),
            decoration: InputDecoration(
                helperText: "Name",
                helperStyle: const TextStyle(color: Colors.white70),
                hintText: "Name",
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        const BorderSide(color: Colors.white60, width: 2)),
                hintStyle: const TextStyle(fontSize: 16, color: Colors.white)),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "${selectedDate.toLocal()}".split(' ')[0],
                style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent),
              ),
              ElevatedButton(
                onPressed: () => _selectDate(context), // Refer step 3
                child: const Text(
                  'Select DOB',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                // color: Colors.purple,
              ),
            ],
          ),
          TextFormField(
            maxLength: 20,
            style: const TextStyle(color: Colors.yellow),
            decoration: InputDecoration(
                helperText: "Location",
                helperStyle: const TextStyle(color: Colors.white70),
                hintText: "Location",
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        const BorderSide(color: Colors.white60, width: 2)),
                hintStyle: const TextStyle(fontSize: 16, color: Colors.white)),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.only(left: 10),
            child: DropdownButton(
                dropdownColor: Colors.black,
                style: const TextStyle(color: Colors.white, fontSize: 16),
                value: religion,
                items: const [
                  DropdownMenuItem(
                    value: 1,
                    child: Text("Hindu"),
                  ),
                  DropdownMenuItem(
                    value: 2,
                    child: Text("Christian"),
                  ),
                  DropdownMenuItem(
                    value: 3,
                    child: Text("Muslim"),
                  ),
                  DropdownMenuItem(
                    value: 4,
                    child: Text("Jain"),
                  ),
                  DropdownMenuItem(
                    value: 5,
                    child: Text("Sikh"),
                  ),
                  DropdownMenuItem(
                    value: 6,
                    child: Text("Buddist"),
                  ),
                  DropdownMenuItem(
                    value: 7,
                    child: Text("Inter-Religion"),
                  ),
                  DropdownMenuItem(
                    value: 8,
                    child: Text("No-Religion"),
                  ),
                  DropdownMenuItem(
                    value: 9,
                    child: Text("Others"),
                  ),
                ],
                onChanged: (dynamic value) {
                  setState(() {
                    religion = value;
                  });
                }),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.only(left: 10),
            child: DropdownButton(
                dropdownColor: Colors.black,
                style: const TextStyle(color: Colors.white, fontSize: 16),
                value: lang,
                items: const [
                  DropdownMenuItem(
                    value: 1,
                    child: Text("Tamil"),
                  ),
                  DropdownMenuItem(
                    value: 2,
                    child: Text("English"),
                  ),
                  DropdownMenuItem(
                    value: 3,
                    child: Text("Hindi"),
                  ),
                  DropdownMenuItem(
                    value: 4,
                    child: Text("Gujarathi"),
                  ),
                  DropdownMenuItem(
                    value: 5,
                    child: Text("Urdu"),
                  ),
                  DropdownMenuItem(
                    value: 6,
                    child: Text("Punjabi"),
                  ),
                  DropdownMenuItem(
                    value: 7,
                    child: Text("Marathi"),
                  ),
                  DropdownMenuItem(
                    value: 8,
                    child: Text("Telugu"),
                  ),
                  DropdownMenuItem(
                    value: 9,
                    child: Text("Malayalam"),
                  ),
                  DropdownMenuItem(
                    value: 10,
                    child: Text("Bengali"),
                  ),
                  DropdownMenuItem(
                    value: 11,
                    child: Text("Kannada"),
                  ),
                  DropdownMenuItem(
                    value: 12,
                    child: Text("Sindhi"),
                  ),
                  DropdownMenuItem(
                    value: 13,
                    child: Text("Others"),
                  ),
                ],
                onChanged: (dynamic value) {
                  setState(() {
                    lang = value;
                  });
                }),
          ),
          const SizedBox(height: 10),
          Container(
            alignment: Alignment.center,
            child: ButtonTheme(
              minWidth: 200,
              height: 50,
              buttonColor: Colors.lightBlue,
              child: ElevatedButton(
                onPressed: () {},
                // textColor: Colors.black,
                child: const Text("Register Now"),
                // elevation: 5,
              ),
            ),
          )
        ]),
      )),
    );
  }
}
