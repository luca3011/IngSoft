-- Group [Group]
create table "APP"."GROUP" (
   "OID"  integer  not null,
   "GROUPNAME"  varchar(255),
  primary key ("OID")
);


-- Module [Module]
create table "APP"."MODULE" (
   "OID"  integer  not null,
   "MODULEID"  varchar(255),
   "MODULENAME"  varchar(255),
  primary key ("OID")
);


-- User [User]
create table "APP"."USER" (
   "OID"  integer  not null,
   "EMAIL"  varchar(255),
   "PASSWORD"  varchar(255),
   "USERNAME"  varchar(255),
  primary key ("OID")
);


-- Pratica [ent1]
create table "APP"."PRATICA" (
   "ID_PRATICA"  integer  not null,
   "PROTOCOLLO"  varchar(255),
   "INGEGNERI_OCCUPATI"  varchar(255),
   "DESCRIZIONE"  varchar(255),
   "DATA_SCADENZA"  date,
   "CHIUSA"  smallint,
   "GIORNI_SCADENZA"  integer,
  primary key ("ID_PRATICA")
);


-- Intervento [ent2]
create table "APP"."INTERVENTO" (
   "ID_INTERVENTO"  integer  not null,
   "DESCRIZIONE"  varchar(255),
   "DITTA"  varchar(255),
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


-- Aggiornamento [ent6]
create table "APP"."AGGIORNAMENTO" (
   "ID_AGGIORNAMENTO"  integer  not null,
   "VERSIONE"  integer,
   "DESCRIZIONE"  varchar(255),
   "SCADENZA"  date,
  primary key ("ID_AGGIORNAMENTO")
);


-- Tipologia [ent7]
create table "APP"."TIPOLOGIA" (
   "ID_TIPOLOGIA"  integer  not null,
   "NOME"  varchar(255),
  primary key ("ID_TIPOLOGIA")
);


-- Group_DefaultModule [Group2DefaultModule_DefaultModule2Group]
alter table "APP"."GROUP"  add column  "MODULE_OID"  integer;
alter table "APP"."GROUP"   add constraint FK_GROUP_MODULE foreign key ("MODULE_OID") references "APP"."MODULE" ("OID");
create index "IDX_GROUP_MODULE" on "APP"."GROUP"("MODULE_OID");


-- Group_Module [Group2Module_Module2Group]
create table "APP"."GROUP_MODULE" (
   "GROUP_OID"  integer not null,
   "MODULE_OID"  integer not null,
  primary key ("GROUP_OID", "MODULE_OID")
);
alter table "APP"."GROUP_MODULE"   add constraint FK_GROUP_MODULE_GROUP foreign key ("GROUP_OID") references "APP"."GROUP" ("OID");
alter table "APP"."GROUP_MODULE"   add constraint FK_GROUP_MODULE_MODULE foreign key ("MODULE_OID") references "APP"."MODULE" ("OID");
create index "IDX_GROUP_MODULE_GROUP" on "APP"."GROUP_MODULE"("GROUP_OID");
create index "IDX_GROUP_MODULE_MODULE" on "APP"."GROUP_MODULE"("MODULE_OID");


-- User_DefaultGroup [User2DefaultGroup_DefaultGroup2User]
alter table "APP"."USER"  add column  "GROUP_OID"  integer;
alter table "APP"."USER"   add constraint FK_USER_GROUP foreign key ("GROUP_OID") references "APP"."GROUP" ("OID");
create index "IDX_USER_GROUP" on "APP"."USER"("GROUP_OID");


-- User_Group [User2Group_Group2User]
create table "APP"."USER_GROUP" (
   "USER_OID"  integer not null,
   "GROUP_OID"  integer not null,
  primary key ("USER_OID", "GROUP_OID")
);
alter table "APP"."USER_GROUP"   add constraint FK_USER_GROUP_USER foreign key ("USER_OID") references "APP"."USER" ("OID");
alter table "APP"."USER_GROUP"   add constraint FK_USER_GROUP_GROUP foreign key ("GROUP_OID") references "APP"."GROUP" ("OID");
create index "IDX_USER_GROUP_USER" on "APP"."USER_GROUP"("USER_OID");
create index "IDX_USER_GROUP_GROUP" on "APP"."USER_GROUP"("GROUP_OID");


-- Cliente_Immobile [rel1]
alter table "APP"."IMMOBILE"  add column  "CLIENTE_CF"  varchar(255);
alter table "APP"."IMMOBILE"   add constraint FK_IMMOBILE_CLIENTE foreign key ("CLIENTE_CF") references "APP"."CLIENTE" ("CF");
create index "IDX_IMMOBILE_CLIENTE" on "APP"."IMMOBILE"("CLIENTE_CF");


-- Intervento_Tipologia [rel4]
alter table "APP"."INTERVENTO"  add column  "TIPOLOGIA_ID_TIPOLOGIA"  integer;
alter table "APP"."INTERVENTO"   add constraint FK_INTERVENTO_TIPOLOGIA foreign key ("TIPOLOGIA_ID_TIPOLOGIA") references "APP"."TIPOLOGIA" ("ID_TIPOLOGIA");
create index "IDX_INTERVENTO_TIPOLOGIA" on "APP"."INTERVENTO"("TIPOLOGIA_ID_TIPOLOGIA");


-- Pratica_Aggiornamento [rel5]
alter table "APP"."AGGIORNAMENTO"  add column  "PRATICA_ID_PRATICA"  integer;
alter table "APP"."AGGIORNAMENTO"   add constraint FK_AGGIORNAMENTO_PRATICA foreign key ("PRATICA_ID_PRATICA") references "APP"."PRATICA" ("ID_PRATICA");
create index "IDX_AGGIORNAMENTO_PRATICA" on "APP"."AGGIORNAMENTO"("PRATICA_ID_PRATICA");


-- Immobile_Intervento [rel6]
alter table "APP"."INTERVENTO"  add column  "IMMOBILE_ID_IMMOBILE"  integer;
alter table "APP"."INTERVENTO"   add constraint FK_INTERVENTO_IMMOBILE foreign key ("IMMOBILE_ID_IMMOBILE") references "APP"."IMMOBILE" ("ID_IMMOBILE");
create index "IDX_INTERVENTO_IMMOBILE" on "APP"."INTERVENTO"("IMMOBILE_ID_IMMOBILE");


-- Intervento_Pratica [rel9]
alter table "APP"."PRATICA"  add column  "INTERVENTO_ID_INTERVENTO"  integer;
alter table "APP"."PRATICA"   add constraint FK_PRATICA_INTERVENTO foreign key ("INTERVENTO_ID_INTERVENTO") references "APP"."INTERVENTO" ("ID_INTERVENTO");
create index "IDX_PRATICA_INTERVENTO" on "APP"."PRATICA"("INTERVENTO_ID_INTERVENTO");


