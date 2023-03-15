import 'package:pmdccolleges_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

// This is an example endpoint of your server. It's best practice to use the
// `Endpoint` ending of the class name, but it will be removed when accessing
// the endpoint from the client. I.e., this endpoint can be accessed through
// `client.example` on the client side.

// After adding or modifying an endpoint, you will need to run
// `serverpod generate` to update the server and client code.
class StudentEndpoint extends Endpoint {
  // You create methods in your endpoint which are accessible from the client by
  // creating a public method with `Session` as its first parameter. Supported
  // parameter types are `bool`, `int`, `double`, `String`, `DateTime`, and any
  // objects that are generated from your `protocol` directory. The methods
  // should return a typed future; the same types as for the parameters are
  // supported. The `session` object provides access to the database, logging,
  // passwords, and information about the request being made to the server.
  Future<Student?> getStudent(
      Session session, String? id, String password) async {
    return await Student.findSingleRow(
      session,
      where: (std) => std.studentId.equals(id) & std.password.equals(password),
    );
  }

  Future<bool?> addStudent(Session session, Student student) async {
    await Student.insert(session, student);
    return true;
  }

  Future<List<Student>?> getStudents(
    Session session,
    int classId,
    int programId,
    String section,
  ) async {
    return await Student.find(
      session,
      where: (std) =>
          std.classId.equals(classId) &
          std.programId.equals(programId) &
          std.section.like(section),
    );
  }
}
