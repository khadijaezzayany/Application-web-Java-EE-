/*==============================================================*/
/* Nom de SGBD :  MySQL 5.0                                     */
/* Date de création :  15/02/2021 15:01:03                      */
/*==============================================================*/


drop table if exists Entreprise;

drop table if exists Personne;

drop table if exists User;

/*==============================================================*/
/* Table : Entreprise                                           */
/*==============================================================*/
create table Entreprise
(
   idUser               int not null,
   entrNom              varchar(254),
   primary key (idUser)
);

/*==============================================================*/
/* Table : Personne                                             */
/*==============================================================*/
create table Personne
(
   idUser               int not null,
   persNom              varchar(254),
   persPernom           varchar(254),
   primary key (idUser)
);

/*==============================================================*/
/* Table : User                                                 */
/*==============================================================*/
create table User
(
   idUser               int not null,
   nemeroCompte         int,
   solde                int,
   primary key (idUser)
);

alter table Entreprise add constraint FK_Generalisation_1 foreign key (idUser)
      references User (idUser) on delete restrict on update restrict;

alter table Personne add constraint FK_Generalisation_2 foreign key (idUser)
      references User (idUser) on delete restrict on update restrict;

