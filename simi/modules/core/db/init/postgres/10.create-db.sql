-- begin SIMI_DATASET_LIST_PROPERTIES
create table SIMI_DATASET_LIST_PROPERTIES (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    VISIBLE boolean not null,
    FACADELAYER_ID uuid not null,
    DATASET_ID uuid not null,
    SORT integer not null,
    TRANSPARENCY integer,
    --
    primary key (ID)
)^
-- end SIMI_DATASET_LIST_PROPERTIES
-- begin SIMI_TABLE_OF_CONTENTS
create table SIMI_TABLE_OF_CONTENTS (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    IDENTIFIER varchar(255) not null,
    REMARKS text,
    --
    primary key (ID)
)^
-- end SIMI_TABLE_OF_CONTENTS
-- begin SIMI_SINGLE_ACTOR_LIST_PROPERTIES
create table SIMI_SINGLE_ACTOR_LIST_PROPERTIES (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    VISIBLE boolean not null,
    TABLE_OF_CONTENTS_ID uuid not null,
    SINGLEACTOR_ID uuid not null,
    SORT integer not null,
    TRANSPARENCY integer,
    --
    primary key (ID)
)^
-- end SIMI_SINGLE_ACTOR_LIST_PROPERTIES
-- begin SIMI_SINGLE_ACTOR
create table SIMI_SINGLE_ACTOR (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    IDENTIFIER varchar(255) not null,
    TITLE varchar(255),
    IN_WGC boolean not null,
    REMARKS text,
    DTYPE varchar(31),
    --
    primary key (ID)
)^
-- end SIMI_SINGLE_ACTOR
-- begin SIMI_PRODUCT_SET
create table SIMI_PRODUCT_SET (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    IDENTIFIER varchar(255) not null,
    TITLE varchar(255),
    IN_WGC boolean not null,
    REMARKS text,
    DTYPE varchar(31),
    --
    -- from simi_Map
    FOREGROUND boolean not null,
    --
    primary key (ID)
)^
-- end SIMI_PRODUCT_SET
-- begin SIMI_FACADE_LAYER
create table SIMI_FACADE_LAYER (
    ID uuid,
    --
    primary key (ID)
)^
-- end SIMI_FACADE_LAYER
-- begin SIMI_POSTGRES_DS
create table SIMI_POSTGRES_DS (
    ID uuid,
    --
    TABLENAME varchar(255) not null,
    IN_DATA_SERVICES boolean not null,
    DEF_TRANSPARENCY integer not null,
    --
    primary key (ID)
)^
-- end SIMI_POSTGRES_DS
-- begin SIMI_TABLE_OF_CONTENTS_LINK
create table SIMI_TABLE_OF_CONTENTS_LINK (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    PRODUCTSET_ID uuid not null,
    TABLE_OF_CONTENTS_ID uuid not null,
    SORT integer not null,
    --
    primary key (ID)
)^
-- end SIMI_TABLE_OF_CONTENTS_LINK
