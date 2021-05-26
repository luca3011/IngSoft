-- Pratica_Aggiornamento [rel3]
alter table "APP"."PRATICA"  add column  "PRATICA_ID_PRATICA"  integer;
alter table "APP"."PRATICA"   add constraint FK_PRATICA_PRATICA foreign key ("PRATICA_ID_PRATICA") references "APP"."PRATICA" ("ID_PRATICA");


