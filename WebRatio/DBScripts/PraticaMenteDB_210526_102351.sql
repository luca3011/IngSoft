-- Ingegneri_Pratica [rel3]
create table "APP"."INGEGNERI_PRATICA" (
   "USER_OID"  integer not null,
   "PRATICA_ID_PRATICA"  integer not null,
  primary key ("USER_OID", "PRATICA_ID_PRATICA")
);
alter table "APP"."INGEGNERI_PRATICA"   add constraint FK_INGEGNERI_PRATICA_USER foreign key ("USER_OID") references "APP"."USER" ("OID");
alter table "APP"."INGEGNERI_PRATICA"   add constraint FK_INGEGNERI_PRATICA_PRATICA foreign key ("PRATICA_ID_PRATICA") references "APP"."PRATICA" ("ID_PRATICA");


