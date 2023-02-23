/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:pmdccolleges_client/src/protocol/feerecord.dart' as _i3;
import 'package:pmdccolleges_client/src/protocol/noticeBoard.dart' as _i4;
import 'package:pmdccolleges_client/src/protocol/student.dart' as _i5;
import 'package:pmdccolleges_client/src/protocol/subjects.dart' as _i6;
import 'dart:io' as _i7;
import 'protocol.dart' as _i8;

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

  _i2.Future<List<_i3.FeeRecord>> getFeeRecord(String studentId) =>
      caller.callServerEndpoint<List<_i3.FeeRecord>>(
        'feeRecord',
        'getFeeRecord',
        {'studentId': studentId},
      );
}

class _EndpointNoticeBoard extends _i1.EndpointRef {
  _EndpointNoticeBoard(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'noticeBoard';

  _i2.Future<List<_i4.NoticeBoard>> getNotice() =>
      caller.callServerEndpoint<List<_i4.NoticeBoard>>(
        'noticeBoard',
        'getNotice',
        {},
      );
}

class _EndpointStudent extends _i1.EndpointRef {
  _EndpointStudent(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'student';

  _i2.Future<_i5.Student?> getStudent(String? id) =>
      caller.callServerEndpoint<_i5.Student?>(
        'student',
        'getStudent',
        {'id': id},
      );

  _i2.Future<bool?> addStudent(_i5.Student student) =>
      caller.callServerEndpoint<bool?>(
        'student',
        'addStudent',
        {'student': student},
      );
}

class _EndpointSubjects extends _i1.EndpointRef {
  _EndpointSubjects(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'subjects';

  _i2.Future<List<_i6.Subjects>> getSubjects(
    int? classId,
    int? programId,
  ) =>
      caller.callServerEndpoint<List<_i6.Subjects>>(
        'subjects',
        'getSubjects',
        {
          'classId': classId,
          'programId': programId,
        },
      );
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    _i7.SecurityContext? context,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
  }) : super(
          host,
          _i8.Protocol(),
          context: context,
          authenticationKeyManager: authenticationKeyManager,
        ) {
    example = _EndpointExample(this);
    feeRecord = _EndpointFeeRecord(this);
    noticeBoard = _EndpointNoticeBoard(this);
    student = _EndpointStudent(this);
    subjects = _EndpointSubjects(this);
  }

  late final _EndpointExample example;

  late final _EndpointFeeRecord feeRecord;

  late final _EndpointNoticeBoard noticeBoard;

  late final _EndpointStudent student;

  late final _EndpointSubjects subjects;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'example': example,
        'feeRecord': feeRecord,
        'noticeBoard': noticeBoard,
        'student': student,
        'subjects': subjects,
      };
  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
