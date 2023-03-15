--
-- Class Announcement as table announcement
--

CREATE TABLE "announcement" (
  "id" serial,
  "sNo" integer NOT NULL,
  "title" text NOT NULL,
  "description" text NOT NULL,
  "publishDate" text NOT NULL,
  "subjectId" integer NOT NULL,
  "programId" integer NOT NULL,
  "section" text NOT NULL,
  "classId" integer NOT NULL,
  "teacherId" text NOT NULL
);

ALTER TABLE ONLY "announcement"
  ADD CONSTRAINT announcement_pkey PRIMARY KEY (id);


--
-- Class Assignments as table assignment
--

CREATE TABLE "assignment" (
  "id" serial,
  "title" text NOT NULL,
  "deadLine" text NOT NULL,
  "topic" text NOT NULL,
  "file" text NOT NULL,
  "isSubmited" boolean NOT NULL,
  "dateAdded" text NOT NULL,
  "subjectId" integer NOT NULL,
  "section" text NOT NULL,
  "programId" text NOT NULL,
  "classId" integer NOT NULL,
  "teacherId" text NOT NULL
);

ALTER TABLE ONLY "assignment"
  ADD CONSTRAINT assignment_pkey PRIMARY KEY (id);


--
-- Class AssignSubjects as table assignsubjects
--

CREATE TABLE "assignsubjects" (
  "id" serial,
  "subjectName" text NOT NULL,
  "assignDate" text NOT NULL,
  "subjectId" text NOT NULL,
  "programId" integer NOT NULL,
  "classId" integer NOT NULL,
  "section" text NOT NULL,
  "teacherId" text NOT NULL
);

ALTER TABLE ONLY "assignsubjects"
  ADD CONSTRAINT assignsubjects_pkey PRIMARY KEY (id);


--
-- Class FeeRecord as table feerecord
--

CREATE TABLE "feerecord" (
  "id" serial,
  "totalFee" integer NOT NULL,
  "paid" integer NOT NULL,
  "instalmentDate" text NOT NULL,
  "studentId" text NOT NULL
);

ALTER TABLE ONLY "feerecord"
  ADD CONSTRAINT feerecord_pkey PRIMARY KEY (id);


--
-- Class Library as table library
--

CREATE TABLE "library" (
  "id" serial,
  "bookName" text NOT NULL,
  "sNo" text NOT NULL,
  "givenDate" text NOT NULL,
  "returnDate" text NOT NULL,
  "studentId" text NOT NULL
);

ALTER TABLE ONLY "library"
  ADD CONSTRAINT library_pkey PRIMARY KEY (id);


--
-- Class NoticeBoard as table noticeboard
--

CREATE TABLE "noticeboard" (
  "id" serial,
  "notice" text NOT NULL,
  "date" text NOT NULL,
  "subject" text NOT NULL,
  "noticeId" integer NOT NULL
);

ALTER TABLE ONLY "noticeboard"
  ADD CONSTRAINT noticeboard_pkey PRIMARY KEY (id);


--
-- Class Program as table program
--

CREATE TABLE "program" (
  "id" serial,
  "programId" integer NOT NULL,
  "programName" text NOT NULL
);

ALTER TABLE ONLY "program"
  ADD CONSTRAINT program_pkey PRIMARY KEY (id);


--
-- Class Quizes as table quizes
--

CREATE TABLE "quizes" (
  "id" serial,
  "chapterName" text NOT NULL,
  "chapterNo" text NOT NULL,
  "topic" text NOT NULL,
  "file" text NOT NULL,
  "teacherId" integer NOT NULL,
  "dateAdded" text NOT NULL,
  "viewCount" text NOT NULL,
  "subjectId" integer NOT NULL,
  "section" text NOT NULL,
  "classId" integer NOT NULL
);

ALTER TABLE ONLY "quizes"
  ADD CONSTRAINT quizes_pkey PRIMARY KEY (id);


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
-- Class SubjectDiary as table subjectdiary
--

CREATE TABLE "subjectdiary" (
  "id" serial,
  "weekNo" text NOT NULL,
  "chapterNo" text NOT NULL,
  "chapterName" text NOT NULL,
  "topic" text NOT NULL,
  "dateAdded" text NOT NULL,
  "status" text NOT NULL,
  "subjectId" integer NOT NULL,
  "section" text NOT NULL,
  "programId" integer NOT NULL,
  "classId" integer NOT NULL
);

ALTER TABLE ONLY "subjectdiary"
  ADD CONSTRAINT subjectdiary_pkey PRIMARY KEY (id);


--
-- Class SubjectNotes as table subjectnotes
--

CREATE TABLE "subjectnotes" (
  "id" serial,
  "chapterName" text NOT NULL,
  "chapterNo" text NOT NULL,
  "topic" text NOT NULL,
  "file" text NOT NULL,
  "teacherId" text NOT NULL,
  "dateAdded" text NOT NULL,
  "viewCount" text NOT NULL,
  "subjectId" text NOT NULL,
  "programId" integer NOT NULL,
  "section" text NOT NULL,
  "classId" integer NOT NULL
);

ALTER TABLE ONLY "subjectnotes"
  ADD CONSTRAINT subjectnotes_pkey PRIMARY KEY (id);


--
-- Class Subjects as table subjects
--

CREATE TABLE "subjects" (
  "id" serial,
  "subjectId" text NOT NULL,
  "subjectName" text NOT NULL,
  "subjectCode" text NOT NULL,
  "programId" integer NOT NULL,
  "classId" integer NOT NULL
);

ALTER TABLE ONLY "subjects"
  ADD CONSTRAINT subjects_pkey PRIMARY KEY (id);


--
-- Class Submission as table submission
--

CREATE TABLE "submission" (
  "id" serial,
  "file" text NOT NULL,
  "studentName" text NOT NULL,
  "studentId" text NOT NULL,
  "dateAdded" text NOT NULL,
  "subjectId" integer NOT NULL,
  "section" text NOT NULL,
  "programId" text NOT NULL,
  "classId" integer NOT NULL,
  "teacherId" text NOT NULL,
  "assignmentId" integer NOT NULL
);

ALTER TABLE ONLY "submission"
  ADD CONSTRAINT submission_pkey PRIMARY KEY (id);


--
-- Class Submitasignment as table submitasignment
--

CREATE TABLE "submitasignment" (
  "id" serial,
  "file" text NOT NULL,
  "studentName" text NOT NULL,
  "studentId" text NOT NULL,
  "dateAdded" text NOT NULL,
  "subjectId" integer NOT NULL,
  "section" text NOT NULL,
  "programId" text NOT NULL,
  "classId" integer NOT NULL,
  "teacherId" text NOT NULL,
  "assignmentId" integer NOT NULL
);

ALTER TABLE ONLY "submitasignment"
  ADD CONSTRAINT submitasignment_pkey PRIMARY KEY (id);


--
-- Class SubmittedAssignments as table submittedassignments
--

CREATE TABLE "submittedassignments" (
  "id" serial,
  "file" text NOT NULL,
  "studentName" text NOT NULL,
  "studentId" text NOT NULL,
  "dateAdded" text NOT NULL,
  "subjectId" integer NOT NULL,
  "section" text NOT NULL,
  "programId" text NOT NULL,
  "classId" integer NOT NULL,
  "teacherId" text NOT NULL,
  "assignmentId" integer NOT NULL
);

ALTER TABLE ONLY "submittedassignments"
  ADD CONSTRAINT submittedassignments_pkey PRIMARY KEY (id);


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


--
-- Class VideoLectures as table videolectures
--

CREATE TABLE "videolectures" (
  "id" serial,
  "chapterName" text NOT NULL,
  "chapterNo" text NOT NULL,
  "topic" text NOT NULL,
  "file" text NOT NULL,
  "teacherId" integer NOT NULL,
  "dateAdded" text NOT NULL,
  "viewCount" text NOT NULL,
  "subjectId" integer NOT NULL,
  "programId" integer NOT NULL,
  "section" text NOT NULL,
  "classId" integer NOT NULL
);

ALTER TABLE ONLY "videolectures"
  ADD CONSTRAINT videolectures_pkey PRIMARY KEY (id);


