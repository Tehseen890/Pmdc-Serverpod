/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class FeeRecord extends _i1.TableRow {
  FeeRecord({
    int? id,
    required this.totalFee,
    required this.paid,
    required this.instalmentDate,
    required this.studentId,
  }) : super(id);

  factory FeeRecord.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return FeeRecord(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      totalFee:
          serializationManager.deserialize<int>(jsonSerialization['totalFee']),
      paid: serializationManager.deserialize<int>(jsonSerialization['paid']),
      instalmentDate: serializationManager
          .deserialize<String>(jsonSerialization['instalmentDate']),
      studentId: serializationManager
          .deserialize<String>(jsonSerialization['studentId']),
    );
  }

  static final t = FeeRecordTable();

  int totalFee;

  int paid;

  String instalmentDate;

  String studentId;

  @override
  String get tableName => 'feerecord';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'totalFee': totalFee,
      'paid': paid,
      'instalmentDate': instalmentDate,
      'studentId': studentId,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'totalFee': totalFee,
      'paid': paid,
      'instalmentDate': instalmentDate,
      'studentId': studentId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'totalFee': totalFee,
      'paid': paid,
      'instalmentDate': instalmentDate,
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
      case 'totalFee':
        totalFee = value;
        return;
      case 'paid':
        paid = value;
        return;
      case 'instalmentDate':
        instalmentDate = value;
        return;
      case 'studentId':
        studentId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<FeeRecord>> find(
    _i1.Session session, {
    FeeRecordExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<FeeRecord>(
      where: where != null ? where(FeeRecord.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<FeeRecord?> findSingleRow(
    _i1.Session session, {
    FeeRecordExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<FeeRecord>(
      where: where != null ? where(FeeRecord.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<FeeRecord?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<FeeRecord>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required FeeRecordExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<FeeRecord>(
      where: where(FeeRecord.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    FeeRecord row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    FeeRecord row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    FeeRecord row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    FeeRecordExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<FeeRecord>(
      where: where != null ? where(FeeRecord.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef FeeRecordExpressionBuilder = _i1.Expression Function(FeeRecordTable);

class FeeRecordTable extends _i1.Table {
  FeeRecordTable() : super(tableName: 'feerecord');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final totalFee = _i1.ColumnInt('totalFee');

  final paid = _i1.ColumnInt('paid');

  final instalmentDate = _i1.ColumnString('instalmentDate');

  final studentId = _i1.ColumnString('studentId');

  @override
  List<_i1.Column> get columns => [
        id,
        totalFee,
        paid,
        instalmentDate,
        studentId,
      ];
}

@Deprecated('Use FeeRecordTable.t instead.')
FeeRecordTable tFeeRecord = FeeRecordTable();
