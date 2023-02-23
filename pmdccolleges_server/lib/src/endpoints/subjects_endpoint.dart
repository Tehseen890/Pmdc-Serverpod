import 'package:pmdccolleges_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class SubjectsEndpoint extends Endpoint {
  Future<List<Subjects>> getSubjects(
      Session session, int? classId, int? programId) async {
    return Subjects.find(
      session,
      where: (subject) =>
          subject.classId.equals(classId) & subject.programId.equals(programId),
    );
  }
}
