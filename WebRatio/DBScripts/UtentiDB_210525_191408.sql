-- User [User]
create table "APP"."USER_2" (
   "OID"  integer  not null,
   "USERNAME"  varchar(255),
   "PASSWORD"  varchar(255),
   "EMAIL"  varchar(255),
  primary key ("OID")
);


-- User_DefaultGroup [User2DefaultGroup_DefaultGroup2User]
alter table "APP"."USER_2"  add column  "GROUP_OID"  integer;
alter table "APP"."USER_2"   add constraint FK_USER_2_GROUP foreign key ("GROUP_OID") references "APP"."GROUP" ("OID");


-- User_Group [User2Group_Group2User]
create table "APP"."USER_GROUP_2" (
   "USER_2_OID"  integer not null,
   "GROUP_OID"  integer not null,
  primary key ("USER_2_OID", "GROUP_OID")
);
alter table "APP"."USER_GROUP_2"   add constraint FK_USER_GROUP_2_USER_2 foreign key ("USER_2_OID") references "APP"."USER_2" ("OID");
alter table "APP"."USER_GROUP_2"   add constraint FK_USER_GROUP_2_GROUP foreign key ("GROUP_OID") references "APP"."GROUP" ("OID");


