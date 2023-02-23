/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class Teacher extends _i1.SerializableEntity {
  Teacher({
    this.id,
    required this.teacherId,
    required this.teacherName,
    required this.dateOfBirth,
    required this.qualification,
    required this.status,
    required this.transport,
    required this.busId,
    required this.age,
    required this.password,
    required this.subjectId,
  });

  factory Teacher.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Teacher(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      teacherId: serializationManager
          .deserialize<String>(jsonSerialization['teacherId']),
      teacherName: serializationManager
          .deserialize<String>(jsonSerialization['teacherName']),
      dateOfBirth: serializationManager
          .deserialize<String>(jsonSerialization['dateOfBirth']),
      qualification: serializationManager
          .deserialize<String>(jsonSerialization['qualification']),
      status:
          serializationManager.deserialize<bool>(jsonSerialization['status']),
      transport: serializationManager
          .deserialize<bool>(jsonSerialization['transport']),
      busId: serializationManager.deserialize<bool>(jsonSerialization['busId']),
      age: serializationManager.deserialize<int>(jsonSerialization['age']),
      password: serializationManager
          .deserialize<String>(jsonSerialization['password']),
      subjectId: serializationManager
          .deserialize<String>(jsonSerialization['subjectId']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String teacherId;

  String teacherName;

  String dateOfBirth;

  String qualification;

  bool status;

  bool transport;

  bool busId;

  int age;

  String password;

  String subjectId;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'teacherId': teacherId,
      'teacherName': teacherName,
      'dateOfBirth': dateOfBirth,
      'qualification': qualification,
      'status': status,
      'transport': transport,
      'busId': busId,
      'age': age,
      'password': password,
      'subjectId': subjectId,
    };
  }
}
