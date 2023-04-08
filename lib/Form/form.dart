import 'package:final_crieya/Form/bmi_report.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class form1 extends StatefulWidget {
  const form1({Key? key}) : super(key: key);

  @override
  State<form1> createState() => _form1State();
}

class _form1State extends State<form1> {
  TextEditingController name=TextEditingController();
  TextEditingController age=TextEditingController();
  TextEditingController phone=TextEditingController();
  TextEditingController height=TextEditingController();
  TextEditingController weight=TextEditingController();
  TextEditingController date=TextEditingController();
  CollectionReference users=FirebaseFirestore.instance.collection('users');
  @override

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text('BMI FORM'),
            backgroundColor: Colors.deepPurpleAccent,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const Text(
                        'BMI REPORT',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.purple,
                            fontSize: 25),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[200],
                        ),
                        child: Column(
                          children: [
                            const Text(
                              'General Information: ',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            TextFormField(
                              controller: name,
                              style: const TextStyle(fontSize: 15),
                              keyboardType: TextInputType.name,
                              decoration: const InputDecoration(
                                labelText: "Name",
                              ),
                            ),

                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              keyboardType: TextInputType.number,
                              controller: age,
                              style: const TextStyle(fontSize: 15),
                              decoration: const InputDecoration(
                                labelText: "Age ",
                              ),
                              onFieldSubmitted: (value) {
                                Null;
                              },
                            ),

                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              keyboardType: TextInputType.number,
                              controller: phone,
                              maxLength: 10,
                              style: const TextStyle(fontSize: 15),
                              decoration: const InputDecoration(
                                labelText: "Phone",
                              ),
                              onFieldSubmitted: (value) {
                                Null;
                              },
                            ),

                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              keyboardType: TextInputType.number,
                              controller: height,
                              style: const TextStyle(fontSize: 15),
                              decoration: const InputDecoration(
                                labelText: "Height ",
                              ),
                              onFieldSubmitted: (value) {
                                Null;
                              },
                            ),

                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              keyboardType: TextInputType.datetime,
                              maxLength: 12,
                              controller: date,
                              style: const TextStyle(fontSize: 15),
                              decoration: const InputDecoration(
                                labelText: "Date",
                              ),
                              onFieldSubmitted: (value) {
                                Null;
                              },
                            ),

                            // const SizedBox(
                            //   height: 20,
                            // ),
                            // TextFormField(
                            //   keyboardType: TextInputType.number,
                            //   controller: _bankAccountNumber,
                            //   style: const TextStyle(fontSize: 15),
                            //   decoration: const InputDecoration(
                            //     labelText: "Bank Account Number: ",
                            //   ),
                            //   onFieldSubmitted: (value) {
                            //     Null;
                            //   },
                            // ),
                            //
                            // const SizedBox(
                            //   height: 20,
                            // ),
                            // TextFormField(
                            //   keyboardType: TextInputType.phone,
                            //   controller: _mobNumber,
                            //   maxLength: 10,
                            //   style: const TextStyle(fontSize: 15),
                            //   decoration: const InputDecoration(
                            //     labelText: "Mobile Number: ",
                            //   ),
                            //   onFieldSubmitted: (value) {
                            //     Null;
                            //   },
                            // ),
                            //
                            // const SizedBox(
                            //   height: 20,
                            // ),
                            // TextFormField(
                            //   controller: _address,
                            //   style: const TextStyle(fontSize: 15),
                            //   decoration: const InputDecoration(
                            //     labelText: "Adrdess(Permanent/Temporary): ",
                            //   ),
                            //   onFieldSubmitted: (value) {
                            //     Null;
                            //   },
                            // ),
                            //
                            // const SizedBox(
                            //   height: 20,
                            // ),
                            // TextFormField(
                            //   keyboardType: TextInputType.datetime,
                            //   controller: _dateOfBirth,
                            //   style: const TextStyle(fontSize: 15),
                            //   decoration: const InputDecoration(
                            //     labelText: "Date of Birth: ",
                            //   ),
                            //   onFieldSubmitted: (value) {
                            //     Null;
                            //   },
                            // ),
                            //
                            // const SizedBox(
                            //   height: 20,
                            // ),
                            // TextFormField(
                            //   keyboardType: TextInputType.number,
                            //   maxLength: 2,
                            //   controller: _age,
                            //   style: const TextStyle(fontSize: 15),
                            //   decoration: const InputDecoration(
                            //     labelText: "Age: ",
                            //   ),
                            //   onFieldSubmitted: (value) {},
                            // ),
                            //
                            // const SizedBox(
                            //   height: 20,
                            // ),
                            // TextFormField(
                            //   controller: _ageAtMarriage,
                            //   style: const TextStyle(fontSize: 15),
                            //   decoration: const InputDecoration(
                            //     labelText: "Age at time of marriage: ",
                            //   ),
                            //   onFieldSubmitted: (value) {},
                            // ),
                            //
                            // const SizedBox(
                            //   height: 20,
                            // ),
                            // FittedBox(
                            //   child: Row(
                            //     children: const [
                            //       Text(
                            //         'Caste: ',
                            //       ),
                            //       SizedBox(
                            //         width: 20,
                            //       ),
                            //       ToggleCasteButons(),
                            //     ],
                            //   ),
                            // ),
                            // TextFormField(
                            //   controller: _caste,
                            //   style: const TextStyle(fontSize: 15),
                            //      decoration: const InputDecoration(
                            //        labelText: "Caste: ",
                            //      ),
                            //      onFieldSubmitted: (value) {
                            //      },
                            // ),

                            const SizedBox(
                              height: 20,
                            ),
                            // Row(
                            //   children: const [
                            //     // TextFormField(
                            //     //   controller: _belowPoverty,
                            //     //   style: const TextStyle(fontSize: 15),
                            //     //      decoration: const InputDecoration(
                            //     //        labelText: "Below Poverty: ",
                            //     //      ),
                            //     //      onFieldSubmitted: (value) {
                            //     //      },
                            //     // ),
                            //     Text(
                            //       'Below Poverty: ',
                            //     ),
                            //     SizedBox(
                            //       width: 20,
                            //     ),
                            //     ToggleButtonsSample(),
                            //   ],
                            // ),

                            // const SizedBox(
                            //   height: 20,
                            // ),

                            // const SizedBox(
                            //   height: 20,
                            // ),
                            // TextFormField(
                            //   controller: _rchRegNumber,
                            //   style: const TextStyle(fontSize: 15),
                            //   decoration: const InputDecoration(
                            //     labelText: "RCH Number ",
                            //   ),
                            //   onFieldSubmitted: (value) {},
                            // ),
                            //
                            // const SizedBox(
                            //   height: 20,
                            // ),
                            // TextFormField(
                            //   controller: _pmmvyRegNumber,
                            //   style: const TextStyle(fontSize: 15),
                            //   decoration: const InputDecoration(
                            //     labelText: "PMMVY Registration Number: ",
                            //   ),
                            //   onFieldSubmitted: (value) {},
                            // ),

                            const SizedBox(
                              height: 20,
                            ),

                            MaterialButton(

                              onPressed: ()async {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                        const bmi()));
                                await users.add({
                                  "Name": name.text,
                                  "Age": age.text,
                                  "Height":height.text,
                                  "Phone":phone.text,
                                  "Weight":weight.text,
                                  "Date":date.text
                                });

                              },
                              minWidth: double.infinity,
                              color: Colors.grey,
                              child: const Padding(
                                padding: EdgeInsets.all(20),
                                child: Text(
                                  'Next',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                            // ElevatedButton(
                            //   style: ElevatedButton.styleFrom(
                            //     backgroundColor: Colors.deepPurpleAccent,
                            //   ),
                            //   onPressed:()async {
                            //
                            //   // await users.add({
                            //   //   "Name": _surveyNumber.text,
                            //   //   "age": _giYear.text,
                            //   // });
                            //   // Navigator.push(
                            //   //     context,
                            //   //     MaterialPageRoute(
                            //   //         builder: (context) =>
                            //   //         const display()));
                            //   // ;
                            // }
                            //
                            //   ,child:
                            //   Text("Generate the PDF of the details"),
                            // )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
    );

  }
}
