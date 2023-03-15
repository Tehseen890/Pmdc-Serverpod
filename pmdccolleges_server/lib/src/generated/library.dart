/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Library extends _i1.TableRow {
  Library({
    int? id,
    required this.bookName,
    required this.sNo,
    required this.givenDate,
    required this.returnDate,
    required this.studentId,
  }) : super(id);

  factory Library.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Library(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      bookName: serializationManager
          .deserialize<String>(jsonSerialization['bookName']),
      sNo: serializationManager.deserialize<String>(jsonSerialization['sNo']),
      givenDate: serializationManager
          .deserialize<String>(jsonSerialization['givenDate']),
      returnDate: serializationManager
          .deserialize<String>(jsonSerialization['returnDate']),
      studentId: serializationManager
          .deserialize<String>(jsonSerialization['studentId']),
    );
  }

  static final t = LibraryTable();

  String bookName;

  String sNo;

  String givenDate;

  String returnDate;

  String studentId;

  @override
  String get tableName => 'library';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'bookName': bookName,
      'sNo': sNo,
      'givenDate': givenDate,
      'returnDate': returnDate,
      'studentId': studentId,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'bookName': bookName,
      'sNo': sNo,
      'givenDate': givenDate,
      'returnDate': returnDate,
      'studentId': studentId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'bookName': bookName,
      'sNo': sNo,
      'givenDate': givenDate,
      'returnDate': returnDate,
      'studentId': studentId,
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
      case 'bookName':
        bookName = value;
        return;
      case 'sNo':
        sNo = value;
        return;
      case 'givenDate':
        givenDate = value;
        return;
      case 'returnDate':
        returnDate = value;
        return;
      case 'studentId':
        studentId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Library>> find(
    _i1.Session session, {
    LibraryExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Library>(
      where: where != null ? where(Library.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Library?> findSingleRow(
    _i1.Session session, {
    LibraryExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Library>(
      where: where != null ? where(Library.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Library?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Library>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required LibraryExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Library>(
      where: where(Library.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Library row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Library row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Library row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    LibraryExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Library>(
      where: where != null ? where(Library.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef LibraryExpressionBuilder = _i1.Expression Function(LibraryTable);

class LibraryTable extends _i1.Table {
  LibraryTable() : super(tableName: 'library');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final bookName = _i1.ColumnString('bookName');

  final sNo = _i1.ColumnString('sNo');

  final givenDate = _i1.ColumnString('givenDate');

  final returnDate = _i1.ColumnString('returnDate');

  final studentId = _i1.ColumnString('studentId');

  @override
  List<_i1.Column> get columns => [
        id,
        bookName,
        sNo,
        givenDate,
        returnDate,
        studentId,
      ];
}

@Deprecated('Use LibraryTable.t instead.')
LibraryTable tLibrary = LibraryTable();
