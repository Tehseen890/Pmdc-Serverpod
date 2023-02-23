/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod/serverpod.dart' as _i1;
import 'assignment.dart' as _i2;
import 'example.dart' as _i3;
import 'feerecord.dart' as _i4;
import 'noticeBoard.dart' as _i5;
import 'programs.dart' as _i6;
import 'quizes.dart' as _i7;
import 'student.dart' as _i8;
import 'subjectDiary.dart' as _i9;
import 'subjectNotes.dart' as _i10;
import 'subjects.dart' as _i11;
import 'teacher.dart' as _i12;
import 'videoLectures.dart' as _i13;
import 'package:pmdccolleges_server/src/generated/feerecord.dart' as _i14;
import 'package:pmdccolleges_server/src/generated/noticeBoard.dart' as _i15;
import 'package:pmdccolleges_server/src/generated/subjects.dart' as _i16;
import 'package:serverpod/protocol.dart' as _i17;
export 'assignment.dart';
export 'example.dart';
export 'feerecord.dart';
export 'noticeBoard.dart';
export 'programs.dart';
export 'quizes.dart';
export 'student.dart';
export 'subjectDiary.dart';
export 'subjectNotes.dart';
export 'subjects.dart';
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
    if (t == _i2.Assignments) {
      return _i2.Assignments.fromJson(data, this) as T;
    }
    if (t == _i3.Example) {
      return _i3.Example.fromJson(data, this) as T;
    }
    if (t == _i4.FeeRecord) {
      return _i4.FeeRecord.fromJson(data, this) as T;
    }
    if (t == _i5.NoticeBoard) {
      return _i5.NoticeBoard.fromJson(data, this) as T;
    }
    if (t == _i6.Program) {
      return _i6.Program.fromJson(data, this) as T;
    }
    if (t == _i7.Quizes) {
      return _i7.Quizes.fromJson(data, this) as T;
    }
    if (t == _i8.Student) {
      return _i8.Student.fromJson(data, this) as T;
    }
    if (t == _i9.SubjectDiary) {
      return _i9.SubjectDiary.fromJson(data, this) as T;
    }
    if (t == _i10.SubjectNotes) {
      return _i10.SubjectNotes.fromJson(data, this) as T;
    }
    if (t == _i11.Subjects) {
      return _i11.Subjects.fromJson(data, this) as T;
    }
    if (t == _i12.Teacher) {
      return _i12.Teacher.fromJson(data, this) as T;
    }
    if (t == _i13.VideoLectures) {
      return _i13.VideoLectures.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i2.Assignments?>()) {
      return (data != null ? _i2.Assignments.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i3.Example?>()) {
      return (data != null ? _i3.Example.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i4.FeeRecord?>()) {
      return (data != null ? _i4.FeeRecord.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i5.NoticeBoard?>()) {
      return (data != null ? _i5.NoticeBoard.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i6.Program?>()) {
      return (data != null ? _i6.Program.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i7.Quizes?>()) {
      return (data != null ? _i7.Quizes.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i8.Student?>()) {
      return (data != null ? _i8.Student.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i9.SubjectDiary?>()) {
      return (data != null ? _i9.SubjectDiary.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i10.SubjectNotes?>()) {
      return (data != null ? _i10.SubjectNotes.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i11.Subjects?>()) {
      return (data != null ? _i11.Subjects.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i12.Teacher?>()) {
      return (data != null ? _i12.Teacher.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i13.VideoLectures?>()) {
      return (data != null ? _i13.VideoLectures.fromJson(data, this) : null)
          as T;
    }
    if (t == List<_i14.FeeRecord>) {
      return (data as List).map((e) => deserialize<_i14.FeeRecord>(e)).toList()
          as dynamic;
    }
    if (t == List<_i15.NoticeBoard>) {
      return (data as List)
          .map((e) => deserialize<_i15.NoticeBoard>(e))
          .toList() as dynamic;
    }
    if (t == List<_i16.Subjects>) {
      return (data as List).map((e) => deserialize<_i16.Subjects>(e)).toList()
          as dynamic;
    }
    try {
      return _i17.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i2.Assignments) {
      return 'Assignments';
    }
    if (data is _i3.Example) {
      return 'Example';
    }
    if (data is _i4.FeeRecord) {
      return 'FeeRecord';
    }
    if (data is _i5.NoticeBoard) {
      return 'NoticeBoard';
    }
    if (data is _i6.Program) {
      return 'Program';
    }
    if (data is _i7.Quizes) {
      return 'Quizes';
    }
    if (data is _i8.Student) {
      return 'Student';
    }
    if (data is _i9.SubjectDiary) {
      return 'SubjectDiary';
    }
    if (data is _i10.SubjectNotes) {
      return 'SubjectNotes';
    }
    if (data is _i11.Subjects) {
      return 'Subjects';
    }
    if (data is _i12.Teacher) {
      return 'Teacher';
    }
    if (data is _i13.VideoLectures) {
      return 'VideoLectures';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'Assignments') {
      return deserialize<_i2.Assignments>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i3.Example>(data['data']);
    }
    if (data['className'] == 'FeeRecord') {
      return deserialize<_i4.FeeRecord>(data['data']);
    }
    if (data['className'] == 'NoticeBoard') {
      return deserialize<_i5.NoticeBoard>(data['data']);
    }
    if (data['className'] == 'Program') {
      return deserialize<_i6.Program>(data['data']);
    }
    if (data['className'] == 'Quizes') {
      return deserialize<_i7.Quizes>(data['data']);
    }
    if (data['className'] == 'Student') {
      return deserialize<_i8.Student>(data['data']);
    }
    if (data['className'] == 'SubjectDiary') {
      return deserialize<_i9.SubjectDiary>(data['data']);
    }
    if (data['className'] == 'SubjectNotes') {
      return deserialize<_i10.SubjectNotes>(data['data']);
    }
    if (data['className'] == 'Subjects') {
      return deserialize<_i11.Subjects>(data['data']);
    }
    if (data['className'] == 'Teacher') {
      return deserialize<_i12.Teacher>(data['data']);
    }
    if (data['className'] == 'VideoLectures') {
      return deserialize<_i13.VideoLectures>(data['data']);
    }
    return super.deserializeByClassName(data);
  }

  @override
  _i1.Table? getTableForType(Type t) {
    {
      var table = _i17.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    switch (t) {
      case _i2.Assignments:
        return _i2.Assignments.t;
      case _i4.FeeRecord:
        return _i4.FeeRecord.t;
      case _i5.NoticeBoard:
        return _i5.NoticeBoard.t;
      case _i6.Program:
        return _i6.Program.t;
      case _i7.Quizes:
        return _i7.Quizes.t;
      case _i8.Student:
        return _i8.Student.t;
      case _i9.SubjectDiary:
        return _i9.SubjectDiary.t;
      case _i10.SubjectNotes:
        return _i10.SubjectNotes.t;
      case _i11.Subjects:
        return _i11.Subjects.t;
      case _i12.Teacher:
        return _i12.Teacher.t;
      case _i13.VideoLectures:
        return _i13.VideoLectures.t;
    }
    return null;
  }
}
