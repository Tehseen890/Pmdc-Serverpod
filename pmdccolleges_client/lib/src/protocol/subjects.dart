/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class Subjects extends _i1.SerializableEntity {
  Subjects({
    this.id,
    required this.subjectId,
    required this.subjectName,
    required this.subjectCode,
    required this.programId,
    required this.classId,
  });

  factory Subjects.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Subjects(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      subjectId: serializationManager
          .deserialize<String>(jsonSerialization['subjectId']),
      subjectName: serializationManager
          .deserialize<String>(jsonSerialization['subjectName']),
      subjectCode: serializationManager
          .deserialize<String>(jsonSerialization['subjectCode']),
      programId:
          serializationManager.deserialize<int>(jsonSerialization['programId']),
      classId:
          serializationManager.deserialize<int>(jsonSerialization['classId']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String subjectId;

  String subjectName;

  String subjectCode;

  int programId;

  int classId;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'subjectId': subjectId,
      'subjectName': subjectName,
      'subjectCode': subjectCode,
      'programId': programId,
      'classId': classId,
    };
  }
}
