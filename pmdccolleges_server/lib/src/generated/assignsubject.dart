/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class AssignSubjects extends _i1.TableRow {
  AssignSubjects({
    int? id,
    required this.subjectName,
    required this.assignDate,
    required this.subjectId,
    required this.programId,
    required this.classId,
    required this.section,
    required this.teacherId,
  }) : super(id);

  factory AssignSubjects.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return AssignSubjects(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      subjectName: serializationManager
          .deserialize<String>(jsonSerialization['subjectName']),
      assignDate: serializationManager
          .deserialize<String>(jsonSerialization['assignDate']),
      subjectId: serializationManager
          .deserialize<String>(jsonSerialization['subjectId']),
      programId:
          serializationManager.deserialize<int>(jsonSerialization['programId']),
      classId:
          serializationManager.deserialize<int>(jsonSerialization['classId']),
      section: serializationManager
          .deserialize<String>(jsonSerialization['section']),
      teacherId: serializationManager
          .deserialize<String>(jsonSerialization['teacherId']),
    );
  }

  static final t = AssignSubjectsTable();

  String subjectName;

  String assignDate;

  String subjectId;

  int programId;

  int classId;

  String section;

  String teacherId;

  @override
  String get tableName => 'assignsubjects';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'subjectName': subjectName,
      'assignDate': assignDate,
      'subjectId': subjectId,
      'programId': programId,
      'classId': classId,
      'section': section,
      'teacherId': teacherId,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'subjectName': subjectName,
      'assignDate': assignDate,
      'subjectId': subjectId,
      'programId': programId,
      'classId': classId,
      'section': section,
      'teacherId': teacherId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'subjectName': subjectName,
      'assignDate': assignDate,
      'subjectId': subjectId,
      'programId': programId,
      'classId': classId,
      'section': section,
      'teacherId': teacherId,
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
      case 'subjectName':
        subjectName = value;
        return;
      case 'assignDate':
        assignDate = value;
        return;
      case 'subjectId':
        subjectId = value;
        return;
      case 'programId':
        programId = value;
        return;
      case 'classId':
        classId = value;
        return;
      case 'section':
        section = value;
        return;
      case 'teacherId':
        teacherId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<AssignSubjects>> find(
    _i1.Session session, {
    AssignSubjectsExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<AssignSubjects>(
      where: where != null ? where(AssignSubjects.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<AssignSubjects?> findSingleRow(
    _i1.Session session, {
    AssignSubjectsExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<AssignSubjects>(
      where: where != null ? where(AssignSubjects.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<AssignSubjects?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<AssignSubjects>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required AssignSubjectsExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<AssignSubjects>(
      where: where(AssignSubjects.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    AssignSubjects row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    AssignSubjects row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    AssignSubjects row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    AssignSubjectsExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<AssignSubjects>(
      where: where != null ? where(AssignSubjects.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef AssignSubjectsExpressionBuilder = _i1.Expression Function(
    AssignSubjectsTable);

class AssignSubjectsTable extends _i1.Table {
  AssignSubjectsTable() : super(tableName: 'assignsubjects');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final subjectName = _i1.ColumnString('subjectName');

  final assignDate = _i1.ColumnString('assignDate');

  final subjectId = _i1.ColumnString('subjectId');

  final programId = _i1.ColumnInt('programId');

  final classId = _i1.ColumnInt('classId');

  final section = _i1.ColumnString('section');

  final teacherId = _i1.ColumnString('teacherId');

  @override
  List<_i1.Column> get columns => [
        id,
        subjectName,
        assignDate,
        subjectId,
        programId,
        classId,
        section,
        teacherId,
      ];
}

@Deprecated('Use AssignSubjectsTable.t instead.')
AssignSubjectsTable tAssignSubjects = AssignSubjectsTable();
