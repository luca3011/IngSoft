-- Pratica [ent1]
create table "APP"."PRATICA" (
   "ID_PRATICA"  integer  not null,
   "VERSIONE"  integer,
   "PROTOCOLLO"  varchar(255),
   "INGEGNERI_OCCUPATI"  varchar(255),
   "TIPOLOGIA"  varchar(255),
   "DESCRIZIONE"  varchar(255),
  primary key ("ID_PRATICA")
);


-- Intervento_Pratica [rel9]
alter table "APP"."PRATICA"  add column  "INTERVENTO_ID_INTERVENTO"  integer;
alter table "APP"."PRATICA"   add constraint FK_PRATICA_INTERVENTO foreign key ("INTERVENTO_ID_INTERVENTO") references "APP"."INTERVENTO" ("ID_INTERVENTO");


