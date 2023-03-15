import 'package:pmdccolleges_server/src/generated/endpoints.dart';
import 'package:pmdccolleges_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class SubmitasignmentEndpoint extends Endpoints {
  Future<bool> submitAsignment(
      Session session, Submitasignment asignment) async {
    await Submitasignment.insert(session, asignment);
    return true;
  }

  Future<List<Submitasignment>> getSubmitasignment(
      Session session, int assignmentId) async {
    return await Submitasignment.find(
      session,
      where: (p0) => p0.assignmentId.equals(assignmentId),
    );
  }
}
