import 'package:pmdccolleges_server/src/generated/protocol.dart';
import 'package:serverpod/server.dart';

class SubjectdiaryEndpoint extends Endpoint {
  Future<List<SubjectDiary>> getSubjectDiary(
      Session session, String studentId, String subjectId) async {
    final student = await Student.findSingleRow(
      session,
      where: (student) => student.studentId.equals(studentId),
    );
    return await SubjectDiary.find(
      session,
      where: (announcement) =>
          announcement.subjectId.equals(int.parse(subjectId)) &
          announcement.programId.equals(student?.programId) &
          announcement.section.equals(student?.section) &
          announcement.classId.equals(student?.classId),
    );
  }

  Future<List<SubjectDiary>> getSubjectDiaryTeacher(
      Session session,
      String teacherId,
      String subjectId,
      int classId,
      int programId,
      String section) async {
    return await SubjectDiary.find(
      session,
      where: (announcement) =>
          announcement.subjectId.equals(int.parse(subjectId)) &
          announcement.programId.equals(programId) &
          announcement.section.equals(section) &
          announcement.classId.equals(classId),
    );
  }

  Future<bool> addSubjectDiary(
      Session session, SubjectDiary announcement) async {
    await SubjectDiary.insert(session, announcement);
    return true;
  }

  Future<bool> updateSubjectDiary(
      Session session, SubjectDiary announcement) async {
    await SubjectDiary.update(session, announcement);
    return true;
  }

  Future<bool> deleteSubjectDiary(Session session, int assignmentId) async {
    await SubjectDiary.delete(
      session,
      where: (assignment) => assignment.id.equals(assignmentId),
    );
    return true;
  }
}
