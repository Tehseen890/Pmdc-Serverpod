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