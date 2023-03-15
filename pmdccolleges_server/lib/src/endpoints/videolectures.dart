import 'package:pmdccolleges_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class VideolectureEndpoint extends Endpoint {
  Future<List<VideoLectures>> getVideoLecture(
      Session session, String studentId, int subjectId) async {
    final student = await Student.findSingleRow(
      session,
      where: (student) => student.studentId.equals(studentId),
    );
    return await VideoLectures.find(
      session,
      where: (videoLecture) =>
          videoLecture.subjectId.equals(subjectId) &
          videoLecture.programId.equals(student?.programId) &
          videoLecture.section.equals(student?.section) &
          videoLecture.classId.equals(student?.classId),
    );
  }

  Future<List<VideoLectures>> getVideoLectureTeacher(
    Session session,
    int teacherId,
    int subjectId,
    int classId,
    int programId,
    String section,
  ) async {
    ("Teacher id: $teacherId, subject Id: $subjectId, Class: $classId, program: $programId, section: $section");
    return await VideoLectures.find(
      session,
      where: (notes) =>
          notes.subjectId.equals(subjectId) &
          notes.programId.equals(programId) &
          notes.section.equals(section) &
          notes.classId.equals(classId) &
          notes.teacherId.equals(teacherId),
    );
  }

  // Future<List<VideoLectures>?> getTeacherNotes(
  //     Session session, String teacherId) async {
  //   return await VideoLectures.find(
  //     session,
  //     where: (p0) => p0.teacherId.equals(teacherId),
  //   );
  // }

  Future<bool> addVideoLecture(
      Session session, VideoLectures subjectNotes) async {
    await VideoLectures.insert(session, subjectNotes);
    return true;
  }

  Future<bool> updateVideoLectures(
      Session session, VideoLectures subjectNotes) async {
    await VideoLectures.update(session, subjectNotes);
    return true;
  }

  Future<bool> deleteVideoLectures(Session session, int notesId) async {
    await VideoLectures.delete(
      session,
      where: (subjectNote) => subjectNote.id.equals(notesId),
    );
    return true;
  }
}
