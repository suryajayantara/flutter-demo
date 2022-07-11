import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:student_demo_flutter/models/student_model.dart';
import 'package:student_demo_flutter/views/student/add_student.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({Key? key}) : super(key: key);
  var data = [
    Student(
        name: "Surya Jayantara I Putu",
        address: "Jl Ceroring No 32 Dangin Puri"),
    Student(
        name: "Bagus Made Artha Nugraha",
        address: "Jl Wibisana Gg Apel Manis No 3")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(color: Colors.blue),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(data[index].name.toString()),
                    Text(data[index].address.toString())
                  ],
                ),
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return AddStudentPage();
            },
          ));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
