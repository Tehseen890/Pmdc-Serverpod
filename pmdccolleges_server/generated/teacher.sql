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