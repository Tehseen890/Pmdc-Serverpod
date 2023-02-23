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