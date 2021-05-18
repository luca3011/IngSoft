-- Cliente [ent4]
create table "APP"."CLIENTE" (
   "CF"  varchar(16)  not null,
   "NOME"  varchar(40),
   "COGNOME"  varchar(40),
   "VIA_INDIRIZZO"  varchar(75),
   "CITTA_INDIRIZZO"  varchar(75),
   "CAP_INDIRIZZO"  integer,
   "DATA_NASCITA"  date,
   "TELEFONO"  varchar(15),
   "EMAIL"  varchar(40),
  primary key ("CF")
);


