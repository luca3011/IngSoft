-- Intervento [ent2]
create table "APP"."INTERVENTO" (
   "ID_INTERVENTO"  integer  not null,
   "DESCRIZIONE"  varchar(255),
   "DITTA"  varchar(255),
   "TIPOLOGIA"  varchar(255),
  primary key ("ID_INTERVENTO")
);


-- Immobile_Intervento [rel6]
alter table "APP"."INTERVENTO"  add column  "IMMOBILE_ID_IMMOBILE"  integer;
alter table "APP"."INTERVENTO"   add constraint FK_INTERVENTO_IMMOBILE foreign key ("IMMOBILE_ID_IMMOBILE") references "APP"."IMMOBILE" ("ID_IMMOBILE");


