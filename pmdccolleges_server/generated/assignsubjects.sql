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