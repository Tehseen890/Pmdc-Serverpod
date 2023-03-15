import 'package:pmdccolleges_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class SubjectnotesEndpoint extends Endpoint {
  Future<List<SubjectNotes>> getSubjecrNotes(
      Session session, String studentId, String subjectId) async {
    final student = await Student.findSingleRow(
      session,
      where: (student) => student.studentId.equals(studentId),
    );
    return await SubjectNotes.find(
      session,
      where: (subjectNote) =>
          subjectNote.subjectId.equals(subjectId) &
          subjectNote.programId.equals(student?.programId) &
          subjectNote.section.equals(student?.section) &
          subjectNote.classId.equals(student?.classId),
    );
  }

  Future<List<SubjectNotes>> getSubjectNotesTeacher(
    Session session,
    String teacherId,
    String subjectId,
    int classId,
    int programId,
    String section,
  ) async {
    ("Teacher id: $teacherId, subject Id: $subjectId, Class: $classId, program: $programId, section: $section");
    return await SubjectNotes.find(
      session,
      where: (notes) =>
          notes.subjectId.equals(subjectId) &
          notes.programId.equals(programId) &
          notes.section.equals(section) &
          notes.classId.equals(classId) &
          notes.teacherId.equals(teacherId),
    );
  }

  Future<List<SubjectNotes>?> getTeacherNotes(
      Session session, String teacherId) async {
    return await SubjectNotes.find(
      session,
      where: (p0) => p0.teacherId.equals(teacherId),
    );
  }

  Future<bool> addSubjectNotes(
      Session session, SubjectNotes subjectNotes) async {
    await SubjectNotes.insert(session, subjectNotes);
    return true;
  }

  Future<bool> updateSubjectNotes(
      Session session, SubjectNotes subjectNotes) async {
    await SubjectNotes.update(session, subjectNotes);
    return true;
  }

  Future<bool> deleteSubjectNotes(Session session, int notesId) async {
    await SubjectNotes.delete(
      session,
      where: (subjectNote) => subjectNote.id.equals(notesId),
    );
    return true;
  }
}
