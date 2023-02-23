CREATE TABLE "noticeboard" (
  "id" serial,
  "notice" text NOT NULL,
  "date" text NOT NULL,
  "subject" text NOT NULL,
  "noticeId" integer NOT NULL
);

ALTER TABLE ONLY "noticeboard"
  ADD CONSTRAINT noticeboard_pkey PRIMARY KEY (id);