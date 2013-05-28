-- Table: missingaddr

DROP TABLE missingaddr;

CREATE TABLE missingaddr
(
  missinga text NOT NULL,
  CONSTRAINT pkmissing PRIMARY KEY (missinga )
)
WITH (
  OIDS=FALSE
);
ALTER TABLE missingaddr
  OWNER TO tobias;

