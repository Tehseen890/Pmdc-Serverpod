import 'package:pmdccolleges_server/src/generated/endpoints.dart';
import 'package:pmdccolleges_server/src/generated/protocol.dart';
import 'package:serverpod/server.dart';

class SubmissionEndpoint extends Endpoints {
  Future<bool> submitAssignment(Session session, Submission assignment) async {
    await Submission.insert(session, assignment);
    return true;
  }

  Future<List<Submission>?> getSubmittedAssignments(
      Session session, int assignmentId) async {
    return await Submission.find(
      session,
      where: (assignment) => assignment.assignmentId.equals(assignmentId),
    );
  }
}
