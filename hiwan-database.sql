create table event
(
    id          bigint       not null,
    name        varchar(255) null,
    date        date         null,
    begin_time  time         null,
    end_time    time         null,
    location    varchar(255) null,
    city        varchar(20)  null,
    description varchar(255) null,
    price       decimal      null,
    holder_id   bigint       null,
    constraint event_id_uindex
        unique (id)
);

alter table event
    add primary key (id);

create table event_like
(
    id       bigint not null,
    event_id bigint null,
    user_id  bigint null,
    constraint event_like_id_uindex
        unique (id)
);

alter table event_like
    add primary key (id);

create table event_participate
(
    id       bigint              not null,
    event_id bigint              null,
    user_id  bigint              null,
    is_paid  tinyint(1) unsigned null,
    constraint event_participate_id_uindex
        unique (id)
);

alter table event_participate
    add primary key (id);

create table friend_relation
(
    id                 bigint              not null,
    friend_request_id  bigint              null,
    friend_response_id bigint              null,
    is_accepted        tinyint(1) unsigned null,
    constraint friend_relation_id_uindex
        unique (id)
);

alter table friend_relation
    add primary key (id);

create table user
(
    id                 bigint              not null,
    username           varchar(20)         null,
    password           varchar(20)         null,
    name               varchar(20)         null,
    age                tinyint(1) unsigned null,
    gender             varchar(20)         null,
    sexual_orientation varchar(20)         null,
    marital_status     varchar(20)         null,
    constraint user_id_uindex
        unique (id)
);

alter table user
    add primary key (id);


