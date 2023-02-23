/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Assignments extends _i1.TableRow {
  Assignments({
    int? id,
    required this.title,
    required this.deadLine,
    required this.topic,
    required this.file,
    required this.isSubmited,
    required this.dateAdded,
    required this.subjectId,
    required this.section,
    required this.programId,
    required this.classId,
  }) : super(id);

  factory Assignments.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Assignments(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      title:
          serializationManager.deserialize<String>(jsonSerialization['title']),
      deadLine: serializationManager
          .deserialize<String>(jsonSerialization['deadLine']),
      topic:
          serializationManager.deserialize<String>(jsonSerialization['topic']),
      file: serializationManager.deserialize<String>(jsonSerialization['file']),
      isSubmited: serializationManager
          .deserialize<bool>(jsonSerialization['isSubmited']),
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
    );
  }

  static final t = AssignmentsTable();

  String title;

  String deadLine;

  String topic;

  String file;

  bool isSubmited;

  String dateAdded;

  int subjectId;

  String section;

  String programId;

  int classId;

  @override
  String get tableName => 'assignment';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'deadLine': deadLine,
      'topic': topic,
      'file': file,
      'isSubmited': isSubmited,
      'dateAdded': dateAdded,
      'subjectId': subjectId,
      'section': section,
      'programId': programId,
      'classId': classId,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'title': title,
      'deadLine': deadLine,
      'topic': topic,
      'file': file,
      'isSubmited': isSubmited,
      'dateAdded': dateAdded,
      'subjectId': subjectId,
      'section': section,
      'programId': programId,
      'classId': classId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'title': title,
      'deadLine': deadLine,
      'topic': topic,
      'file': file,
      'isSubmited': isSubmited,
      'dateAdded': dateAdded,
      'subjectId': subjectId,
      'section': section,
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
      case 'title':
        title = value;
        return;
      case 'deadLine':
        deadLine = value;
        return;
      case 'topic':
        topic = value;
        return;
      case 'file':
        file = value;
        return;
      case 'isSubmited':
        isSubmited = value;
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
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Assignments>> find(
    _i1.Session session, {
    AssignmentsExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Assignments>(
      where: where != null ? where(Assignments.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Assignments?> findSingleRow(
    _i1.Session session, {
    AssignmentsExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Assignments>(
      where: where != null ? where(Assignments.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Assignments?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Assignments>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required AssignmentsExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Assignments>(
      where: where(Assignments.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Assignments row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Assignments row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Assignments row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    AssignmentsExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Assignments>(
      where: where != null ? where(Assignments.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef AssignmentsExpressionBuilder = _i1.Expression Function(
    AssignmentsTable);

class AssignmentsTable extends _i1.Table {
  AssignmentsTable() : super(tableName: 'assignment');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final title = _i1.ColumnString('title');

  final deadLine = _i1.ColumnString('deadLine');

  final topic = _i1.ColumnString('topic');

  final file = _i1.ColumnString('file');

  final isSubmited = _i1.ColumnBool('isSubmited');

  final dateAdded = _i1.ColumnString('dateAdded');

  final subjectId = _i1.ColumnInt('subjectId');

  final section = _i1.ColumnString('section');

  final programId = _i1.ColumnString('programId');

  final classId = _i1.ColumnInt('classId');

  @override
  List<_i1.Column> get columns => [
        id,
        title,
        deadLine,
        topic,
        file,
        isSubmited,
        dateAdded,
        subjectId,
        section,
        programId,
        classId,
      ];
}

@Deprecated('Use AssignmentsTable.t instead.')
AssignmentsTable tAssignments = AssignmentsTable();
