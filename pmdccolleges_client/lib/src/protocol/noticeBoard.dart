/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class NoticeBoard extends _i1.SerializableEntity {
  NoticeBoard({
    this.id,
    required this.notice,
    required this.date,
    required this.subject,
    required this.noticeId,
  });

  factory NoticeBoard.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return NoticeBoard(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      notice:
          serializationManager.deserialize<String>(jsonSerialization['notice']),
      date: serializationManager.deserialize<String>(jsonSerialization['date']),
      subject: serializationManager
          .deserialize<String>(jsonSerialization['subject']),
      noticeId:
          serializationManager.deserialize<int>(jsonSerialization['noticeId']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String notice;

  String date;

  String subject;

  int noticeId;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'notice': notice,
      'date': date,
      'subject': subject,
      'noticeId': noticeId,
    };
  }
}
