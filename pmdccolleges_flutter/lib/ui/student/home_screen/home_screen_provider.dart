import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:pmdccolleges_client/pmdccolleges_client.dart';
import 'package:pmdccolleges_flutter/core/enums/view_state.dart';
import 'package:pmdccolleges_flutter/core/model/base_view_model.dart';
import 'package:pmdccolleges_flutter/main.dart';
import 'package:pmdccolleges_flutter/ui/auth/login_screen/login_screen.dart';
import 'package:pmdccolleges_flutter/ui/splash_screen/splash_screen.dart';
import 'package:pmdccolleges_flutter/ui/student/home_screen/subject_screen/student_assignment.dart';

import '../../../core/services/database_storage_services.dart';

class HomeScreenProvider extends BaseViewModal {
  int paid = 0;
  int unPaid = 0;
  List<FeeRecord> feeRecords = [];
  List<NoticeBoard> noticeBoard = [];
  List<Subjects> studentSubjects = [];
  List<Library> libraryBooks = [];
  List<SubjectNotes> subjectNotes = [];
  List<Assignments> assignments = [];
  List<Announcement> announcements = [];
  Submitasignment? submitasignment;
  List<Submitasignment>? listOfStudentSubmitedAssignment = [];
  List<VideoLectures> listOfVideoLecture = [];
  // SubmittedAssignments submitAssignment = SubmittedAssignments(
  //   file: "file",
  //   studentName: "studentName",
  //   studentId: "studentId",
  //   dateAdded: "dateAdded",
  //   subjectId: 0,
  //   section: "a",
  //   programId: "0",
  //   classId: 0,
  //   teacherId: "0",
  //   assignmentId: 0,
  // );
  File? scannedDocumentFile;
  File? file;
  File? documentFile;
  double progress = 0;

  clearData(context) {
    int paid = 0;
    int unPaid = 0;
    List<FeeRecord> feeRecords = [];
    List<NoticeBoard> noticeBoard = [];
    List<Subjects> studentSubjects = [];
    List<Library> libraryBooks = [];
    List<SubjectNotes> subjectNotes = [];
    List<Assignments> assignments = [];
    List<Announcement> announcements = [];
    Submitasignment? submitasignment;
    List<Submitasignment>? listOfStudentSubmitedAssignment = [];
    List<VideoLectures> listOfVideoLecture = [];
    File? scannedDocumentFile;
    File? file;
    File? documentFile;
    double progress = 0;
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => SplashScreen()),
        (route) => false);
  }

  // constructor

  HomeScreenProvider() {
    init();
  }

  // init

  init() async {
    setState(ViewState.busy);
    await getFeeRecord();
    await getNoticeBoard();
    await getLibraryBooks();
    await getStudentSubject();
    setState(ViewState.idle);
  }

  // get Student Fee Record in Installment

  Future<void> getFeeRecord() async {
    try {
      feeRecords = await client.feeRecord
          .getFeeRecord(studentDetails!.studentId)
          .then((v) {
        if (v.isNotEmpty) {
          print("Fee Record ${v[0].totalFee}");
        }
        return v;
      });
      feeCalculation();
    } catch (e) {
      print("Error Occured: $e");
    }

    print("Fee Record length: ${feeRecords.length}");
    // notifyListeners();
  }

  // get Notice Board Details

  Future<void> getNoticeBoard() async {
    try {
      noticeBoard = await client.noticeBoard.getNotice().then((value) {
        print("Fee Record ${value[0].notice}");
        return value;
      });
    } catch (e) {
      print("Error Occured: $e");
    }

    print("Notice Board length: ${noticeBoard.length}");
    notifyListeners();
  }

  // Fee calculation...

  feeCalculation() {
    feeRecords.forEach((record) {
      paid += record.paid;
    });
    unPaid = feeRecords[0].totalFee - paid;
  }

  DatabaseStorageServices _firebaseService = DatabaseStorageServices();
  //  Getting Student Subjects

  Future<void> getStudentSubject() async {
    try {
      studentSubjects = await client.subjects
          .getSubjects(studentDetails?.classId, studentDetails?.programId)
          .then((value) {
        print("Fee Record ${value[0].subjectName}");
        return value;
      });
    } catch (e) {
      print("Error Occured: $e");
    }
    print("Subjects length: ${studentSubjects.length}");
  }

  //  Getting Student Submitted Assignment

  Future<void> getStudentSubmitedAssignment(subjectId) async {
    print("Subject Id: ${subjectId}");
    try {
      listOfStudentSubmitedAssignment = await client.assignment
          .getSubmitasignmentForStudent(studentDetails!.studentId, subjectId);
    } catch (e) {}
    print("Subjects length: ${listOfStudentSubmitedAssignment?.length}");
  }

  //  Getting Library Books

  Future<void> getLibraryBooks() async {
    try {
      libraryBooks = await client.library.getBooks(studentDetails!.studentId);
    } catch (e) {}
  }

  // Getting SubjectNotes

  Future getSubjectNotes(String subjectId) async {
    subjectNotes = await client.subjectnotes
        .getSubjecrNotes(studentDetails!.studentId, subjectId);
  }

  // Getting VideoLecture

  Future getVideoLecture(int subjectId) async {
    listOfVideoLecture = await client.videolecture
        .getVideoLecture(studentDetails!.studentId, subjectId);
  }

  // Getting Assignments

  Future<void> getAssignments(subjectId) async {
    assignments = await client.assignment
        .getAssignmentsStudent(studentDetails!.studentId, subjectId);
  }

  // getting announcements

  Future<void> getAnnouncements(subjectId) async {
    announcements = await client.announcement
        .getAnnouncementStudent(studentDetails!.studentId, subjectId);
  }

  openFilePicker(BuildContext context) async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: [
          'pdf',
        ],
      );

      if (result != null) {
        file = File(result.files.single.path!);

        print(file!.path);
        notifyListeners();
        return file;
      } else {
        // User canceled the picker
      }
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("message: ${e}")));

      print(e);
    }
  }

  void viewFile(File file) {
    OpenFile.open(
      file.path,
    );
  }

  Future<void> submitAssignmentstudent(index, context) async {
    submitasignment = Submitasignment(
      file: "documentFile",
      studentName: studentDetails!.firstName,
      studentId: studentDetails!.studentId,
      dateAdded: DateTime.now().toString(),
      subjectId: assignments[index].subjectId,
      section: studentDetails!.section,
      programId: studentDetails!.programId.toString(),
      classId: studentDetails!.classId,
      teacherId: assignments[index].teacherId,
      assignmentId: assignments[index].id!,
    );
    try {
      final file = await _firebaseService.uploadFile(
          image: documentFile!,
          userId: studentDetails!.studentId.toString(),
          callBack: (progress) {
            print("progress<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<");
            progress = progress;
            notifyListeners();
          });
      submitasignment?.file = file.toString();
      await client.assignment
        ..submitAsignment(submitasignment!).then((value) {
          if (value == true) {
            // final indexx = assignments
            //     .indexWhere((element) => element.id == submitAssignment.id);
            // assignments[indexx].isSubmited=
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text("Assignment Uploaded")));
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => StudentAssignment()));
          } else {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text("Error, Try again")));
          }
        });
    } catch (e) {}
    setState(ViewState.idle);
  }
}
