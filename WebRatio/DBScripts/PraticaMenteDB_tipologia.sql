-- Tipologia [ent7]
create table "APP"."TIPOLOGIA" (
   "ID_TIPOLOGIA"  integer  not null,
   "NOME"  varchar(255),
  primary key ("ID_TIPOLOGIA")
);


-- Intervento_Tipologia [rel4]
alter table "APP"."INTERVENTO"  add column  "TIPOLOGIA_ID_TIPOLOGIA"  integer;
alter table "APP"."INTERVENTO"   add constraint FK_INTERVENTO_TIPOLOGIA foreign key ("TIPOLOGIA_ID_TIPOLOGIA") references "APP"."TIPOLOGIA" ("ID_TIPOLOGIA");


