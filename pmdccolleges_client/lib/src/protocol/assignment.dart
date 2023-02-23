/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class Assignments extends _i1.SerializableEntity {
  Assignments({
    this.id,
    required this.title,
    required this.deadLine,
    required this.topic,
    required this.file,
    required this.isSubmited,
    required this.dateAdded,
    required this.subjectId,
    required this.section,
    required this.programId,
    required this.classId,
  });

  factory Assignments.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Assignments(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      title:
          serializationManager.deserialize<String>(jsonSerialization['title']),
      deadLine: serializationManager
          .deserialize<String>(jsonSerialization['deadLine']),
      topic:
          serializationManager.deserialize<String>(jsonSerialization['topic']),
      file: serializationManager.deserialize<String>(jsonSerialization['file']),
      isSubmited: serializationManager
          .deserialize<bool>(jsonSerialization['isSubmited']),
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
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String title;

  String deadLine;

  String topic;

  String file;

  bool isSubmited;

  String dateAdded;

  int subjectId;

  String section;

  String programId;

  int classId;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'deadLine': deadLine,
      'topic': topic,
      'file': file,
      'isSubmited': isSubmited,
      'dateAdded': dateAdded,
      'subjectId': subjectId,
      'section': section,
      'programId': programId,
      'classId': classId,
    };
  }
}
