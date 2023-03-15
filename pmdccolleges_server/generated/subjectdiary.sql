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