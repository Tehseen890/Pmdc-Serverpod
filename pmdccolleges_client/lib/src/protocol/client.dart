/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:pmdccolleges_client/src/protocol/announcement.dart' as _i3;
import 'package:pmdccolleges_client/src/protocol/assignment.dart' as _i4;
import 'package:pmdccolleges_client/src/protocol/submitasignment.dart' as _i5;
import 'package:pmdccolleges_client/src/protocol/assignsubject.dart' as _i6;
import 'package:pmdccolleges_client/src/protocol/student.dart' as _i7;
import 'package:pmdccolleges_client/src/protocol/feerecord.dart' as _i8;
import 'package:pmdccolleges_client/src/protocol/library.dart' as _i9;
import 'package:pmdccolleges_client/src/protocol/noticeBoard.dart' as _i10;
import 'package:pmdccolleges_client/src/protocol/subjectDiary.dart' as _i11;
import 'package:pmdccolleges_client/src/protocol/subjectNotes.dart' as _i12;
import 'package:pmdccolleges_client/src/protocol/subjects.dart' as _i13;
import 'package:pmdccolleges_client/src/protocol/teacher.dart' as _i14;
import 'package:pmdccolleges_client/src/protocol/videoLectures.dart' as _i15;
import 'dart:io' as _i16;
import 'protocol.dart' as _i17;

class _EndpointAnnouncement extends _i1.EndpointRef {
  _EndpointAnnouncement(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'announcement';

  _i2.Future<List<_i3.Announcement>> getAnnouncementStudent(
    String studentId,
    String subjectId,
  ) =>
      caller.callServerEndpoint<List<_i3.Announcement>>(
        'announcement',
        'getAnnouncementStudent',
        {
          'studentId': studentId,
          'subjectId': subjectId,
        },
      );

  _i2.Future<List<_i3.Announcement>> getAnnouncementTeacher(
    String teacherId,
    String subjectId,
    int classId,
    int programId,
    String section,
  ) =>
      caller.callServerEndpoint<List<_i3.Announcement>>(
        'announcement',
        'getAnnouncementTeacher',
        {
          'teacherId': teacherId,
          'subjectId': subjectId,
          'classId': classId,
          'programId': programId,
          'section': section,
        },
      );

  _i2.Future<bool> addAnnouncement(_i3.Announcement announcement) =>
      caller.callServerEndpoint<bool>(
        'announcement',
        'addAnnouncement',
        {'announcement': announcement},
      );

  _i2.Future<bool> updateAnnouncement(_i3.Announcement announcement) =>
      caller.callServerEndpoint<bool>(
        'announcement',
        'updateAnnouncement',
        {'announcement': announcement},
      );

  _i2.Future<bool> deleteAnnouncement(int assignmentId) =>
      caller.callServerEndpoint<bool>(
        'announcement',
        'deleteAnnouncement',
        {'assignmentId': assignmentId},
      );
}

class _EndpointAssignment extends _i1.EndpointRef {
  _EndpointAssignment(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'assignment';

  _i2.Future<List<_i4.Assignments>> getAssignmentsStudent(
    String studentId,
    String subjectId,
  ) =>
      caller.callServerEndpoint<List<_i4.Assignments>>(
        'assignment',
        'getAssignmentsStudent',
        {
          'studentId': studentId,
          'subjectId': subjectId,
        },
      );

  _i2.Future<List<_i4.Assignments>> getAssignmentsTeacher(
    String teacherId,
    String subjectId,
    int classId,
    int programId,
    String section,
  ) =>
      caller.callServerEndpoint<List<_i4.Assignments>>(
        'assignment',
        'getAssignmentsTeacher',
        {
          'teacherId': teacherId,
          'subjectId': subjectId,
          'classId': classId,
          'programId': programId,
          'section': section,
        },
      );

  _i2.Future<bool> addAssignment(_i4.Assignments assignment) =>
      caller.callServerEndpoint<bool>(
        'assignment',
        'addAssignment',
        {'assignment': assignment},
      );

  _i2.Future<bool> updateAssignment(_i4.Assignments assignment) =>
      caller.callServerEndpoint<bool>(
        'assignment',
        'updateAssignment',
        {'assignment': assignment},
      );

  _i2.Future<bool> deleteAssignment(int assignmentId) =>
      caller.callServerEndpoint<bool>(
        'assignment',
        'deleteAssignment',
        {'assignmentId': assignmentId},
      );

  _i2.Future<bool> submitAsignment(_i5.Submitasignment asignment) =>
      caller.callServerEndpoint<bool>(
        'assignment',
        'submitAsignment',
        {'asignment': asignment},
      );

  _i2.Future<List<_i5.Submitasignment>> getSubmitasignment(int? assignmentId) =>
      caller.callServerEndpoint<List<_i5.Submitasignment>>(
        'assignment',
        'getSubmitasignment',
        {'assignmentId': assignmentId},
      );

  _i2.Future<List<_i5.Submitasignment>?> getSubmitasignmentForStudent(
    String studentId,
    int subjectId,
  ) =>
      caller.callServerEndpoint<List<_i5.Submitasignment>?>(
        'assignment',
        'getSubmitasignmentForStudent',
        {
          'studentId': studentId,
          'subjectId': subjectId,
        },
      );
}

class _EndpointAssignSubjects extends _i1.EndpointRef {
  _EndpointAssignSubjects(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'assignSubjects';

  _i2.Future<List<_i6.AssignSubjects>?> getTeacherSubjects(int? teacherId) =>
      caller.callServerEndpoint<List<_i6.AssignSubjects>?>(
        'assignSubjects',
        'getTeacherSubjects',
        {'teacherId': teacherId},
      );

  _i2.Future<bool?> addStudent(_i7.Student student) =>
      caller.callServerEndpoint<bool?>(
        'assignSubjects',
        'addStudent',
        {'student': student},
      );
}

class _EndpointExample extends _i1.EndpointRef {
  _EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );
}

class _EndpointFeeRecord extends _i1.EndpointRef {
  _EndpointFeeRecord(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'feeRecord';

  _i2.Future<List<_i8.FeeRecord>> getFeeRecord(String studentId) =>
      caller.callServerEndpoint<List<_i8.FeeRecord>>(
        'feeRecord',
        'getFeeRecord',
        {'studentId': studentId},
      );
}

class _EndpointLibrary extends _i1.EndpointRef {
  _EndpointLibrary(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'library';

  _i2.Future<List<_i9.Library>> getBooks(String studentId) =>
      caller.callServerEndpoint<List<_i9.Library>>(
        'library',
        'getBooks',
        {'studentId': studentId},
      );
}

class _EndpointNoticeBoard extends _i1.EndpointRef {
  _EndpointNoticeBoard(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'noticeBoard';

  _i2.Future<List<_i10.NoticeBoard>> getNotice() =>
      caller.callServerEndpoint<List<_i10.NoticeBoard>>(
        'noticeBoard',
        'getNotice',
        {},
      );
}

class _EndpointStudent extends _i1.EndpointRef {
  _EndpointStudent(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'student';

  _i2.Future<_i7.Student?> getStudent(
    String? id,
    String password,
  ) =>
      caller.callServerEndpoint<_i7.Student?>(
        'student',
        'getStudent',
        {
          'id': id,
          'password': password,
        },
      );

  _i2.Future<bool?> addStudent(_i7.Student student) =>
      caller.callServerEndpoint<bool?>(
        'student',
        'addStudent',
        {'student': student},
      );

  _i2.Future<List<_i7.Student>?> getStudents(
    int classId,
    int programId,
    String section,
  ) =>
      caller.callServerEndpoint<List<_i7.Student>?>(
        'student',
        'getStudents',
        {
          'classId': classId,
          'programId': programId,
          'section': section,
        },
      );
}

class _EndpointSubjectdiary extends _i1.EndpointRef {
  _EndpointSubjectdiary(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'subjectdiary';

  _i2.Future<List<_i11.SubjectDiary>> getSubjectDiary(
    String studentId,
    String subjectId,
  ) =>
      caller.callServerEndpoint<List<_i11.SubjectDiary>>(
        'subjectdiary',
        'getSubjectDiary',
        {
          'studentId': studentId,
          'subjectId': subjectId,
        },
      );

  _i2.Future<List<_i11.SubjectDiary>> getSubjectDiaryTeacher(
    String teacherId,
    String subjectId,
    int classId,
    int programId,
    String section,
  ) =>
      caller.callServerEndpoint<List<_i11.SubjectDiary>>(
        'subjectdiary',
        'getSubjectDiaryTeacher',
        {
          'teacherId': teacherId,
          'subjectId': subjectId,
          'classId': classId,
          'programId': programId,
          'section': section,
        },
      );

  _i2.Future<bool> addSubjectDiary(_i11.SubjectDiary announcement) =>
      caller.callServerEndpoint<bool>(
        'subjectdiary',
        'addSubjectDiary',
        {'announcement': announcement},
      );

  _i2.Future<bool> updateSubjectDiary(_i11.SubjectDiary announcement) =>
      caller.callServerEndpoint<bool>(
        'subjectdiary',
        'updateSubjectDiary',
        {'announcement': announcement},
      );

  _i2.Future<bool> deleteSubjectDiary(int assignmentId) =>
      caller.callServerEndpoint<bool>(
        'subjectdiary',
        'deleteSubjectDiary',
        {'assignmentId': assignmentId},
      );
}

class _EndpointSubjectnotes extends _i1.EndpointRef {
  _EndpointSubjectnotes(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'subjectnotes';

  _i2.Future<List<_i12.SubjectNotes>> getSubjecrNotes(
    String studentId,
    String subjectId,
  ) =>
      caller.callServerEndpoint<List<_i12.SubjectNotes>>(
        'subjectnotes',
        'getSubjecrNotes',
        {
          'studentId': studentId,
          'subjectId': subjectId,
        },
      );

  _i2.Future<List<_i12.SubjectNotes>> getSubjectNotesTeacher(
    String teacherId,
    String subjectId,
    int classId,
    int programId,
    String section,
  ) =>
      caller.callServerEndpoint<List<_i12.SubjectNotes>>(
        'subjectnotes',
        'getSubjectNotesTeacher',
        {
          'teacherId': teacherId,
          'subjectId': subjectId,
          'classId': classId,
          'programId': programId,
          'section': section,
        },
      );

  _i2.Future<List<_i12.SubjectNotes>?> getTeacherNotes(String teacherId) =>
      caller.callServerEndpoint<List<_i12.SubjectNotes>?>(
        'subjectnotes',
        'getTeacherNotes',
        {'teacherId': teacherId},
      );

  _i2.Future<bool> addSubjectNotes(_i12.SubjectNotes subjectNotes) =>
      caller.callServerEndpoint<bool>(
        'subjectnotes',
        'addSubjectNotes',
        {'subjectNotes': subjectNotes},
      );

  _i2.Future<bool> updateSubjectNotes(_i12.SubjectNotes subjectNotes) =>
      caller.callServerEndpoint<bool>(
        'subjectnotes',
        'updateSubjectNotes',
        {'subjectNotes': subjectNotes},
      );

  _i2.Future<bool> deleteSubjectNotes(int notesId) =>
      caller.callServerEndpoint<bool>(
        'subjectnotes',
        'deleteSubjectNotes',
        {'notesId': notesId},
      );
}

class _EndpointSubjects extends _i1.EndpointRef {
  _EndpointSubjects(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'subjects';

  _i2.Future<List<_i13.Subjects>> getSubjects(
    int? classId,
    int? programId,
  ) =>
      caller.callServerEndpoint<List<_i13.Subjects>>(
        'subjects',
        'getSubjects',
        {
          'classId': classId,
          'programId': programId,
        },
      );
}

class _EndpointTeacher extends _i1.EndpointRef {
  _EndpointTeacher(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'teacher';

  _i2.Future<_i14.Teacher?> getTeacher(
    String? teacherId,
    String password,
  ) =>
      caller.callServerEndpoint<_i14.Teacher?>(
        'teacher',
        'getTeacher',
        {
          'teacherId': teacherId,
          'password': password,
        },
      );

  _i2.Future<bool?> addStudent(_i7.Student student) =>
      caller.callServerEndpoint<bool?>(
        'teacher',
        'addStudent',
        {'student': student},
      );
}

class _EndpointVideolecture extends _i1.EndpointRef {
  _EndpointVideolecture(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'videolecture';

  _i2.Future<List<_i15.VideoLectures>> getVideoLecture(
    String studentId,
    int subjectId,
  ) =>
      caller.callServerEndpoint<List<_i15.VideoLectures>>(
        'videolecture',
        'getVideoLecture',
        {
          'studentId': studentId,
          'subjectId': subjectId,
        },
      );

  _i2.Future<List<_i15.VideoLectures>> getVideoLectureTeacher(
    int teacherId,
    int subjectId,
    int classId,
    int programId,
    String section,
  ) =>
      caller.callServerEndpoint<List<_i15.VideoLectures>>(
        'videolecture',
        'getVideoLectureTeacher',
        {
          'teacherId': teacherId,
          'subjectId': subjectId,
          'classId': classId,
          'programId': programId,
          'section': section,
        },
      );

  _i2.Future<bool> addVideoLecture(_i15.VideoLectures subjectNotes) =>
      caller.callServerEndpoint<bool>(
        'videolecture',
        'addVideoLecture',
        {'subjectNotes': subjectNotes},
      );

  _i2.Future<bool> updateVideoLectures(_i15.VideoLectures subjectNotes) =>
      caller.callServerEndpoint<bool>(
        'videolecture',
        'updateVideoLectures',
        {'subjectNotes': subjectNotes},
      );

  _i2.Future<bool> deleteVideoLectures(int notesId) =>
      caller.callServerEndpoint<bool>(
        'videolecture',
        'deleteVideoLectures',
        {'notesId': notesId},
      );
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    _i16.SecurityContext? context,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
  }) : super(
          host,
          _i17.Protocol(),
          context: context,
          authenticationKeyManager: authenticationKeyManager,
        ) {
    announcement = _EndpointAnnouncement(this);
    assignment = _EndpointAssignment(this);
    assignSubjects = _EndpointAssignSubjects(this);
    example = _EndpointExample(this);
    feeRecord = _EndpointFeeRecord(this);
    library = _EndpointLibrary(this);
    noticeBoard = _EndpointNoticeBoard(this);
    student = _EndpointStudent(this);
    subjectdiary = _EndpointSubjectdiary(this);
    subjectnotes = _EndpointSubjectnotes(this);
    subjects = _EndpointSubjects(this);
    teacher = _EndpointTeacher(this);
    videolecture = _EndpointVideolecture(this);
  }

  late final _EndpointAnnouncement announcement;

  late final _EndpointAssignment assignment;

  late final _EndpointAssignSubjects assignSubjects;

  late final _EndpointExample example;

  late final _EndpointFeeRecord feeRecord;

  late final _EndpointLibrary library;

  late final _EndpointNoticeBoard noticeBoard;

  late final _EndpointStudent student;

  late final _EndpointSubjectdiary subjectdiary;

  late final _EndpointSubjectnotes subjectnotes;

  late final _EndpointSubjects subjects;

  late final _EndpointTeacher teacher;

  late final _EndpointVideolecture videolecture;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'announcement': announcement,
        'assignment': assignment,
        'assignSubjects': assignSubjects,
        'example': example,
        'feeRecord': feeRecord,
        'library': library,
        'noticeBoard': noticeBoard,
        'student': student,
        'subjectdiary': subjectdiary,
        'subjectnotes': subjectnotes,
        'subjects': subjects,
        'teacher': teacher,
        'videolecture': videolecture,
      };
  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
