/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Teacher extends _i1.TableRow {
  Teacher({
    int? id,
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
  }) : super(id);

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

  static final t = TeacherTable();

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
  String get tableName => 'teacher';
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

  @override
  Map<String, dynamic> toJsonForDatabase() {
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

  @override
  Map<String, dynamic> allToJson() {
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

  @override
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'teacherId':
        teacherId = value;
        return;
      case 'teacherName':
        teacherName = value;
        return;
      case 'dateOfBirth':
        dateOfBirth = value;
        return;
      case 'qualification':
        qualification = value;
        return;
      case 'status':
        status = value;
        return;
      case 'transport':
        transport = value;
        return;
      case 'busId':
        busId = value;
        return;
      case 'age':
        age = value;
        return;
      case 'password':
        password = value;
        return;
      case 'subjectId':
        subjectId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Teacher>> find(
    _i1.Session session, {
    TeacherExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Teacher>(
      where: where != null ? where(Teacher.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Teacher?> findSingleRow(
    _i1.Session session, {
    TeacherExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Teacher>(
      where: where != null ? where(Teacher.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Teacher?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Teacher>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required TeacherExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Teacher>(
      where: where(Teacher.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Teacher row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Teacher row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Teacher row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    TeacherExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Teacher>(
      where: where != null ? where(Teacher.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef TeacherExpressionBuilder = _i1.Expression Function(TeacherTable);

class TeacherTable extends _i1.Table {
  TeacherTable() : super(tableName: 'teacher');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final teacherId = _i1.ColumnString('teacherId');

  final teacherName = _i1.ColumnString('teacherName');

  final dateOfBirth = _i1.ColumnString('dateOfBirth');

  final qualification = _i1.ColumnString('qualification');

  final status = _i1.ColumnBool('status');

  final transport = _i1.ColumnBool('transport');

  final busId = _i1.ColumnBool('busId');

  final age = _i1.ColumnInt('age');

  final password = _i1.ColumnString('password');

  final subjectId = _i1.ColumnString('subjectId');

  @override
  List<_i1.Column> get columns => [
        id,
        teacherId,
        teacherName,
        dateOfBirth,
        qualification,
        status,
        transport,
        busId,
        age,
        password,
        subjectId,
      ];
}

@Deprecated('Use TeacherTable.t instead.')
TeacherTable tTeacher = TeacherTable();
