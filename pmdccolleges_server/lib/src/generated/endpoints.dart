/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/announcement.dart' as _i2;
import '../endpoints/assignment_endpoint.dart' as _i3;
import '../endpoints/assignsubjects_endpoint.dart' as _i4;
import '../endpoints/example_endpoint.dart' as _i5;
import '../endpoints/feerecord_endpoint.dart' as _i6;
import '../endpoints/library.dart' as _i7;
import '../endpoints/noticeboard_endpoint.dart' as _i8;
import '../endpoints/student_endpoint.dart' as _i9;
import '../endpoints/subjectdiary_endpoint.dart' as _i10;
import '../endpoints/subjectnotes_endpoint.dart' as _i11;
import '../endpoints/subjects_endpoint.dart' as _i12;
import '../endpoints/teacher_endpoint.dart' as _i13;
import '../endpoints/videolectures.dart' as _i14;
import 'package:pmdccolleges_server/src/generated/announcement.dart' as _i15;
import 'package:pmdccolleges_server/src/generated/assignment.dart' as _i16;
import 'package:pmdccolleges_server/src/generated/submitasignment.dart' as _i17;
import 'package:pmdccolleges_server/src/generated/student.dart' as _i18;
import 'package:pmdccolleges_server/src/generated/subjectDiary.dart' as _i19;
import 'package:pmdccolleges_server/src/generated/subjectNotes.dart' as _i20;
import 'package:pmdccolleges_server/src/generated/videoLectures.dart' as _i21;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'announcement': _i2.AnnouncementEndpoint()
        ..initialize(
          server,
          'announcement',
          null,
        ),
      'assignment': _i3.AssignmentEndpoint()
        ..initialize(
          server,
          'assignment',
          null,
        ),
      'assignSubjects': _i4.AssignSubjectsEndpoint()
        ..initialize(
          server,
          'assignSubjects',
          null,
        ),
      'example': _i5.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
      'feeRecord': _i6.FeeRecordEndpoint()
        ..initialize(
          server,
          'feeRecord',
          null,
        ),
      'library': _i7.LibraryEndpoint()
        ..initialize(
          server,
          'library',
          null,
        ),
      'noticeBoard': _i8.NoticeBoardEndpoint()
        ..initialize(
          server,
          'noticeBoard',
          null,
        ),
      'student': _i9.StudentEndpoint()
        ..initialize(
          server,
          'student',
          null,
        ),
      'subjectdiary': _i10.SubjectdiaryEndpoint()
        ..initialize(
          server,
          'subjectdiary',
          null,
        ),
      'subjectnotes': _i11.SubjectnotesEndpoint()
        ..initialize(
          server,
          'subjectnotes',
          null,
        ),
      'subjects': _i12.SubjectsEndpoint()
        ..initialize(
          server,
          'subjects',
          null,
        ),
      'teacher': _i13.TeacherEndpoint()
        ..initialize(
          server,
          'teacher',
          null,
        ),
      'videolecture': _i14.VideolectureEndpoint()
        ..initialize(
          server,
          'videolecture',
          null,
        ),
    };
    connectors['announcement'] = _i1.EndpointConnector(
      name: 'announcement',
      endpoint: endpoints['announcement']!,
      methodConnectors: {
        'getAnnouncementStudent': _i1.MethodConnector(
          name: 'getAnnouncementStudent',
          params: {
            'studentId': _i1.ParameterDescription(
              name: 'studentId',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'subjectId': _i1.ParameterDescription(
              name: 'subjectId',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['announcement'] as _i2.AnnouncementEndpoint)
                  .getAnnouncementStudent(
            session,
            params['studentId'],
            params['subjectId'],
          ),
        ),
        'getAnnouncementTeacher': _i1.MethodConnector(
          name: 'getAnnouncementTeacher',
          params: {
            'teacherId': _i1.ParameterDescription(
              name: 'teacherId',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'subjectId': _i1.ParameterDescription(
              name: 'subjectId',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'classId': _i1.ParameterDescription(
              name: 'classId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'programId': _i1.ParameterDescription(
              name: 'programId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'section': _i1.ParameterDescription(
              name: 'section',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['announcement'] as _i2.AnnouncementEndpoint)
                  .getAnnouncementTeacher(
            session,
            params['teacherId'],
            params['subjectId'],
            params['classId'],
            params['programId'],
            params['section'],
          ),
        ),
        'addAnnouncement': _i1.MethodConnector(
          name: 'addAnnouncement',
          params: {
            'announcement': _i1.ParameterDescription(
              name: 'announcement',
              type: _i1.getType<_i15.Announcement>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['announcement'] as _i2.AnnouncementEndpoint)
                  .addAnnouncement(
            session,
            params['announcement'],
          ),
        ),
        'updateAnnouncement': _i1.MethodConnector(
          name: 'updateAnnouncement',
          params: {
            'announcement': _i1.ParameterDescription(
              name: 'announcement',
              type: _i1.getType<_i15.Announcement>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['announcement'] as _i2.AnnouncementEndpoint)
                  .updateAnnouncement(
            session,
            params['announcement'],
          ),
        ),
        'deleteAnnouncement': _i1.MethodConnector(
          name: 'deleteAnnouncement',
          params: {
            'assignmentId': _i1.ParameterDescription(
              name: 'assignmentId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['announcement'] as _i2.AnnouncementEndpoint)
                  .deleteAnnouncement(
            session,
            params['assignmentId'],
          ),
        ),
      },
    );
    connectors['assignment'] = _i1.EndpointConnector(
      name: 'assignment',
      endpoint: endpoints['assignment']!,
      methodConnectors: {
        'getAssignmentsStudent': _i1.MethodConnector(
          name: 'getAssignmentsStudent',
          params: {
            'studentId': _i1.ParameterDescription(
              name: 'studentId',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'subjectId': _i1.ParameterDescription(
              name: 'subjectId',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['assignment'] as _i3.AssignmentEndpoint)
                  .getAssignmentsStudent(
            session,
            params['studentId'],
            params['subjectId'],
          ),
        ),
        'getAssignmentsTeacher': _i1.MethodConnector(
          name: 'getAssignmentsTeacher',
          params: {
            'teacherId': _i1.ParameterDescription(
              name: 'teacherId',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'subjectId': _i1.ParameterDescription(
              name: 'subjectId',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'classId': _i1.ParameterDescription(
              name: 'classId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'programId': _i1.ParameterDescription(
              name: 'programId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'section': _i1.ParameterDescription(
              name: 'section',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['assignment'] as _i3.AssignmentEndpoint)
                  .getAssignmentsTeacher(
            session,
            params['teacherId'],
            params['subjectId'],
            params['classId'],
            params['programId'],
            params['section'],
          ),
        ),
        'addAssignment': _i1.MethodConnector(
          name: 'addAssignment',
          params: {
            'assignment': _i1.ParameterDescription(
              name: 'assignment',
              type: _i1.getType<_i16.Assignments>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['assignment'] as _i3.AssignmentEndpoint).addAssignment(
            session,
            params['assignment'],
          ),
        ),
        'updateAssignment': _i1.MethodConnector(
          name: 'updateAssignment',
          params: {
            'assignment': _i1.ParameterDescription(
              name: 'assignment',
              type: _i1.getType<_i16.Assignments>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['assignment'] as _i3.AssignmentEndpoint)
                  .updateAssignment(
            session,
            params['assignment'],
          ),
        ),
        'deleteAssignment': _i1.MethodConnector(
          name: 'deleteAssignment',
          params: {
            'assignmentId': _i1.ParameterDescription(
              name: 'assignmentId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['assignment'] as _i3.AssignmentEndpoint)
                  .deleteAssignment(
            session,
            params['assignmentId'],
          ),
        ),
        'submitAsignment': _i1.MethodConnector(
          name: 'submitAsignment',
          params: {
            'asignment': _i1.ParameterDescription(
              name: 'asignment',
              type: _i1.getType<_i17.Submitasignment>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['assignment'] as _i3.AssignmentEndpoint)
                  .submitAsignment(
            session,
            params['asignment'],
          ),
        ),
        'getSubmitasignment': _i1.MethodConnector(
          name: 'getSubmitasignment',
          params: {
            'assignmentId': _i1.ParameterDescription(
              name: 'assignmentId',
              type: _i1.getType<int?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['assignment'] as _i3.AssignmentEndpoint)
                  .getSubmitasignment(
            session,
            params['assignmentId'],
          ),
        ),
        'getSubmitasignmentForStudent': _i1.MethodConnector(
          name: 'getSubmitasignmentForStudent',
          params: {
            'studentId': _i1.ParameterDescription(
              name: 'studentId',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'subjectId': _i1.ParameterDescription(
              name: 'subjectId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['assignment'] as _i3.AssignmentEndpoint)
                  .getSubmitasignmentForStudent(
            session,
            params['studentId'],
            params['subjectId'],
          ),
        ),
      },
    );
    connectors['assignSubjects'] = _i1.EndpointConnector(
      name: 'assignSubjects',
      endpoint: endpoints['assignSubjects']!,
      methodConnectors: {
        'getTeacherSubjects': _i1.MethodConnector(
          name: 'getTeacherSubjects',
          params: {
            'teacherId': _i1.ParameterDescription(
              name: 'teacherId',
              type: _i1.getType<int?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['assignSubjects'] as _i4.AssignSubjectsEndpoint)
                  .getTeacherSubjects(
            session,
            params['teacherId'],
          ),
        ),
        'addStudent': _i1.MethodConnector(
          name: 'addStudent',
          params: {
            'student': _i1.ParameterDescription(
              name: 'student',
              type: _i1.getType<_i18.Student>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['assignSubjects'] as _i4.AssignSubjectsEndpoint)
                  .addStudent(
            session,
            params['student'],
          ),
        ),
      },
    );
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
              (endpoints['example'] as _i5.ExampleEndpoint).hello(
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
              (endpoints['feeRecord'] as _i6.FeeRecordEndpoint).getFeeRecord(
            session,
            params['studentId'],
          ),
        )
      },
    );
    connectors['library'] = _i1.EndpointConnector(
      name: 'library',
      endpoint: endpoints['library']!,
      methodConnectors: {
        'getBooks': _i1.MethodConnector(
          name: 'getBooks',
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
              (endpoints['library'] as _i7.LibraryEndpoint).getBooks(
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
              (endpoints['noticeBoard'] as _i8.NoticeBoardEndpoint)
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
            ),
            'password': _i1.ParameterDescription(
              name: 'password',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['student'] as _i9.StudentEndpoint).getStudent(
            session,
            params['id'],
            params['password'],
          ),
        ),
        'addStudent': _i1.MethodConnector(
          name: 'addStudent',
          params: {
            'student': _i1.ParameterDescription(
              name: 'student',
              type: _i1.getType<_i18.Student>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['student'] as _i9.StudentEndpoint).addStudent(
            session,
            params['student'],
          ),
        ),
        'getStudents': _i1.MethodConnector(
          name: 'getStudents',
          params: {
            'classId': _i1.ParameterDescription(
              name: 'classId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'programId': _i1.ParameterDescription(
              name: 'programId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'section': _i1.ParameterDescription(
              name: 'section',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['student'] as _i9.StudentEndpoint).getStudents(
            session,
            params['classId'],
            params['programId'],
            params['section'],
          ),
        ),
      },
    );
    connectors['subjectdiary'] = _i1.EndpointConnector(
      name: 'subjectdiary',
      endpoint: endpoints['subjectdiary']!,
      methodConnectors: {
        'getSubjectDiary': _i1.MethodConnector(
          name: 'getSubjectDiary',
          params: {
            'studentId': _i1.ParameterDescription(
              name: 'studentId',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'subjectId': _i1.ParameterDescription(
              name: 'subjectId',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['subjectdiary'] as _i10.SubjectdiaryEndpoint)
                  .getSubjectDiary(
            session,
            params['studentId'],
            params['subjectId'],
          ),
        ),
        'getSubjectDiaryTeacher': _i1.MethodConnector(
          name: 'getSubjectDiaryTeacher',
          params: {
            'teacherId': _i1.ParameterDescription(
              name: 'teacherId',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'subjectId': _i1.ParameterDescription(
              name: 'subjectId',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'classId': _i1.ParameterDescription(
              name: 'classId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'programId': _i1.ParameterDescription(
              name: 'programId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'section': _i1.ParameterDescription(
              name: 'section',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['subjectdiary'] as _i10.SubjectdiaryEndpoint)
                  .getSubjectDiaryTeacher(
            session,
            params['teacherId'],
            params['subjectId'],
            params['classId'],
            params['programId'],
            params['section'],
          ),
        ),
        'addSubjectDiary': _i1.MethodConnector(
          name: 'addSubjectDiary',
          params: {
            'announcement': _i1.ParameterDescription(
              name: 'announcement',
              type: _i1.getType<_i19.SubjectDiary>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['subjectdiary'] as _i10.SubjectdiaryEndpoint)
                  .addSubjectDiary(
            session,
            params['announcement'],
          ),
        ),
        'updateSubjectDiary': _i1.MethodConnector(
          name: 'updateSubjectDiary',
          params: {
            'announcement': _i1.ParameterDescription(
              name: 'announcement',
              type: _i1.getType<_i19.SubjectDiary>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['subjectdiary'] as _i10.SubjectdiaryEndpoint)
                  .updateSubjectDiary(
            session,
            params['announcement'],
          ),
        ),
        'deleteSubjectDiary': _i1.MethodConnector(
          name: 'deleteSubjectDiary',
          params: {
            'assignmentId': _i1.ParameterDescription(
              name: 'assignmentId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['subjectdiary'] as _i10.SubjectdiaryEndpoint)
                  .deleteSubjectDiary(
            session,
            params['assignmentId'],
          ),
        ),
      },
    );
    connectors['subjectnotes'] = _i1.EndpointConnector(
      name: 'subjectnotes',
      endpoint: endpoints['subjectnotes']!,
      methodConnectors: {
        'getSubjecrNotes': _i1.MethodConnector(
          name: 'getSubjecrNotes',
          params: {
            'studentId': _i1.ParameterDescription(
              name: 'studentId',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'subjectId': _i1.ParameterDescription(
              name: 'subjectId',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['subjectnotes'] as _i11.SubjectnotesEndpoint)
                  .getSubjecrNotes(
            session,
            params['studentId'],
            params['subjectId'],
          ),
        ),
        'getSubjectNotesTeacher': _i1.MethodConnector(
          name: 'getSubjectNotesTeacher',
          params: {
            'teacherId': _i1.ParameterDescription(
              name: 'teacherId',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'subjectId': _i1.ParameterDescription(
              name: 'subjectId',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'classId': _i1.ParameterDescription(
              name: 'classId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'programId': _i1.ParameterDescription(
              name: 'programId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'section': _i1.ParameterDescription(
              name: 'section',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['subjectnotes'] as _i11.SubjectnotesEndpoint)
                  .getSubjectNotesTeacher(
            session,
            params['teacherId'],
            params['subjectId'],
            params['classId'],
            params['programId'],
            params['section'],
          ),
        ),
        'getTeacherNotes': _i1.MethodConnector(
          name: 'getTeacherNotes',
          params: {
            'teacherId': _i1.ParameterDescription(
              name: 'teacherId',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['subjectnotes'] as _i11.SubjectnotesEndpoint)
                  .getTeacherNotes(
            session,
            params['teacherId'],
          ),
        ),
        'addSubjectNotes': _i1.MethodConnector(
          name: 'addSubjectNotes',
          params: {
            'subjectNotes': _i1.ParameterDescription(
              name: 'subjectNotes',
              type: _i1.getType<_i20.SubjectNotes>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['subjectnotes'] as _i11.SubjectnotesEndpoint)
                  .addSubjectNotes(
            session,
            params['subjectNotes'],
          ),
        ),
        'updateSubjectNotes': _i1.MethodConnector(
          name: 'updateSubjectNotes',
          params: {
            'subjectNotes': _i1.ParameterDescription(
              name: 'subjectNotes',
              type: _i1.getType<_i20.SubjectNotes>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['subjectnotes'] as _i11.SubjectnotesEndpoint)
                  .updateSubjectNotes(
            session,
            params['subjectNotes'],
          ),
        ),
        'deleteSubjectNotes': _i1.MethodConnector(
          name: 'deleteSubjectNotes',
          params: {
            'notesId': _i1.ParameterDescription(
              name: 'notesId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['subjectnotes'] as _i11.SubjectnotesEndpoint)
                  .deleteSubjectNotes(
            session,
            params['notesId'],
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
              (endpoints['subjects'] as _i12.SubjectsEndpoint).getSubjects(
            session,
            params['classId'],
            params['programId'],
          ),
        )
      },
    );
    connectors['teacher'] = _i1.EndpointConnector(
      name: 'teacher',
      endpoint: endpoints['teacher']!,
      methodConnectors: {
        'getTeacher': _i1.MethodConnector(
          name: 'getTeacher',
          params: {
            'teacherId': _i1.ParameterDescription(
              name: 'teacherId',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'password': _i1.ParameterDescription(
              name: 'password',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['teacher'] as _i13.TeacherEndpoint).getTeacher(
            session,
            params['teacherId'],
            params['password'],
          ),
        ),
        'addStudent': _i1.MethodConnector(
          name: 'addStudent',
          params: {
            'student': _i1.ParameterDescription(
              name: 'student',
              type: _i1.getType<_i18.Student>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['teacher'] as _i13.TeacherEndpoint).addStudent(
            session,
            params['student'],
          ),
        ),
      },
    );
    connectors['videolecture'] = _i1.EndpointConnector(
      name: 'videolecture',
      endpoint: endpoints['videolecture']!,
      methodConnectors: {
        'getVideoLecture': _i1.MethodConnector(
          name: 'getVideoLecture',
          params: {
            'studentId': _i1.ParameterDescription(
              name: 'studentId',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'subjectId': _i1.ParameterDescription(
              name: 'subjectId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['videolecture'] as _i14.VideolectureEndpoint)
                  .getVideoLecture(
            session,
            params['studentId'],
            params['subjectId'],
          ),
        ),
        'getVideoLectureTeacher': _i1.MethodConnector(
          name: 'getVideoLectureTeacher',
          params: {
            'teacherId': _i1.ParameterDescription(
              name: 'teacherId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'subjectId': _i1.ParameterDescription(
              name: 'subjectId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'classId': _i1.ParameterDescription(
              name: 'classId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'programId': _i1.ParameterDescription(
              name: 'programId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'section': _i1.ParameterDescription(
              name: 'section',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['videolecture'] as _i14.VideolectureEndpoint)
                  .getVideoLectureTeacher(
            session,
            params['teacherId'],
            params['subjectId'],
            params['classId'],
            params['programId'],
            params['section'],
          ),
        ),
        'addVideoLecture': _i1.MethodConnector(
          name: 'addVideoLecture',
          params: {
            'subjectNotes': _i1.ParameterDescription(
              name: 'subjectNotes',
              type: _i1.getType<_i21.VideoLectures>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['videolecture'] as _i14.VideolectureEndpoint)
                  .addVideoLecture(
            session,
            params['subjectNotes'],
          ),
        ),
        'updateVideoLectures': _i1.MethodConnector(
          name: 'updateVideoLectures',
          params: {
            'subjectNotes': _i1.ParameterDescription(
              name: 'subjectNotes',
              type: _i1.getType<_i21.VideoLectures>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['videolecture'] as _i14.VideolectureEndpoint)
                  .updateVideoLectures(
            session,
            params['subjectNotes'],
          ),
        ),
        'deleteVideoLectures': _i1.MethodConnector(
          name: 'deleteVideoLectures',
          params: {
            'notesId': _i1.ParameterDescription(
              name: 'notesId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['videolecture'] as _i14.VideolectureEndpoint)
                  .deleteVideoLectures(
            session,
            params['notesId'],
          ),
        ),
      },
    );
  }
}
