import 'package:pmdccolleges_server/src/generated/assignment.dart';
import 'package:pmdccolleges_server/src/generated/protocol.dart';
import 'package:serverpod/server.dart';

class AssignmentEndpoint extends Endpoint {
  Future<List<Assignments>> getAssignmentsStudent(
    Session session,
    String studentId,
    String subjectId,
  ) async {
    final student = await Student.findSingleRow(
      session,
      where: (student) => student.studentId.equals(studentId),
    );
    return await Assignments.find(
      session,
      where: (assignment) =>
          assignment.subjectId.equals(int.parse(subjectId)) &
          assignment.programId.equals(student?.programId.toString()) &
          assignment.section.equals(student?.section) &
          assignment.classId.equals(student?.classId),
    );
  }

  Future<List<Assignments>> getAssignmentsTeacher(
      Session session,
      String teacherId,
      String subjectId,
      int classId,
      int programId,
      String section) async {
    return await Assignments.find(
      session,
      where: (assignment) =>
          assignment.subjectId.equals(int.parse(subjectId)) &
          assignment.programId.equals(programId.toString()) &
          assignment.section.equals(section) &
          assignment.classId.equals(classId),
    );
  }

  Future<bool> addAssignment(Session session, Assignments assignment) async {
    await Assignments.insert(session, assignment);
    return true;
  }

  Future<bool> updateAssignment(Session session, Assignments assignment) async {
    await Assignments.update(session, assignment);
    return true;
  }

  Future<bool> deleteAssignment(Session session, int assignmentId) async {
    await Assignments.delete(
      session,
      where: (assignment) => assignment.id.equals(assignmentId),
    );
    return true;
  }

  Future<bool> submitAsignment(
      Session session, Submitasignment asignment) async {
    await Submitasignment.insert(session, asignment);
    return true;
  }

  Future<List<Submitasignment>> getSubmitasignment(
      Session session, int? assignmentId) async {
    return await Submitasignment.find(
      session,
      where: (p0) => p0.assignmentId.equals(assignmentId),
    );
  }

  Future<List<Submitasignment>?> getSubmitasignmentForStudent(
      Session session, String studentId, int subjectId) async {
    final student = await Student.findSingleRow(
      session,
      where: (student) => student.studentId.equals(studentId),
    );
    return await Submitasignment.find(
      session,
      where: (subjectNote) =>
          subjectNote.subjectId.equals(subjectId) &
          subjectNote.programId.equals(student?.programId.toString()) &
          subjectNote.section.equals(student?.section) &
          subjectNote.classId.equals(student?.classId),
    );
  }
}
