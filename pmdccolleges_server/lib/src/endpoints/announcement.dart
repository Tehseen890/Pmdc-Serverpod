import 'package:pmdccolleges_server/src/generated/protocol.dart';
import 'package:serverpod/server.dart';

class AnnouncementEndpoint extends Endpoint {
  Future<List<Announcement>> getAnnouncementStudent(
      Session session, String studentId, String subjectId) async {
    final student = await Student.findSingleRow(
      session,
      where: (student) => student.studentId.equals(studentId),
    );
    return await Announcement.find(
      session,
      where: (announcement) =>
          announcement.subjectId.equals(int.parse(subjectId)) &
          announcement.programId.equals(student?.programId) &
          announcement.section.equals(student?.section) &
          announcement.classId.equals(student?.classId),
    );
  }

  Future<List<Announcement>> getAnnouncementTeacher(
      Session session,
      String teacherId,
      String subjectId,
      int classId,
      int programId,
      String section) async {
    return await Announcement.find(
      session,
      where: (announcement) =>
          announcement.subjectId.equals(int.parse(subjectId)) &
          announcement.programId.equals(programId) &
          announcement.section.equals(section) &
          announcement.classId.equals(classId),
    );
  }

  Future<bool> addAnnouncement(
      Session session, Announcement announcement) async {
    await Announcement.insert(session, announcement);
    return true;
  }

  Future<bool> updateAnnouncement(
      Session session, Announcement announcement) async {
    await Announcement.update(session, announcement);
    return true;
  }

  Future<bool> deleteAnnouncement(Session session, int assignmentId) async {
    await Announcement.delete(
      session,
      where: (assignment) => assignment.id.equals(assignmentId),
    );
    return true;
  }
}
