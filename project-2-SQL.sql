-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "category" (
    "category_id" INT   NOT NULL,
    "category" VARCHAR(50)   NOT NULL
);

CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR(100)   NOT NULL,
    "subcategory" VARCHAR(50)   NOT NULL
);

CREATE TABLE "contacts" (
    "contact_id" INT   NOT NULL,
    "first_name" VARCHAR(30)   NOT NULL,
    "last_name" VARCHAR(30)   NOT NULL,
    "email" VARCHAR(100)   NOT NULL
);

CREATE TABLE "campaign" (
    "cf_id" INT   NOT NULL,
    "contact_id" INT   NOT NULL,
    "company_name" VARCHAR(100)   NOT NULL,
    "description" VARCHAR(100)   NOT NULL,
    "goal" FLOAT   NOT NULL,
    "pledged" FLOAT   NOT NULL,
    "outcome" VARCHAR(30)   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" VARCHAR(10)   NOT NULL,
    "currency" VARCHAR(5)   NOT NULL,
    "launched_date" DATETIME   NOT NULL,
    "end_date" DATETIME   NOT NULL,
    "category_id" VARCHAR(10)   NOT NULL,
    "subcategory_id" VARCHAR(20)   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "contact_id","category_id","subcategory_id"
     )
);

ALTER TABLE "category" ADD CONSTRAINT "fk_category_category_id" FOREIGN KEY("category_id")
REFERENCES "campaign" ("category_id");

ALTER TABLE "subcategory" ADD CONSTRAINT "fk_subcategory_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "campaign" ("subcategory_id");

ALTER TABLE "contacts" ADD CONSTRAINT "fk_contacts_contact_id" FOREIGN KEY("contact_id")
REFERENCES "campaign" ("contact_id");

