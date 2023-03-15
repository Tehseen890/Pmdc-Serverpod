import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pmdccolleges_flutter/core/enums/view_state.dart';
import 'package:pmdccolleges_flutter/core/model/base_view_model.dart';
import 'package:pmdccolleges_flutter/ui/student/home_page/home_page.dart';

import 'package:pmdccolleges_flutter/ui/teacher/teacher_home_page/teacher_home_page.dart';
import 'package:pmdccolleges_flutter/ui/teacher/teacher_home_screen/home_screen_provider.dart';
import 'package:provider/provider.dart';

import '../../../main.dart';

import 'login_screen.dart';

class LoginProvider extends BaseViewModal {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Future<void> loginStudent(context) async {
    setState(ViewState.busy);
    notifyListeners();
    try {
      studentDetails = await client.student
          .getStudent(emailController.text, passwordController.text);
    } catch (e) {
      print("errorrrrr $e");
    }
    if (studentDetails != null) {
      print("studentnName ${studentDetails?.firstName}");
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Invalid Credential")));
    }
    setState(ViewState.idle);
  }

  Future<void> loginTeacher(context) async {
    setState(ViewState.busy);
    notifyListeners();
    try {
      teacherDetails = await client.teacher
          .getTeacher(emailController.text, passwordController.text);
    } catch (e) {
      print("errorrrrr $e");
    }
    if (teacherDetails != null) {
      print("Teacher Name: ${teacherDetails?.teacherName}");
      await Provider.of<TeacherHomeScreenProvider>(context, listen: false)
          .init();
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const TeacherHomePage()));
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Invalid Credential")));
    }
    setState(ViewState.idle);
  }
}
