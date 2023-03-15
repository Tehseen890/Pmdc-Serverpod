/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class Library extends _i1.SerializableEntity {
  Library({
    this.id,
    required this.bookName,
    required this.sNo,
    required this.givenDate,
    required this.returnDate,
    required this.studentId,
  });

  factory Library.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Library(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      bookName: serializationManager
          .deserialize<String>(jsonSerialization['bookName']),
      sNo: serializationManager.deserialize<String>(jsonSerialization['sNo']),
      givenDate: serializationManager
          .deserialize<String>(jsonSerialization['givenDate']),
      returnDate: serializationManager
          .deserialize<String>(jsonSerialization['returnDate']),
      studentId: serializationManager
          .deserialize<String>(jsonSerialization['studentId']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String bookName;

  String sNo;

  String givenDate;

  String returnDate;

  String studentId;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'bookName': bookName,
      'sNo': sNo,
      'givenDate': givenDate,
      'returnDate': returnDate,
      'studentId': studentId,
    };
  }
}
