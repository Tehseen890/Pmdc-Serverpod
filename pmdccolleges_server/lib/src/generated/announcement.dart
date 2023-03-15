/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Announcement extends _i1.TableRow {
  Announcement({
    int? id,
    required this.sNo,
    required this.title,
    required this.description,
    required this.publishDate,
    required this.subjectId,
    required this.programId,
    required this.section,
    required this.classId,
    required this.teacherId,
  }) : super(id);

  factory Announcement.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Announcement(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      sNo: serializationManager.deserialize<int>(jsonSerialization['sNo']),
      title:
          serializationManager.deserialize<String>(jsonSerialization['title']),
      description: serializationManager
          .deserialize<String>(jsonSerialization['description']),
      publishDate: serializationManager
          .deserialize<String>(jsonSerialization['publishDate']),
      subjectId:
          serializationManager.deserialize<int>(jsonSerialization['subjectId']),
      programId:
          serializationManager.deserialize<int>(jsonSerialization['programId']),
      section: serializationManager
          .deserialize<String>(jsonSerialization['section']),
      classId:
          serializationManager.deserialize<int>(jsonSerialization['classId']),
      teacherId: serializationManager
          .deserialize<String>(jsonSerialization['teacherId']),
    );
  }

  static final t = AnnouncementTable();

  int sNo;

  String title;

  String description;

  String publishDate;

  int subjectId;

  int programId;

  String section;

  int classId;

  String teacherId;

  @override
  String get tableName => 'announcement';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'sNo': sNo,
      'title': title,
      'description': description,
      'publishDate': publishDate,
      'subjectId': subjectId,
      'programId': programId,
      'section': section,
      'classId': classId,
      'teacherId': teacherId,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'sNo': sNo,
      'title': title,
      'description': description,
      'publishDate': publishDate,
      'subjectId': subjectId,
      'programId': programId,
      'section': section,
      'classId': classId,
      'teacherId': teacherId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'sNo': sNo,
      'title': title,
      'description': description,
      'publishDate': publishDate,
      'subjectId': subjectId,
      'programId': programId,
      'section': section,
      'classId': classId,
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
      case 'sNo':
        sNo = value;
        return;
      case 'title':
        title = value;
        return;
      case 'description':
        description = value;
        return;
      case 'publishDate':
        publishDate = value;
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
      case 'teacherId':
        teacherId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Announcement>> find(
    _i1.Session session, {
    AnnouncementExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Announcement>(
      where: where != null ? where(Announcement.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Announcement?> findSingleRow(
    _i1.Session session, {
    AnnouncementExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Announcement>(
      where: where != null ? where(Announcement.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Announcement?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Announcement>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required AnnouncementExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Announcement>(
      where: where(Announcement.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Announcement row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Announcement row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Announcement row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    AnnouncementExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Announcement>(
      where: where != null ? where(Announcement.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef AnnouncementExpressionBuilder = _i1.Expression Function(
    AnnouncementTable);

class AnnouncementTable extends _i1.Table {
  AnnouncementTable() : super(tableName: 'announcement');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final sNo = _i1.ColumnInt('sNo');

  final title = _i1.ColumnString('title');

  final description = _i1.ColumnString('description');

  final publishDate = _i1.ColumnString('publishDate');

  final subjectId = _i1.ColumnInt('subjectId');

  final programId = _i1.ColumnInt('programId');

  final section = _i1.ColumnString('section');

  final classId = _i1.ColumnInt('classId');

  final teacherId = _i1.ColumnString('teacherId');

  @override
  List<_i1.Column> get columns => [
        id,
        sNo,
        title,
        description,
        publishDate,
        subjectId,
        programId,
        section,
        classId,
        teacherId,
      ];
}

@Deprecated('Use AnnouncementTable.t instead.')
AnnouncementTable tAnnouncement = AnnouncementTable();
