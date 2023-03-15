import 'package:pmdccolleges_server/src/generated/endpoints.dart';
import 'package:pmdccolleges_server/src/generated/submittedassignments.dart';
import 'package:serverpod/serverpod.dart';

class SubmittedAssignmentsEndpoint extends Endpoints {
  Future<bool> submitAssignment(
      Session session, SubmittedAssignments assignment) async {
    await SubmittedAssignments.insert(session, assignment);
    return true;
  }

  Future<List<SubmittedAssignments>?> getSubmittedAssignments(
      Session session, int assignmentId) async {
    return await SubmittedAssignments.find(
      session,
      where: (assignment) => assignment.assignmentId.equals(assignmentId),
    );
  }
}
