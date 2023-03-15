/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class Announcement extends _i1.SerializableEntity {
  Announcement({
    this.id,
    required this.sNo,
    required this.title,
    required this.description,
    required this.publishDate,
    required this.subjectId,
    required this.programId,
    required this.section,
    required this.classId,
    required this.teacherId,
  });

  factory Announcement.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Announcement(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      sNo: serializationManager.deserialize<int>(jsonSerialization['sNo']),
      title:
          serializationManager.deserialize<String>(jsonSerialization['title']),
      description: serializationManager
          .deserialize<String>(jsonSerialization['description']),
      publishDate: serializationManager
          .deserialize<String>(jsonSerialization['publishDate']),
      subjectId:
          serializationManager.deserialize<int>(jsonSerialization['subjectId']),
      programId:
          serializationManager.deserialize<int>(jsonSerialization['programId']),
      section: serializationManager
          .deserialize<String>(jsonSerialization['section']),
      classId:
          serializationManager.deserialize<int>(jsonSerialization['classId']),
      teacherId: serializationManager
          .deserialize<String>(jsonSerialization['teacherId']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int sNo;

  String title;

  String description;

  String publishDate;

  int subjectId;

  int programId;

  String section;

  int classId;

  String teacherId;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'sNo': sNo,
      'title': title,
      'description': description,
      'publishDate': publishDate,
      'subjectId': subjectId,
      'programId': programId,
      'section': section,
      'classId': classId,
      'teacherId': teacherId,
    };
  }
}
