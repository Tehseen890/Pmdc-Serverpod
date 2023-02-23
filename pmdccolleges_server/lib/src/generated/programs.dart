/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Program extends _i1.TableRow {
  Program({
    int? id,
    required this.programId,
    required this.programName,
  }) : super(id);

  factory Program.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Program(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      programId:
          serializationManager.deserialize<int>(jsonSerialization['programId']),
      programName: serializationManager
          .deserialize<String>(jsonSerialization['programName']),
    );
  }

  static final t = ProgramTable();

  int programId;

  String programName;

  @override
  String get tableName => 'program';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'programId': programId,
      'programName': programName,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'programId': programId,
      'programName': programName,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'programId': programId,
      'programName': programName,
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
      case 'programId':
        programId = value;
        return;
      case 'programName':
        programName = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Program>> find(
    _i1.Session session, {
    ProgramExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Program>(
      where: where != null ? where(Program.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Program?> findSingleRow(
    _i1.Session session, {
    ProgramExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Program>(
      where: where != null ? where(Program.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Program?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Program>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required ProgramExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Program>(
      where: where(Program.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Program row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Program row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Program row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    ProgramExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Program>(
      where: where != null ? where(Program.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef ProgramExpressionBuilder = _i1.Expression Function(ProgramTable);

class ProgramTable extends _i1.Table {
  ProgramTable() : super(tableName: 'program');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final programId = _i1.ColumnInt('programId');

  final programName = _i1.ColumnString('programName');

  @override
  List<_i1.Column> get columns => [
        id,
        programId,
        programName,
      ];
}

@Deprecated('Use ProgramTable.t instead.')
ProgramTable tProgram = ProgramTable();
