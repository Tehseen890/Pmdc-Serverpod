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
