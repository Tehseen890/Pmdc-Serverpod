CREATE TABLE "feerecord" (
  "id" serial,
  "totalFee" integer NOT NULL,
  "paid" integer NOT NULL,
  "instalmentDate" text NOT NULL,
  "studentId" text NOT NULL
);

ALTER TABLE ONLY "feerecord"
  ADD CONSTRAINT feerecord_pkey PRIMARY KEY (id);