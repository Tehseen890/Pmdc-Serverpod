/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class VideoLectures extends _i1.SerializableEntity {
  VideoLectures({
    this.id,
    required this.chapterName,
    required this.chapterNo,
    required this.topic,
    required this.file,
    required this.teacherId,
    required this.dateAdded,
    required this.viewCount,
    required this.subjectId,
    required this.programId,
    required this.section,
    required this.classId,
  });

  factory VideoLectures.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return VideoLectures(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      chapterName: serializationManager
          .deserialize<String>(jsonSerialization['chapterName']),
      chapterNo: serializationManager
          .deserialize<String>(jsonSerialization['chapterNo']),
      topic:
          serializationManager.deserialize<String>(jsonSerialization['topic']),
      file: serializationManager.deserialize<String>(jsonSerialization['file']),
      teacherId:
          serializationManager.deserialize<int>(jsonSerialization['teacherId']),
      dateAdded: serializationManager
          .deserialize<String>(jsonSerialization['dateAdded']),
      viewCount: serializationManager
          .deserialize<String>(jsonSerialization['viewCount']),
      subjectId:
          serializationManager.deserialize<int>(jsonSerialization['subjectId']),
      programId:
          serializationManager.deserialize<int>(jsonSerialization['programId']),
      section: serializationManager
          .deserialize<String>(jsonSerialization['section']),
      classId:
          serializationManager.deserialize<int>(jsonSerialization['classId']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String chapterName;

  String chapterNo;

  String topic;

  String file;

  int teacherId;

  String dateAdded;

  String viewCount;

  int subjectId;

  int programId;

  String section;

  int classId;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'chapterName': chapterName,
      'chapterNo': chapterNo,
      'topic': topic,
      'file': file,
      'teacherId': teacherId,
      'dateAdded': dateAdded,
      'viewCount': viewCount,
      'subjectId': subjectId,
      'programId': programId,
      'section': section,
      'classId': classId,
    };
  }
}
