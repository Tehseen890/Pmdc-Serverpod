/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class SubjectDiary extends _i1.TableRow {
  SubjectDiary({
    int? id,
    required this.weekNo,
    required this.chapterNo,
    required this.chapterName,
    required this.topic,
    required this.dateAdded,
    required this.status,
    required this.subjectId,
    required this.section,
    required this.programId,
    required this.classId,
  }) : super(id);

  factory SubjectDiary.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return SubjectDiary(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      weekNo:
          serializationManager.deserialize<String>(jsonSerialization['weekNo']),
      chapterNo: serializationManager
          .deserialize<String>(jsonSerialization['chapterNo']),
      chapterName: serializationManager
          .deserialize<String>(jsonSerialization['chapterName']),
      topic:
          serializationManager.deserialize<String>(jsonSerialization['topic']),
      dateAdded: serializationManager
          .deserialize<String>(jsonSerialization['dateAdded']),
      status:
          serializationManager.deserialize<String>(jsonSerialization['status']),
      subjectId:
          serializationManager.deserialize<int>(jsonSerialization['subjectId']),
      section: serializationManager
          .deserialize<String>(jsonSerialization['section']),
      programId:
          serializationManager.deserialize<int>(jsonSerialization['programId']),
      classId:
          serializationManager.deserialize<int>(jsonSerialization['classId']),
    );
  }

  static final t = SubjectDiaryTable();

  String weekNo;

  String chapterNo;

  String chapterName;

  String topic;

  String dateAdded;

  String status;

  int subjectId;

  String section;

  int programId;

  int classId;

  @override
  String get tableName => 'subjectdiary';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'weekNo': weekNo,
      'chapterNo': chapterNo,
      'chapterName': chapterName,
      'topic': topic,
      'dateAdded': dateAdded,
      'status': status,
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
      'weekNo': weekNo,
      'chapterNo': chapterNo,
      'chapterName': chapterName,
      'topic': topic,
      'dateAdded': dateAdded,
      'status': status,
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
      'weekNo': weekNo,
      'chapterNo': chapterNo,
      'chapterName': chapterName,
      'topic': topic,
      'dateAdded': dateAdded,
      'status': status,
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
      case 'weekNo':
        weekNo = value;
        return;
      case 'chapterNo':
        chapterNo = value;
        return;
      case 'chapterName':
        chapterName = value;
        return;
      case 'topic':
        topic = value;
        return;
      case 'dateAdded':
        dateAdded = value;
        return;
      case 'status':
        status = value;
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

  static Future<List<SubjectDiary>> find(
    _i1.Session session, {
    SubjectDiaryExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<SubjectDiary>(
      where: where != null ? where(SubjectDiary.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<SubjectDiary?> findSingleRow(
    _i1.Session session, {
    SubjectDiaryExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<SubjectDiary>(
      where: where != null ? where(SubjectDiary.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<SubjectDiary?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<SubjectDiary>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required SubjectDiaryExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<SubjectDiary>(
      where: where(SubjectDiary.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    SubjectDiary row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    SubjectDiary row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    SubjectDiary row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    SubjectDiaryExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<SubjectDiary>(
      where: where != null ? where(SubjectDiary.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef SubjectDiaryExpressionBuilder = _i1.Expression Function(
    SubjectDiaryTable);

class SubjectDiaryTable extends _i1.Table {
  SubjectDiaryTable() : super(tableName: 'subjectdiary');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final weekNo = _i1.ColumnString('weekNo');

  final chapterNo = _i1.ColumnString('chapterNo');

  final chapterName = _i1.ColumnString('chapterName');

  final topic = _i1.ColumnString('topic');

  final dateAdded = _i1.ColumnString('dateAdded');

  final status = _i1.ColumnString('status');

  final subjectId = _i1.ColumnInt('subjectId');

  final section = _i1.ColumnString('section');

  final programId = _i1.ColumnInt('programId');

  final classId = _i1.ColumnInt('classId');

  @override
  List<_i1.Column> get columns => [
        id,
        weekNo,
        chapterNo,
        chapterName,
        topic,
        dateAdded,
        status,
        subjectId,
        section,
        programId,
        classId,
      ];
}

@Deprecated('Use SubjectDiaryTable.t instead.')
SubjectDiaryTable tSubjectDiary = SubjectDiaryTable();
