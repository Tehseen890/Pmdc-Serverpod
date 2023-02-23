/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class SubjectDiary extends _i1.SerializableEntity {
  SubjectDiary({
    this.id,
    required this.weekNo,
    required this.chapterNo,
    required this.chapterName,
    required this.topic,
    required this.dateAdded,
    required this.status,
    required this.subjectId,
    required this.section,
    required this.programId,
    required this.classId,
  });

  factory SubjectDiary.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return SubjectDiary(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      weekNo:
          serializationManager.deserialize<String>(jsonSerialization['weekNo']),
      chapterNo: serializationManager
          .deserialize<String>(jsonSerialization['chapterNo']),
      chapterName: serializationManager
          .deserialize<String>(jsonSerialization['chapterName']),
      topic:
          serializationManager.deserialize<String>(jsonSerialization['topic']),
      dateAdded: serializationManager
          .deserialize<String>(jsonSerialization['dateAdded']),
      status:
          serializationManager.deserialize<String>(jsonSerialization['status']),
      subjectId:
          serializationManager.deserialize<int>(jsonSerialization['subjectId']),
      section: serializationManager
          .deserialize<String>(jsonSerialization['section']),
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

  String weekNo;

  String chapterNo;

  String chapterName;

  String topic;

  String dateAdded;

  String status;

  int subjectId;

  String section;

  int programId;

  int classId;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'weekNo': weekNo,
      'chapterNo': chapterNo,
      'chapterName': chapterName,
      'topic': topic,
      'dateAdded': dateAdded,
      'status': status,
      'subjectId': subjectId,
      'section': section,
      'programId': programId,
      'classId': classId,
    };
  }
}
