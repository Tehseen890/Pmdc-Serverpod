/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class SubjectNotes extends _i1.TableRow {
  SubjectNotes({
    int? id,
    required this.chapterName,
    required this.chapterNo,
    required this.topic,
    required this.file,
    required this.teacherId,
    required this.dateAdded,
    required this.viewCount,
    required this.subjectId,
    required this.programId,
    required this.section,
    required this.classId,
  }) : super(id);

  factory SubjectNotes.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return SubjectNotes(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      chapterName: serializationManager
          .deserialize<String>(jsonSerialization['chapterName']),
      chapterNo: serializationManager
          .deserialize<String>(jsonSerialization['chapterNo']),
      topic:
          serializationManager.deserialize<String>(jsonSerialization['topic']),
      file: serializationManager.deserialize<String>(jsonSerialization['file']),
      teacherId:
          serializationManager.deserialize<int>(jsonSerialization['teacherId']),
      dateAdded: serializationManager
          .deserialize<String>(jsonSerialization['dateAdded']),
      viewCount: serializationManager
          .deserialize<String>(jsonSerialization['viewCount']),
      subjectId:
          serializationManager.deserialize<int>(jsonSerialization['subjectId']),
      programId:
          serializationManager.deserialize<int>(jsonSerialization['programId']),
      section: serializationManager
          .deserialize<String>(jsonSerialization['section']),
      classId:
          serializationManager.deserialize<int>(jsonSerialization['classId']),
    );
  }

  static final t = SubjectNotesTable();

  String chapterName;

  String chapterNo;

  String topic;

  String file;

  int teacherId;

  String dateAdded;

  String viewCount;

  int subjectId;

  int programId;

  String section;

  int classId;

  @override
  String get tableName => 'subjectnotes';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'chapterName': chapterName,
      'chapterNo': chapterNo,
      'topic': topic,
      'file': file,
      'teacherId': teacherId,
      'dateAdded': dateAdded,
      'viewCount': viewCount,
      'subjectId': subjectId,
      'programId': programId,
      'section': section,
      'classId': classId,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'chapterName': chapterName,
      'chapterNo': chapterNo,
      'topic': topic,
      'file': file,
      'teacherId': teacherId,
      'dateAdded': dateAdded,
      'viewCount': viewCount,
      'subjectId': subjectId,
      'programId': programId,
      'section': section,
      'classId': classId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'chapterName': chapterName,
      'chapterNo': chapterNo,
      'topic': topic,
      'file': file,
      'teacherId': teacherId,
      'dateAdded': dateAdded,
      'viewCount': viewCount,
      'subjectId': subjectId,
      'programId': programId,
      'section': section,
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
      case 'chapterName':
        chapterName = value;
        return;
      case 'chapterNo':
        chapterNo = value;
        return;
      case 'topic':
        topic = value;
        return;
      case 'file':
        file = value;
        return;
      case 'teacherId':
        teacherId = value;
        return;
      case 'dateAdded':
        dateAdded = value;
        return;
      case 'viewCount':
        viewCount = value;
        return;
      case 'subjectId':
        subjectId = value;
        return;
      case 'programId':
        programId = value;
        return;
      case 'section':
        section = value;
        return;
      case 'classId':
        classId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<SubjectNotes>> find(
    _i1.Session session, {
    SubjectNotesExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<SubjectNotes>(
      where: where != null ? where(SubjectNotes.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<SubjectNotes?> findSingleRow(
    _i1.Session session, {
    SubjectNotesExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<SubjectNotes>(
      where: where != null ? where(SubjectNotes.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<SubjectNotes?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<SubjectNotes>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required SubjectNotesExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<SubjectNotes>(
      where: where(SubjectNotes.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    SubjectNotes row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    SubjectNotes row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    SubjectNotes row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    SubjectNotesExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<SubjectNotes>(
      where: where != null ? where(SubjectNotes.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef SubjectNotesExpressionBuilder = _i1.Expression Function(
    SubjectNotesTable);

class SubjectNotesTable extends _i1.Table {
  SubjectNotesTable() : super(tableName: 'subjectnotes');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final chapterName = _i1.ColumnString('chapterName');

  final chapterNo = _i1.ColumnString('chapterNo');

  final topic = _i1.ColumnString('topic');

  final file = _i1.ColumnString('file');

  final teacherId = _i1.ColumnInt('teacherId');

  final dateAdded = _i1.ColumnString('dateAdded');

  final viewCount = _i1.ColumnString('viewCount');

  final subjectId = _i1.ColumnInt('subjectId');

  final programId = _i1.ColumnInt('programId');

  final section = _i1.ColumnString('section');

  final classId = _i1.ColumnInt('classId');

  @override
  List<_i1.Column> get columns => [
        id,
        chapterName,
        chapterNo,
        topic,
        file,
        teacherId,
        dateAdded,
        viewCount,
        subjectId,
        programId,
        section,
        classId,
      ];
}

@Deprecated('Use SubjectNotesTable.t instead.')
SubjectNotesTable tSubjectNotes = SubjectNotesTable();
