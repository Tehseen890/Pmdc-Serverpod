/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod/serverpod.dart' as _i1;
import 'announcement.dart' as _i2;
import 'assignment.dart' as _i3;
import 'assignsubject.dart' as _i4;
import 'example.dart' as _i5;
import 'feerecord.dart' as _i6;
import 'library.dart' as _i7;
import 'noticeBoard.dart' as _i8;
import 'programs.dart' as _i9;
import 'quizes.dart' as _i10;
import 'student.dart' as _i11;
import 'subjectDiary.dart' as _i12;
import 'subjectNotes.dart' as _i13;
import 'subjects.dart' as _i14;
import 'submission.dart' as _i15;
import 'submitasignment.dart' as _i16;
import 'submittedassignments.dart' as _i17;
import 'teacher.dart' as _i18;
import 'videoLectures.dart' as _i19;
import 'package:pmdccolleges_server/src/generated/announcement.dart' as _i20;
import 'package:pmdccolleges_server/src/generated/assignment.dart' as _i21;
import 'package:pmdccolleges_server/src/generated/submitasignment.dart' as _i22;
import 'package:pmdccolleges_server/src/generated/assignsubject.dart' as _i23;
import 'package:pmdccolleges_server/src/generated/feerecord.dart' as _i24;
import 'package:pmdccolleges_server/src/generated/library.dart' as _i25;
import 'package:pmdccolleges_server/src/generated/noticeBoard.dart' as _i26;
import 'package:pmdccolleges_server/src/generated/student.dart' as _i27;
import 'package:pmdccolleges_server/src/generated/subjectDiary.dart' as _i28;
import 'package:pmdccolleges_server/src/generated/subjectNotes.dart' as _i29;
import 'package:pmdccolleges_server/src/generated/subjects.dart' as _i30;
import 'package:pmdccolleges_server/src/generated/videoLectures.dart' as _i31;
import 'package:serverpod/protocol.dart' as _i32;
export 'announcement.dart';
export 'assignment.dart';
export 'assignsubject.dart';
export 'example.dart';
export 'feerecord.dart';
export 'library.dart';
export 'noticeBoard.dart';
export 'programs.dart';
export 'quizes.dart';
export 'student.dart';
export 'subjectDiary.dart';
export 'subjectNotes.dart';
export 'subjects.dart';
export 'submission.dart';
export 'submitasignment.dart';
export 'submittedassignments.dart';
export 'teacher.dart';
export 'videoLectures.dart'; // ignore_for_file: equal_keys_in_map

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i2.Announcement) {
      return _i2.Announcement.fromJson(data, this) as T;
    }
    if (t == _i3.Assignments) {
      return _i3.Assignments.fromJson(data, this) as T;
    }
    if (t == _i4.AssignSubjects) {
      return _i4.AssignSubjects.fromJson(data, this) as T;
    }
    if (t == _i5.Example) {
      return _i5.Example.fromJson(data, this) as T;
    }
    if (t == _i6.FeeRecord) {
      return _i6.FeeRecord.fromJson(data, this) as T;
    }
    if (t == _i7.Library) {
      return _i7.Library.fromJson(data, this) as T;
    }
    if (t == _i8.NoticeBoard) {
      return _i8.NoticeBoard.fromJson(data, this) as T;
    }
    if (t == _i9.Program) {
      return _i9.Program.fromJson(data, this) as T;
    }
    if (t == _i10.Quizes) {
      return _i10.Quizes.fromJson(data, this) as T;
    }
    if (t == _i11.Student) {
      return _i11.Student.fromJson(data, this) as T;
    }
    if (t == _i12.SubjectDiary) {
      return _i12.SubjectDiary.fromJson(data, this) as T;
    }
    if (t == _i13.SubjectNotes) {
      return _i13.SubjectNotes.fromJson(data, this) as T;
    }
    if (t == _i14.Subjects) {
      return _i14.Subjects.fromJson(data, this) as T;
    }
    if (t == _i15.Submission) {
      return _i15.Submission.fromJson(data, this) as T;
    }
    if (t == _i16.Submitasignment) {
      return _i16.Submitasignment.fromJson(data, this) as T;
    }
    if (t == _i17.SubmittedAssignments) {
      return _i17.SubmittedAssignments.fromJson(data, this) as T;
    }
    if (t == _i18.Teacher) {
      return _i18.Teacher.fromJson(data, this) as T;
    }
    if (t == _i19.VideoLectures) {
      return _i19.VideoLectures.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i2.Announcement?>()) {
      return (data != null ? _i2.Announcement.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i3.Assignments?>()) {
      return (data != null ? _i3.Assignments.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i4.AssignSubjects?>()) {
      return (data != null ? _i4.AssignSubjects.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i5.Example?>()) {
      return (data != null ? _i5.Example.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i6.FeeRecord?>()) {
      return (data != null ? _i6.FeeRecord.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i7.Library?>()) {
      return (data != null ? _i7.Library.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i8.NoticeBoard?>()) {
      return (data != null ? _i8.NoticeBoard.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i9.Program?>()) {
      return (data != null ? _i9.Program.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i10.Quizes?>()) {
      return (data != null ? _i10.Quizes.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i11.Student?>()) {
      return (data != null ? _i11.Student.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i12.SubjectDiary?>()) {
      return (data != null ? _i12.SubjectDiary.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i13.SubjectNotes?>()) {
      return (data != null ? _i13.SubjectNotes.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i14.Subjects?>()) {
      return (data != null ? _i14.Subjects.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i15.Submission?>()) {
      return (data != null ? _i15.Submission.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i16.Submitasignment?>()) {
      return (data != null ? _i16.Submitasignment.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i17.SubmittedAssignments?>()) {
      return (data != null
          ? _i17.SubmittedAssignments.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<_i18.Teacher?>()) {
      return (data != null ? _i18.Teacher.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i19.VideoLectures?>()) {
      return (data != null ? _i19.VideoLectures.fromJson(data, this) : null)
          as T;
    }
    if (t == List<_i20.Announcement>) {
      return (data as List)
          .map((e) => deserialize<_i20.Announcement>(e))
          .toList() as dynamic;
    }
    if (t == List<_i21.Assignments>) {
      return (data as List)
          .map((e) => deserialize<_i21.Assignments>(e))
          .toList() as dynamic;
    }
    if (t == List<_i22.Submitasignment>) {
      return (data as List)
          .map((e) => deserialize<_i22.Submitasignment>(e))
          .toList() as dynamic;
    }
    if (t == _i1.getType<List<_i22.Submitasignment>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i22.Submitasignment>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i23.AssignSubjects>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i23.AssignSubjects>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == List<_i24.FeeRecord>) {
      return (data as List).map((e) => deserialize<_i24.FeeRecord>(e)).toList()
          as dynamic;
    }
    if (t == List<_i25.Library>) {
      return (data as List).map((e) => deserialize<_i25.Library>(e)).toList()
          as dynamic;
    }
    if (t == List<_i26.NoticeBoard>) {
      return (data as List)
          .map((e) => deserialize<_i26.NoticeBoard>(e))
          .toList() as dynamic;
    }
    if (t == _i1.getType<List<_i27.Student>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i27.Student>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i28.SubjectDiary>) {
      return (data as List)
          .map((e) => deserialize<_i28.SubjectDiary>(e))
          .toList() as dynamic;
    }
    if (t == List<_i29.SubjectNotes>) {
      return (data as List)
          .map((e) => deserialize<_i29.SubjectNotes>(e))
          .toList() as dynamic;
    }
    if (t == _i1.getType<List<_i29.SubjectNotes>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i29.SubjectNotes>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == List<_i30.Subjects>) {
      return (data as List).map((e) => deserialize<_i30.Subjects>(e)).toList()
          as dynamic;
    }
    if (t == List<_i31.VideoLectures>) {
      return (data as List)
          .map((e) => deserialize<_i31.VideoLectures>(e))
          .toList() as dynamic;
    }
    try {
      return _i32.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i2.Announcement) {
      return 'Announcement';
    }
    if (data is _i3.Assignments) {
      return 'Assignments';
    }
    if (data is _i4.AssignSubjects) {
      return 'AssignSubjects';
    }
    if (data is _i5.Example) {
      return 'Example';
    }
    if (data is _i6.FeeRecord) {
      return 'FeeRecord';
    }
    if (data is _i7.Library) {
      return 'Library';
    }
    if (data is _i8.NoticeBoard) {
      return 'NoticeBoard';
    }
    if (data is _i9.Program) {
      return 'Program';
    }
    if (data is _i10.Quizes) {
      return 'Quizes';
    }
    if (data is _i11.Student) {
      return 'Student';
    }
    if (data is _i12.SubjectDiary) {
      return 'SubjectDiary';
    }
    if (data is _i13.SubjectNotes) {
      return 'SubjectNotes';
    }
    if (data is _i14.Subjects) {
      return 'Subjects';
    }
    if (data is _i15.Submission) {
      return 'Submission';
    }
    if (data is _i16.Submitasignment) {
      return 'Submitasignment';
    }
    if (data is _i17.SubmittedAssignments) {
      return 'SubmittedAssignments';
    }
    if (data is _i18.Teacher) {
      return 'Teacher';
    }
    if (data is _i19.VideoLectures) {
      return 'VideoLectures';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'Announcement') {
      return deserialize<_i2.Announcement>(data['data']);
    }
    if (data['className'] == 'Assignments') {
      return deserialize<_i3.Assignments>(data['data']);
    }
    if (data['className'] == 'AssignSubjects') {
      return deserialize<_i4.AssignSubjects>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i5.Example>(data['data']);
    }
    if (data['className'] == 'FeeRecord') {
      return deserialize<_i6.FeeRecord>(data['data']);
    }
    if (data['className'] == 'Library') {
      return deserialize<_i7.Library>(data['data']);
    }
    if (data['className'] == 'NoticeBoard') {
      return deserialize<_i8.NoticeBoard>(data['data']);
    }
    if (data['className'] == 'Program') {
      return deserialize<_i9.Program>(data['data']);
    }
    if (data['className'] == 'Quizes') {
      return deserialize<_i10.Quizes>(data['data']);
    }
    if (data['className'] == 'Student') {
      return deserialize<_i11.Student>(data['data']);
    }
    if (data['className'] == 'SubjectDiary') {
      return deserialize<_i12.SubjectDiary>(data['data']);
    }
    if (data['className'] == 'SubjectNotes') {
      return deserialize<_i13.SubjectNotes>(data['data']);
    }
    if (data['className'] == 'Subjects') {
      return deserialize<_i14.Subjects>(data['data']);
    }
    if (data['className'] == 'Submission') {
      return deserialize<_i15.Submission>(data['data']);
    }
    if (data['className'] == 'Submitasignment') {
      return deserialize<_i16.Submitasignment>(data['data']);
    }
    if (data['className'] == 'SubmittedAssignments') {
      return deserialize<_i17.SubmittedAssignments>(data['data']);
    }
    if (data['className'] == 'Teacher') {
      return deserialize<_i18.Teacher>(data['data']);
    }
    if (data['className'] == 'VideoLectures') {
      return deserialize<_i19.VideoLectures>(data['data']);
    }
    return super.deserializeByClassName(data);
  }

  @override
  _i1.Table? getTableForType(Type t) {
    {
      var table = _i32.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    switch (t) {
      case _i2.Announcement:
        return _i2.Announcement.t;
      case _i3.Assignments:
        return _i3.Assignments.t;
      case _i4.AssignSubjects:
        return _i4.AssignSubjects.t;
      case _i6.FeeRecord:
        return _i6.FeeRecord.t;
      case _i7.Library:
        return _i7.Library.t;
      case _i8.NoticeBoard:
        return _i8.NoticeBoard.t;
      case _i9.Program:
        return _i9.Program.t;
      case _i10.Quizes:
        return _i10.Quizes.t;
      case _i11.Student:
        return _i11.Student.t;
      case _i12.SubjectDiary:
        return _i12.SubjectDiary.t;
      case _i13.SubjectNotes:
        return _i13.SubjectNotes.t;
      case _i14.Subjects:
        return _i14.Subjects.t;
      case _i15.Submission:
        return _i15.Submission.t;
      case _i16.Submitasignment:
        return _i16.Submitasignment.t;
      case _i17.SubmittedAssignments:
        return _i17.SubmittedAssignments.t;
      case _i18.Teacher:
        return _i18.Teacher.t;
      case _i19.VideoLectures:
        return _i19.VideoLectures.t;
    }
    return null;
  }
}
