CREATE TABLE "program" (
  "id" serial,
  "programId" integer NOT NULL,
  "programName" text NOT NULL
);

ALTER TABLE ONLY "program"
  ADD CONSTRAINT program_pkey PRIMARY KEY (id);