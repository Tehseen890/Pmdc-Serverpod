/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Subjects extends _i1.TableRow {
  Subjects({
    int? id,
    required this.subjectId,
    required this.subjectName,
    required this.subjectCode,
    required this.programId,
    required this.classId,
  }) : super(id);

  factory Subjects.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Subjects(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      subjectId: serializationManager
          .deserialize<String>(jsonSerialization['subjectId']),
      subjectName: serializationManager
          .deserialize<String>(jsonSerialization['subjectName']),
      subjectCode: serializationManager
          .deserialize<String>(jsonSerialization['subjectCode']),
      programId:
          serializationManager.deserialize<int>(jsonSerialization['programId']),
      classId:
          serializationManager.deserialize<int>(jsonSerialization['classId']),
    );
  }

  static final t = SubjectsTable();

  String subjectId;

  String subjectName;

  String subjectCode;

  int programId;

  int classId;

  @override
  String get tableName => 'subjects';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'subjectId': subjectId,
      'subjectName': subjectName,
      'subjectCode': subjectCode,
      'programId': programId,
      'classId': classId,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'subjectId': subjectId,
      'subjectName': subjectName,
      'subjectCode': subjectCode,
      'programId': programId,
      'classId': classId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'subjectId': subjectId,
      'subjectName': subjectName,
      'subjectCode': subjectCode,
      'programId': programId,
      'classId': classId,
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
      case 'subjectId':
        subjectId = value;
        return;
      case 'subjectName':
        subjectName = value;
        return;
      case 'subjectCode':
        subjectCode = value;
        return;
      case 'programId':
        programId = value;
        return;
      case 'classId':
        classId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Subjects>> find(
    _i1.Session session, {
    SubjectsExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Subjects>(
      where: where != null ? where(Subjects.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Subjects?> findSingleRow(
    _i1.Session session, {
    SubjectsExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Subjects>(
      where: where != null ? where(Subjects.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Subjects?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Subjects>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required SubjectsExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Subjects>(
      where: where(Subjects.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Subjects row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Subjects row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Subjects row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    SubjectsExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Subjects>(
      where: where != null ? where(Subjects.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef SubjectsExpressionBuilder = _i1.Expression Function(SubjectsTable);

class SubjectsTable extends _i1.Table {
  SubjectsTable() : super(tableName: 'subjects');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final subjectId = _i1.ColumnString('subjectId');

  final subjectName = _i1.ColumnString('subjectName');

  final subjectCode = _i1.ColumnString('subjectCode');

  final programId = _i1.ColumnInt('programId');

  final classId = _i1.ColumnInt('classId');

  @override
  List<_i1.Column> get columns => [
        id,
        subjectId,
        subjectName,
        subjectCode,
        programId,
        classId,
      ];
}

@Deprecated('Use SubjectsTable.t instead.')
SubjectsTable tSubjects = SubjectsTable();
