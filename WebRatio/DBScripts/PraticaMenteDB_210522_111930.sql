-- Immobile [ent3]
create table "APP"."IMMOBILE" (
   "ID_IMMOBILE"  integer  not null,
   "VIA_INDIRIZZO"  varchar(255),
   "CAP_INDIRIZZO"  integer,
   "CITTA_INDIRIZZO"  varchar(255),
   "FOGLIO_CATASTO"  integer,
   "PARTICELLA_CATASTO"  integer,
   "SUB_CATASTO"  integer,
  primary key ("ID_IMMOBILE")
);


