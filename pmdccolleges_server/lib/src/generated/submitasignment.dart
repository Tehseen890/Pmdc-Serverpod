/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Submitasignment extends _i1.TableRow {
  Submitasignment({
    int? id,
    required this.file,
    required this.studentName,
    required this.studentId,
    required this.dateAdded,
    required this.subjectId,
    required this.section,
    required this.programId,
    required this.classId,
    required this.teacherId,
    required this.assignmentId,
  }) : super(id);

  factory Submitasignment.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Submitasignment(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      file: serializationManager.deserialize<String>(jsonSerialization['file']),
      studentName: serializationManager
          .deserialize<String>(jsonSerialization['studentName']),
      studentId: serializationManager
          .deserialize<String>(jsonSerialization['studentId']),
      dateAdded: serializationManager
          .deserialize<String>(jsonSerialization['dateAdded']),
      subjectId:
          serializationManager.deserialize<int>(jsonSerialization['subjectId']),
      section: serializationManager
          .deserialize<String>(jsonSerialization['section']),
      programId: serializationManager
          .deserialize<String>(jsonSerialization['programId']),
      classId:
          serializationManager.deserialize<int>(jsonSerialization['classId']),
      teacherId: serializationManager
          .deserialize<String>(jsonSerialization['teacherId']),
      assignmentId: serializationManager
          .deserialize<int>(jsonSerialization['assignmentId']),
    );
  }

  static final t = SubmitasignmentTable();

  String file;

  String studentName;

  String studentId;

  String dateAdded;

  int subjectId;

  String section;

  String programId;

  int classId;

  String teacherId;

  int assignmentId;

  @override
  String get tableName => 'submitasignment';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'file': file,
      'studentName': studentName,
      'studentId': studentId,
      'dateAdded': dateAdded,
      'subjectId': subjectId,
      'section': section,
      'programId': programId,
      'classId': classId,
      'teacherId': teacherId,
      'assignmentId': assignmentId,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'file': file,
      'studentName': studentName,
      'studentId': studentId,
      'dateAdded': dateAdded,
      'subjectId': subjectId,
      'section': section,
      'programId': programId,
      'classId': classId,
      'teacherId': teacherId,
      'assignmentId': assignmentId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'file': file,
      'studentName': studentName,
      'studentId': studentId,
      'dateAdded': dateAdded,
      'subjectId': subjectId,
      'section': section,
      'programId': programId,
      'classId': classId,
      'teacherId': teacherId,
      'assignmentId': assignmentId,
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
      case 'file':
        file = value;
        return;
      case 'studentName':
        studentName = value;
        return;
      case 'studentId':
        studentId = value;
        return;
      case 'dateAdded':
        dateAdded = value;
        return;
      case 'subjectId':
        subjectId = value;
        return;
      case 'section':
        section = value;
        return;
      case 'programId':
        programId = value;
        return;
      case 'classId':
        classId = value;
        return;
      case 'teacherId':
        teacherId = value;
        return;
      case 'assignmentId':
        assignmentId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Submitasignment>> find(
    _i1.Session session, {
    SubmitasignmentExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Submitasignment>(
      where: where != null ? where(Submitasignment.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Submitasignment?> findSingleRow(
    _i1.Session session, {
    SubmitasignmentExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Submitasignment>(
      where: where != null ? where(Submitasignment.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Submitasignment?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Submitasignment>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required SubmitasignmentExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Submitasignment>(
      where: where(Submitasignment.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Submitasignment row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Submitasignment row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Submitasignment row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    SubmitasignmentExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Submitasignment>(
      where: where != null ? where(Submitasignment.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef SubmitasignmentExpressionBuilder = _i1.Expression Function(
    SubmitasignmentTable);

class SubmitasignmentTable extends _i1.Table {
  SubmitasignmentTable() : super(tableName: 'submitasignment');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final file = _i1.ColumnString('file');

  final studentName = _i1.ColumnString('studentName');

  final studentId = _i1.ColumnString('studentId');

  final dateAdded = _i1.ColumnString('dateAdded');

  final subjectId = _i1.ColumnInt('subjectId');

  final section = _i1.ColumnString('section');

  final programId = _i1.ColumnString('programId');

  final classId = _i1.ColumnInt('classId');

  final teacherId = _i1.ColumnString('teacherId');

  final assignmentId = _i1.ColumnInt('assignmentId');

  @override
  List<_i1.Column> get columns => [
        id,
        file,
        studentName,
        studentId,
        dateAdded,
        subjectId,
        section,
        programId,
        classId,
        teacherId,
        assignmentId,
      ];
}

@Deprecated('Use SubmitasignmentTable.t instead.')
SubmitasignmentTable tSubmitasignment = SubmitasignmentTable();
