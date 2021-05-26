-- Pratica [ent1]
create table "APP"."PRATICA" (
   "ID_PRATICA"  integer  not null,
   "GIORNI_SCADENZA"  integer,
   "SCADENZA_PRATICA"  date,
   "PROTOCOLLO"  varchar(255),
   "INGEGNERI_OCCUPATI"  varchar(255),
   "DESCRIZIONE"  varchar(255),
   "CHIUSA"  smallint,
  primary key ("ID_PRATICA")
);


-- Intervento [ent2]
create table "APP"."INTERVENTO" (
   "ID_INTERVENTO"  integer  not null,
   "DESCRIZIONE"  varchar(255),
   "DITTA"  varchar(255),
  primary key ("ID_INTERVENTO")
);


-- Tipologia [ent7]
create table "APP"."TIPOLOGIA" (
   "ID_TIPOLOGIA"  integer  not null,
   "NOME"  varchar(255),
  primary key ("ID_TIPOLOGIA")
);


-- Intervento_Tipologia [rel4]
alter table "APP"."INTERVENTO"  add column  "TIPOLOGIA_ID_TIPOLOGIA"  integer;
alter table "APP"."INTERVENTO"   add constraint FK_INTERVENTO_TIPOLOGIA foreign key ("TIPOLOGIA_ID_TIPOLOGIA") references "APP"."TIPOLOGIA" ("ID_TIPOLOGIA");
create index "IDX_INTERVENTO_TIPOLOGIA" on "APP"."INTERVENTO"("TIPOLOGIA_ID_TIPOLOGIA");


-- Intervento_Pratica [rel9]
alter table "APP"."PRATICA"  add column  "INTERVENTO_ID_INTERVENTO"  integer;
alter table "APP"."PRATICA"   add constraint FK_PRATICA_INTERVENTO foreign key ("INTERVENTO_ID_INTERVENTO") references "APP"."INTERVENTO" ("ID_INTERVENTO");
create index "IDX_PRATICA_INTERVENTO" on "APP"."PRATICA"("INTERVENTO_ID_INTERVENTO");


