/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class Submitasignment extends _i1.SerializableEntity {
  Submitasignment({
    this.id,
    required this.file,
    required this.studentName,
    required this.studentId,
    required this.dateAdded,
    required this.subjectId,
    required this.section,
    required this.programId,
    required this.classId,
    required this.teacherId,
    required this.assignmentId,
  });

  factory Submitasignment.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Submitasignment(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      file: serializationManager.deserialize<String>(jsonSerialization['file']),
      studentName: serializationManager
          .deserialize<String>(jsonSerialization['studentName']),
      studentId: serializationManager
          .deserialize<String>(jsonSerialization['studentId']),
      dateAdded: serializationManager
          .deserialize<String>(jsonSerialization['dateAdded']),
      subjectId:
          serializationManager.deserialize<int>(jsonSerialization['subjectId']),
      section: serializationManager
          .deserialize<String>(jsonSerialization['section']),
      programId: serializationManager
          .deserialize<String>(jsonSerialization['programId']),
      classId:
          serializationManager.deserialize<int>(jsonSerialization['classId']),
      teacherId: serializationManager
          .deserialize<String>(jsonSerialization['teacherId']),
      assignmentId: serializationManager
          .deserialize<int>(jsonSerialization['assignmentId']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String file;

  String studentName;

  String studentId;

  String dateAdded;

  int subjectId;

  String section;

  String programId;

  int classId;

  String teacherId;

  int assignmentId;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'file': file,
      'studentName': studentName,
      'studentId': studentId,
      'dateAdded': dateAdded,
      'subjectId': subjectId,
      'section': section,
      'programId': programId,
      'classId': classId,
      'teacherId': teacherId,
      'assignmentId': assignmentId,
    };
  }
}
