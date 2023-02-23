/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class FeeRecord extends _i1.SerializableEntity {
  FeeRecord({
    this.id,
    required this.totalFee,
    required this.paid,
    required this.instalmentDate,
    required this.studentId,
  });

  factory FeeRecord.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return FeeRecord(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      totalFee:
          serializationManager.deserialize<int>(jsonSerialization['totalFee']),
      paid: serializationManager.deserialize<int>(jsonSerialization['paid']),
      instalmentDate: serializationManager
          .deserialize<String>(jsonSerialization['instalmentDate']),
      studentId: serializationManager
          .deserialize<String>(jsonSerialization['studentId']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int totalFee;

  int paid;

  String instalmentDate;

  String studentId;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'totalFee': totalFee,
      'paid': paid,
      'instalmentDate': instalmentDate,
      'studentId': studentId,
    };
  }
}
