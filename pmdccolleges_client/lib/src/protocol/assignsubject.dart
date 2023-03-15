/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class AssignSubjects extends _i1.SerializableEntity {
  AssignSubjects({
    this.id,
    required this.subjectName,
    required this.assignDate,
    required this.subjectId,
    required this.programId,
    required this.classId,
    required this.section,
    required this.teacherId,
  });

  factory AssignSubjects.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return AssignSubjects(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      subjectName: serializationManager
          .deserialize<String>(jsonSerialization['subjectName']),
      assignDate: serializationManager
          .deserialize<String>(jsonSerialization['assignDate']),
      subjectId: serializationManager
          .deserialize<String>(jsonSerialization['subjectId']),
      programId:
          serializationManager.deserialize<int>(jsonSerialization['programId']),
      classId:
          serializationManager.deserialize<int>(jsonSerialization['classId']),
      section: serializationManager
          .deserialize<String>(jsonSerialization['section']),
      teacherId: serializationManager
          .deserialize<String>(jsonSerialization['teacherId']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String subjectName;

  String assignDate;

  String subjectId;

  int programId;

  int classId;

  String section;

  String teacherId;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'subjectName': subjectName,
      'assignDate': assignDate,
      'subjectId': subjectId,
      'programId': programId,
      'classId': classId,
      'section': section,
      'teacherId': teacherId,
    };
  }
}
