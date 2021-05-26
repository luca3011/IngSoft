-- Aggiornamento [ent6]
create table "APP"."AGGIORNAMENTO" (
   "ID_AGGIORNAMENTO"  integer  not null,
   "VERSIONE"  integer,
   "DESCRIZIONE"  varchar(255),
  primary key ("ID_AGGIORNAMENTO")
);


