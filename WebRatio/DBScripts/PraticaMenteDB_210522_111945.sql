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


