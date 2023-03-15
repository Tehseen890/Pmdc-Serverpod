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