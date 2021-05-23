-- Intervento [ent2]
create table "APP"."INTERVENTO" (
   "ID_INTERVENTO"  integer  not null,
   "DESCRIZIONE"  varchar(255),
   "DITTA"  varchar(255),
   "TIPOLOGIA"  varchar(255),
  primary key ("ID_INTERVENTO")
);


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


-- Immobile_Intervento [rel6]
alter table "APP"."INTERVENTO"  add column  "IMMOBILE_ID_IMMOBILE"  integer;
alter table "APP"."INTERVENTO"   add constraint FK_INTERVENTO_IMMOBILE foreign key ("IMMOBILE_ID_IMMOBILE") references "APP"."IMMOBILE" ("ID_IMMOBILE");
create index "IDX_INTERVENTO_IMMOBILE" on "APP"."INTERVENTO"("IMMOBILE_ID_IMMOBILE");


