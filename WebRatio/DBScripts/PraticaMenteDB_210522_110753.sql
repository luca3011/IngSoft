-- Cliente_Immobile [rel1]
alter table "APP"."IMMOBILE"  add column  "CLIENTE_CF"  varchar(16);
alter table "APP"."IMMOBILE"   add constraint FK_IMMOBILE_CLIENTE foreign key ("CLIENTE_CF") references "APP"."CLIENTE" ("CF");


