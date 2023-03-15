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