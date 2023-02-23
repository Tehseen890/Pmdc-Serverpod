/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Student extends _i1.TableRow {
  Student({
    int? id,
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
  }) : super(id);

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

  static final t = StudentTable();

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
  String get tableName => 'student';
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

  @override
  Map<String, dynamic> toJsonForDatabase() {
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

  @override
  Map<String, dynamic> allToJson() {
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

  @override
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'studentId':
        studentId = value;
        return;
      case 'firstName':
        firstName = value;
        return;
      case 'lastName':
        lastName = value;
        return;
      case 'dateOfBirth':
        dateOfBirth = value;
        return;
      case 'statue':
        statue = value;
        return;
      case 'fatherName':
        fatherName = value;
        return;
      case 'image':
        image = value;
        return;
      case 'transport':
        transport = value;
        return;
      case 'busId':
        busId = value;
        return;
      case 'section':
        section = value;
        return;
      case 'scholarship':
        scholarship = value;
        return;
      case 'admissionDate':
        admissionDate = value;
        return;
      case 'gender':
        gender = value;
        return;
      case 'classId':
        classId = value;
        return;
      case 'password':
        password = value;
        return;
      case 'programId':
        programId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Student>> find(
    _i1.Session session, {
    StudentExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Student>(
      where: where != null ? where(Student.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Student?> findSingleRow(
    _i1.Session session, {
    StudentExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Student>(
      where: where != null ? where(Student.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Student?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Student>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required StudentExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Student>(
      where: where(Student.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Student row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Student row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Student row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    StudentExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Student>(
      where: where != null ? where(Student.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef StudentExpressionBuilder = _i1.Expression Function(StudentTable);

class StudentTable extends _i1.Table {
  StudentTable() : super(tableName: 'student');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final studentId = _i1.ColumnString('studentId');

  final firstName = _i1.ColumnString('firstName');

  final lastName = _i1.ColumnString('lastName');

  final dateOfBirth = _i1.ColumnString('dateOfBirth');

  final statue = _i1.ColumnBool('statue');

  final fatherName = _i1.ColumnString('fatherName');

  final image = _i1.ColumnString('image');

  final transport = _i1.ColumnBool('transport');

  final busId = _i1.ColumnInt('busId');

  final section = _i1.ColumnString('section');

  final scholarship = _i1.ColumnBool('scholarship');

  final admissionDate = _i1.ColumnString('admissionDate');

  final gender = _i1.ColumnString('gender');

  final classId = _i1.ColumnInt('classId');

  final password = _i1.ColumnString('password');

  final programId = _i1.ColumnInt('programId');

  @override
  List<_i1.Column> get columns => [
        id,
        studentId,
        firstName,
        lastName,
        dateOfBirth,
        statue,
        fatherName,
        image,
        transport,
        busId,
        section,
        scholarship,
        admissionDate,
        gender,
        classId,
        password,
        programId,
      ];
}

@Deprecated('Use StudentTable.t instead.')
StudentTable tStudent = StudentTable();
