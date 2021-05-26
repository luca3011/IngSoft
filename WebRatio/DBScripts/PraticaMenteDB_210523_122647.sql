-- Pratica_Tipologia [rel10]
alter table "APP"."PRATICA"  add column  "TIPOLOGIA_ID_TIPOLOGIA"  integer;
alter table "APP"."PRATICA"   add constraint FK_PRATICA_TIPOLOGIA foreign key ("TIPOLOGIA_ID_TIPOLOGIA") references "APP"."TIPOLOGIA" ("ID_TIPOLOGIA");


