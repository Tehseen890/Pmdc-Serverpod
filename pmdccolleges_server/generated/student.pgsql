--
-- Class Student as table student
--

CREATE TABLE "student" (
  "id" serial,
  "studentId" text NOT NULL,
  "firstName" text NOT NULL,
  "lastName" text NOT NULL,
  "dateOfBirth" text NOT NULL,
  "statue" boolean NOT NULL,
  "fatherName" text NOT NULL,
  "image" text NOT NULL,
  "transport" boolean NOT NULL,
  "busId" integer NOT NULL,
  "section" text NOT NULL,
  "scholarship" boolean NOT NULL,
  "admissionDate" text NOT NULL,
  "gender" text NOT NULL,
  "classId" integer NOT NULL,
  "password" text NOT NULL,
  "programId" integer NOT NULL
);

ALTER TABLE ONLY "student"
  ADD CONSTRAINT student_pkey PRIMARY KEY (id);


--
-- Class Teacher as table teacher
--

CREATE TABLE "teacher" (
  "id" serial,
  "teacherId" text NOT NULL,
  "teacherName" text NOT NULL,
  "dateOfBirth" text NOT NULL,
  "qualification" text NOT NULL,
  "status" boolean NOT NULL,
  "transport" boolean NOT NULL,
  "busId" boolean NOT NULL,
  "age" integer NOT NULL,
  "password" text NOT NULL,
  "subjectId" text NOT NULL
);

ALTER TABLE ONLY "teacher"
  ADD CONSTRAINT teacher_pkey PRIMARY KEY (id);


