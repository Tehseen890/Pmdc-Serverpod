/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/example_endpoint.dart' as _i2;
import '../endpoints/feerecord_endpoint.dart' as _i3;
import '../endpoints/noticeboard_endpoint.dart' as _i4;
import '../endpoints/student_endpoint.dart' as _i5;
import '../endpoints/subjects_endpoint.dart' as _i6;
import 'package:pmdccolleges_server/src/generated/student.dart' as _i7;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'example': _i2.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
      'feeRecord': _i3.FeeRecordEndpoint()
        ..initialize(
          server,
          'feeRecord',
          null,
        ),
      'noticeBoard': _i4.NoticeBoardEndpoint()
        ..initialize(
          server,
          'noticeBoard',
          null,
        ),
      'student': _i5.StudentEndpoint()
        ..initialize(
          server,
          'student',
          null,
        ),
      'subjects': _i6.SubjectsEndpoint()
        ..initialize(
          server,
          'subjects',
          null,
        ),
    };
    connectors['example'] = _i1.EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i2.ExampleEndpoint).hello(
            session,
            params['name'],
          ),
        )
      },
    );
    connectors['feeRecord'] = _i1.EndpointConnector(
      name: 'feeRecord',
      endpoint: endpoints['feeRecord']!,
      methodConnectors: {
        'getFeeRecord': _i1.MethodConnector(
          name: 'getFeeRecord',
          params: {
            'studentId': _i1.ParameterDescription(
              name: 'studentId',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['feeRecord'] as _i3.FeeRecordEndpoint).getFeeRecord(
            session,
            params['studentId'],
          ),
        )
      },
    );
    connectors['noticeBoard'] = _i1.EndpointConnector(
      name: 'noticeBoard',
      endpoint: endpoints['noticeBoard']!,
      methodConnectors: {
        'getNotice': _i1.MethodConnector(
          name: 'getNotice',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['noticeBoard'] as _i4.NoticeBoardEndpoint)
                  .getNotice(session),
        )
      },
    );
    connectors['student'] = _i1.EndpointConnector(
      name: 'student',
      endpoint: endpoints['student']!,
      methodConnectors: {
        'getStudent': _i1.MethodConnector(
          name: 'getStudent',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<String?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['student'] as _i5.StudentEndpoint).getStudent(
            session,
            params['id'],
          ),
        ),
        'addStudent': _i1.MethodConnector(
          name: 'addStudent',
          params: {
            'student': _i1.ParameterDescription(
              name: 'student',
              type: _i1.getType<_i7.Student>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['student'] as _i5.StudentEndpoint).addStudent(
            session,
            params['student'],
          ),
        ),
      },
    );
    connectors['subjects'] = _i1.EndpointConnector(
      name: 'subjects',
      endpoint: endpoints['subjects']!,
      methodConnectors: {
        'getSubjects': _i1.MethodConnector(
          name: 'getSubjects',
          params: {
            'classId': _i1.ParameterDescription(
              name: 'classId',
              type: _i1.getType<int?>(),
              nullable: true,
            ),
            'programId': _i1.ParameterDescription(
              name: 'programId',
              type: _i1.getType<int?>(),
              nullable: true,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['subjects'] as _i6.SubjectsEndpoint).getSubjects(
            session,
            params['classId'],
            params['programId'],
          ),
        )
      },
    );
  }
}
