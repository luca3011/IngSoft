-- Pratica_Aggiornamento [rel5]
alter table "APP"."AGGIORNAMENTO"  add column  "PRATICA_ID_PRATICA"  integer;
alter table "APP"."AGGIORNAMENTO"   add constraint FK_AGGIORNAMENTO_PRATICA foreign key ("PRATICA_ID_PRATICA") references "APP"."PRATICA" ("ID_PRATICA");


