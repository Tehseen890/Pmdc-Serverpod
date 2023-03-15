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