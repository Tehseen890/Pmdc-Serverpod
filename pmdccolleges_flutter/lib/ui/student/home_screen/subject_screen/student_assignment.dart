import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:intl/intl.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:pmdccolleges_client/pmdccolleges_client.dart';
import 'package:pmdccolleges_flutter/constants/constants.dart';
import 'package:pmdccolleges_flutter/core/enums/view_state.dart';
import 'package:pmdccolleges_flutter/ui/auth/login_screen/login_screen.dart';
import 'package:pmdccolleges_flutter/ui/student/home_screen/home_screen_provider.dart';
import 'package:pmdccolleges_flutter/ui/teacher/teacher_home_screen/home_screen_provider.dart';
import 'package:pmdccolleges_flutter/ui/teacher/teacher_home_screen/teacher_subject_screen/upload_screen.dart';
import 'package:provider/provider.dart';

class StudentAssignment extends StatefulWidget {
  StudentAssignment({super.key});

  @override
  State<StudentAssignment> createState() => _StudentAssignmentState();
}

class _StudentAssignmentState extends State<StudentAssignment> {
  @override
  void initState() {
    Provider.of<HomeScreenProvider>(context, listen: false).file = null;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: kAppColor,
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Padding(
                  padding: const EdgeInsets.only(left: 3.0),
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          title: const Center(
              child: Text(
            'Assignments',
            style: TextStyle(color: Colors.black),
          ))),
      body: Consumer<HomeScreenProvider>(builder: (context, model, ch) {
        return ModalProgressHUD(
          inAsyncCall: model.state == ViewState.busy,
          progressIndicator: CircularProgressIndicator(),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              //  crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: 20),
                model.assignments.isEmpty
                    ? Text("No Assignment Yet")
                    : Expanded(
                        child: ListView.builder(
                          itemCount: model.assignments.length,
                          itemBuilder: (context, index) =>
                              CustomAssignmentScreenContainer(
                            // onTap: () {},
                            containerColor: getRandomColor(),
                            assignment: model.assignments[index],
                            index: index,
                            model: model,
                          ),
                        ),
                      ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}

class CustomAssignmentScreenContainer extends StatefulWidget {
  final Color containerColor;

  Assignments assignment;
  final index;
  HomeScreenProvider model;
  CustomAssignmentScreenContainer({
    required this.assignment,
    required this.containerColor,
    required this.index,
    required this.model,
    Key? key,
  }) : super(key: key);

  @override
  State<CustomAssignmentScreenContainer> createState() =>
      _CustomAssignmentScreenContainerState();
}

class _CustomAssignmentScreenContainerState
    extends State<CustomAssignmentScreenContainer> {
  DateTime? deadline;
  DateTime now = DateTime.now();
  @override
  void initState() {
    deadline = DateFormat('dd MMMM yyyy').parse(widget.assignment.deadLine);

// Set the time to the last moment of the day (11:59:59 PM)
    deadline =
        DateTime(deadline!.year, deadline!.month, deadline!.day, 23, 59, 59);
    print("Deadline: $deadline");
    print("now: $now");
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(5),
        height: 220,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.green.withOpacity(.2),
        ),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 25,
                    width: 60,
                    decoration: BoxDecoration(
                      color: kAppColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: Text(
                      'S.No : ${widget.assignment.id}',
                    )),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Container(
                    height: 25,
                    width: 80,
                    decoration: BoxDecoration(
                      color: kGreenColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: Text(
                      ' ${widget.assignment.title}',
                    )),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Spacer(),
                  widget.model.file == null
                      ? SizedBox()
                      : Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.orange),
                          child: TextButton(
                            onPressed: () async {
                              widget.model.file = null;
                              await widget.model.submitAssignmentstudent(
                                  widget.index, context);
                            },
                            child: Text(
                              "Upload",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Topic',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(' ${widget.assignment.topic}',
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.justify),
                  Container(
                    height: 35,
                    width: 110,
                    decoration: BoxDecoration(
                      color: const Color(0xfff06709),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                      child: Text(
                        'Download',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Date Added: ',
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        ' ${DateFormat('dd MMMM yyyy').format(DateTime.parse(widget.assignment.dateAdded))}',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Submission Date',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        ' ${widget.assignment.deadLine}',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  widget.model.listOfStudentSubmitedAssignment!
                              .contains(widget.assignment.id) &&
                          widget.model.listOfStudentSubmitedAssignment!
                              .contains(studentDetails?.studentId)
                      ? customBottomCard(
                          //  isSmall: isSmall,
                          text: 'Uploaded',
                          asset: '$staticAssetsPath/inbox.png',
                          onTap: () async {},
                        )
                      : deadline!.isBefore(now)
                          ? customBottomCard(
                              //  isSmall: isSmall,
                              text: 'Uploaded',
                              asset: '$staticAssetsPath/inbox.png',
                              onTap: () async {},
                            )
                          : widget.model.submitasignment != null
                              ? customBottomCard(
                                  //  isSmall: isSmall,
                                  text: 'Uploaded',
                                  asset: '$staticAssetsPath/inbox.png',
                                  onTap: () async {},
                                )
                              : widget.model.file == null
                                  ? customBottomCard(
                                      //  isSmall: isSmall,
                                      text: 'Upload Document',
                                      asset: '$staticAssetsPath/inbox.png',
                                      onTap: () async {
                                        final docPath = await widget.model
                                            .openFilePicker(context);
                                        widget.model.documentFile = docPath;
                                      },
                                    )
                                  : customBottomCard(
                                      text: 'Change Document',
                                      asset: '$staticAssetsPath/inbox.png',
                                      onTap: () async {
                                        var response = await showDialog(
                                          context: context,
                                          builder: (context) => AlertDialog(
                                            title: Text(
                                              "Do you want to see existing document instead?",
                                              style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.black,
                                              ),
                                            ),
                                            actions: [
                                              ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    primary: kAppColor),
                                                onPressed: () {
                                                  Navigator.of(
                                                    context,
                                                    rootNavigator: true,
                                                  ).pop(true);
                                                },
                                                child: Text('View Document',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.white,
                                                    )),
                                              ),
                                              ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    primary: kAppColor),
                                                onPressed: () {
                                                  Navigator.of(
                                                    context,
                                                    rootNavigator: true,
                                                  ).pop(false);
                                                },
                                                child: Text(
                                                  'Change Document',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                        if (response) {
                                          widget.model
                                              .viewFile(widget.model.file!);
                                        } else {
                                          final docPath = await widget.model
                                              .openFilePicker(context);
                                          widget.model.documentFile = docPath;
                                        }
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
}
