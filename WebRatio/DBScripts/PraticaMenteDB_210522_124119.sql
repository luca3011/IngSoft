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


-- Cliente [ent4]
create table "APP"."CLIENTE" (
   "CF"  varchar(255)  not null,
   "DATA_NASCITA"  date,
   "TELEFONO"  varchar(255),
   "EMAIL"  varchar(255),
   "NOME"  varchar(255),
   "COGNOME"  varchar(255),
   "VIA_INDIRIZZO"  varchar(255),
   "CITTA_INDIRIZZO"  varchar(255),
   "CAP_INDIRIZZO"  integer,
  primary key ("CF")
);


-- Cliente_Immobile [rel1]
alter table "APP"."IMMOBILE"  add column  "CLIENTE_CF"  varchar(255);
alter table "APP"."IMMOBILE"   add constraint FK_IMMOBILE_CLIENTE foreign key ("CLIENTE_CF") references "APP"."CLIENTE" ("CF");
create index "IDX_IMMOBILE_CLIENTE" on "APP"."IMMOBILE"("CLIENTE_CF");


