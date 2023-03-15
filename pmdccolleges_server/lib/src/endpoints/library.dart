import 'package:pmdccolleges_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class LibraryEndpoint extends Endpoint {
  Future<List<Library>> getBooks(Session session, String studentId) async {
    return Library.find(
      session,
      where: (book) => book.studentId.equals(studentId),
    );
  }
}
