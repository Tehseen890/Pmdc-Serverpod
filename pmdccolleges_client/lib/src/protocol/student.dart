/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class Student extends _i1.SerializableEntity {
  Student({
    this.id,
    required this.studentId,
    required this.firstName,
    required this.lastName,
    required this.dateOfBirth,
    required this.statue,
    required this.fatherName,
    required this.image,
    required this.transport,
    required this.busId,
    required this.section,
    required this.scholarship,
    required this.admissionDate,
    required this.gender,
    required this.classId,
    required this.password,
    required this.programId,
  });

  factory Student.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Student(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      studentId: serializationManager
          .deserialize<String>(jsonSerialization['studentId']),
      firstName: serializationManager
          .deserialize<String>(jsonSerialization['firstName']),
      lastName: serializationManager
          .deserialize<String>(jsonSerialization['lastName']),
      dateOfBirth: serializationManager
          .deserialize<String>(jsonSerialization['dateOfBirth']),
      statue:
          serializationManager.deserialize<bool>(jsonSerialization['statue']),
      fatherName: serializationManager
          .deserialize<String>(jsonSerialization['fatherName']),
      image:
          serializationManager.deserialize<String>(jsonSerialization['image']),
      transport: serializationManager
          .deserialize<bool>(jsonSerialization['transport']),
      busId: serializationManager.deserialize<int>(jsonSerialization['busId']),
      section: serializationManager
          .deserialize<String>(jsonSerialization['section']),
      scholarship: serializationManager
          .deserialize<bool>(jsonSerialization['scholarship']),
      admissionDate: serializationManager
          .deserialize<String>(jsonSerialization['admissionDate']),
      gender:
          serializationManager.deserialize<String>(jsonSerialization['gender']),
      classId:
          serializationManager.deserialize<int>(jsonSerialization['classId']),
      password: serializationManager
          .deserialize<String>(jsonSerialization['password']),
      programId:
          serializationManager.deserialize<int>(jsonSerialization['programId']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String studentId;

  String firstName;

  String lastName;

  String dateOfBirth;

  bool statue;

  String fatherName;

  String image;

  bool transport;

  int busId;

  String section;

  bool scholarship;

  String admissionDate;

  String gender;

  int classId;

  String password;

  int programId;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'studentId': studentId,
      'firstName': firstName,
      'lastName': lastName,
      'dateOfBirth': dateOfBirth,
      'statue': statue,
      'fatherName': fatherName,
      'image': image,
      'transport': transport,
      'busId': busId,
      'section': section,
      'scholarship': scholarship,
      'admissionDate': admissionDate,
      'gender': gender,
      'classId': classId,
      'password': password,
      'programId': programId,
    };
  }
}
