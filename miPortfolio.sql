use miportfolio;
create table imagen(
id_imagen int not null,
url_imagen varchar(100) not null,
constraint pk_id_imagen primary key (id_imagen)  
);

create table audio(
id_audio int not null,
url_audio varchar(100) not null,
constraint pk_id_audio primary key (id_audio)
);

create table edicion(
id_edicion int not null,
url_logoAdd varchar(100) not null,
url_logoEdit varchar(100) not null,
url_logoDel varchar(100) not null,
constraint pk_id_edicion primary key (id_edicion)
)

create table opinion(
id_opinion int not null,
id_imagen int not null,
id_audio int not null,
id_edicion int not null,
constraint pk_id_opinion primary key (id_opinion),
constraint fk_imagen_opinion foreign key (id_imagen) references imagen (id_imagen),
constraint fk_audio_opinion foreign key (id_audio) references audio (id_audio),
constraint fk_edicion_opinion foreign key (id_edicion) references edicion (id_edicion)
)

create table empleo(
id_empleo int not null,
empleo varchar(100) not null,
url_logo varchar(100) not null,
id_experiencia int not null,
id_opinion int not null,
fecha varchar(20) not null,
puesto varchar(100) not null,
constraint pk_id_empleo primary key (id_empleo),
constraint fk_experiencia_empleo foreign key (id_experiencia) references experiencia (id_experiencia),
constraint fk_opinion_empleo foreign key (id_opinion) references opinion (id_opinion)
)

create table freelance(
id_freelance int not null,
freelance varchar(100) not null,
url_logo varchar(100) not null,
id_experiencia int not null,
id_opinion int not null,
fecha varchar(20) not null,
constraint pk_id_freelance primary key (id_freelance),
constraint fk_experiencia_freelance foreign key (id_experiencia) references experiencia (id_experiencia),
constraint fk_opinion_freelance foreign key (id_opinion) references opinion (id_opinion)
)

create table experiencia(
id_experiencia int not null,
id_empleo int not null,
id_freelance int not null,
constraint pk_id_experiencia primary key (id_experiencia),
constraint fk_empleo_experiencia foreign key (id_empleo) references empleo (id_empleo),
constraint fk_freelance_experiencia foreign key (id_freelance) references freelance (id_freelance)
)

create table dura(
id_dura int not null,
url_imagen varchar(100) not null,
dura varchar(40) not null,
constraint pk_id_dura primary key (id_dura)
)

create table blanda(
id_blanda int not null,
url_imagen varchar(100) not null,
blanda varchar(40) not null,
constraint pk_id_blanda primary key (id_blanda)
)

create table habilidad(
id_habilidad int not null,
id_dura int not null,
id_blanda int not null,
constraint pk_id_habilidad primary key (id_habilidad),
constraint fk_dura_habilidad foreign key (id_dura) references dura (id_dura),
constraint fk_blanda_habilidad foreign key (id_blanda) references blanda (id_blanda)
)

create table titulo(
id_titulo int not null,
id_educacion int not null,
id_academica int not null,
id_curso int not null,
constraint pk_id_titulo primary key (id_titulo),
constraint fk_academica_titulo foreign key (id_academica) references academica (id_academica),
constraint fk_educacion_titulo foreign key (id_educacion) references educacion (id_educacion),
constraint fk_curso_titulo foreign key (id_curso) references curso (id_curso)
)

create table academica(
id_academica int not null,
id_titulo int not null,
url_logo varchar(100) int not null,
fecha varchar(20) not null,
id_edicion int not null,
titulo varchar(100) not null,
academica varchar(150) not null,
constraint pk_id_academica primary key (id_academica)
)

create table curso(
id_curso int not null,
id_titulo int not null,
url_logo varchar(100) int not null,
fecha varchar(20) not null,
id_edicion int not null,
titulo varchar(100) not null,
curso varchar(50) not null,
constraint pk_id_curso primary key (id_curso)
)

create table educacion(
id_educacion int not null,
id_titulo int not null,
constraint pk_id_educacion primary key (id_educacion),
constraint fk_titulo_educacion foreign key (id_titulo) references titulo (id_titulo)
)

create table persona(
id_persona int not null,
nom_persona varchar(40) not null,
url_fotoPortada varchar(100) not null,
url_fotoPerfil varchar(100) not null,
ciudad varchar(10) not null,
pais varchar(10) not null,
objetivo varchar(200) not null,
constraint pk_id_persona primary key (id_persona)
)

create table proyecto(
id_proyecto int not null,
id_edicion int not null,
proyecto varchar(20) not null,
url_logo varchar(100) not null,
descripcion varchar(300) not null,
fecha varchar(20) not null,
id_persona int not null,
constraint pk_id_proyecto primary key (id_proyecto),
constraint fk_edicion_proyecto foreign key (id_edicion) references edicion (id_edicion),
constraint fk_persona_proyecto foreign key (id_persona) references persona (id_persona)
)

insert into audio (id_audio, url_audio) values (1,'../myProfile/audios/01a.mp3');
insert into audio (id_audio, url_audio) values (2,'../myProfile/audios/02a.mp3');
insert into audio (id_audio, url_audio) values (3,'../myProfile/audios/03a.mp3');
insert into audio (id_audio, url_audio) values (4,'../myProfile/audios/04a.mp3');
insert into audio (id_audio, url_audio) values (5,'../myProfile/audios/05a.mp3');
insert into audio (id_audio, url_audio) values (6,'../myProfile/audios/06a.mp3');
insert into audio (id_audio, url_audio) values (7,'../myProfile/audios/07a.mp3');
insert into audio (id_audio, url_audio) values (8,'../myProfile/audios/08a.mp3');
insert into audio (id_audio, url_audio) values (9,'../myProfile/audios/09a.mp3');
insert into audio (id_audio, url_audio) values (10,'../myProfile/audios/10a.mp3');
insert into audio (id_audio, url_audio) values (11,'../myProfile/audios/11a.mp3');
insert into audio (id_audio, url_audio) values (12,'../myProfile/audios/12a.mp3');
insert into audio (id_audio, url_audio) values (13,'../myProfile/audios/13a.mp3');
insert into audio (id_audio, url_audio) values (14,'../myProfile/audios/14a.mp3');
insert into audio (id_audio, url_audio) values (15,'../myProfile/audios/15a.mp3');

insert into imagen (id_imagen, url_imagen) values (1,'../myProfile/img/op1.jpg');
insert into imagen (id_imagen, url_imagen) values (2,'../myProfile/img/op2.jpg');
insert into imagen (id_imagen, url_imagen) values (3,'../myProfile/img/op3.jpg');
insert into imagen (id_imagen, url_imagen) values (4,'../myProfile/img/op4.jpg');
insert into imagen (id_imagen, url_imagen) values (5,'../myProfile/img/op5.jpg');
insert into imagen (id_imagen, url_imagen) values (6,'../myProfile/img/op6.jpg');
insert into imagen (id_imagen, url_imagen) values (7,'../myProfile/img/op7.jpg');
insert into imagen (id_imagen, url_imagen) values (8,'../myProfile/img/op8.jpg');
insert into imagen (id_imagen, url_imagen) values (9,'../myProfile/img/op9.jpg');
insert into imagen (id_imagen, url_imagen) values (10,'../myProfile/img/op10.jpg');
insert into imagen (id_imagen, url_imagen) values (11,'../myProfile/img/op11.jpg');
insert into imagen (id_imagen, url_imagen) values (12,'../myProfile/img/op12.jpg');
insert into imagen (id_imagen, url_imagen) values (13,'../myProfile/img/op13.jpg');
insert into imagen (id_imagen, url_imagen) values (14,'../myProfile/img/op14.jpg');
insert into imagen (id_imagen, url_imagen) values (15,'../myProfile/img/op15.jpg');


insert into dura (id_dura, dura, url_imagen) values (1, 'Diseño gráfico', '../myProfile/img/op1.jpg');
insert into dura (id_dura, dura, url_imagen) values (2, 'Maquetación web', '../myProfile/img/op2.jpg');
insert into dura (id_dura, dura, url_imagen) values (3, 'Idiomas', '../myProfile/img/op3.jpg');
insert into dura (id_dura, dura, url_imagen) values (4, 'Creatividad', '../myProfile/img/op1.jpg');
insert into dura (id_dura, dura, url_imagen) values (5, 'Creatividad', '../myProfile/img/op1.jpg');
insert into dura (id_dura, dura, url_imagen) values (6, 'Creatividad', '../myProfile/img/op1.jpg');

insert into blanda (id_blanda, blanda, url_imagen) values (1, 'Creatividad', '../myProfile/img/op1.jpg');
insert into blanda (id_blanda, blanda, url_imagen) values (2, 'Responsabilidad', '../myProfile/img/op2.jpg');
insert into blanda (id_blanda, blanda, url_imagen) values (3, 'Resolución de problemas', '../myProfile/img/op3.jpg');
insert into blanda (id_blanda, blanda, url_imagen) values (4, 'Diseño gráfico', '../myProfile/img/op4.jpg');
insert into blanda (id_blanda, blanda, url_imagen) values (5, 'Diseño gráfico', '../myProfile/img/op5.jpg');
insert into blanda (id_blanda, blanda, url_imagen) values (6, 'Diseño gráfico', '../myProfile/img/op6.jpg');

insert into freelance (id_freelance, freelance, url_logo, id_experiencia, id_opinion, fecha) values (1, 'Diseñador gráfico y web freelance', '../myProfile/img/logoDG.svg', 1, 1, '2012 Actualidad');

insert into empleo (id_empleo, empleo, url_logo, id_experiencia, id_opinion, fecha, puesto) values (1, 'Biblioteca popular Hugo Wast', '../myProfile/img/logoBPHW.svg', 2, 1, '2008 2012', 'Instructor informático de Office 2000, diseño gráfico y web');

insert into empleo (id_empleo, empleo, url_logo, id_experiencia, id_opinion, fecha, puesto) values (2, 'Instituto Isada', '../myProfile/img/logoIsada.svg', 3, 1, '2006 2008', 'Profesor de Informática');

insert into empleo (id_empleo, empleo, url_logo, id_experiencia, id_opinion, fecha, puesto) values (3, 'Fundación Pedro Milesi. Biblioteca popular Bella Vista', '../myProfile/img/logoBPBV.svg', 4, 1, '1999 2006', 'Instructor informático de Office 2000, diseño gráfico y web');

insert into edicion (id_edicion, url_logoAdd, url_logoEdit, url_logoDel) values (1, '../myProfile/img/plus.svg', '../myProfile/img/pencil.svg', '../myProfile/img/trash.svg');

insert into opinion (id_opinion, id_imagen, id_audio, id_edicion) values (1, 1, 1, 1);
insert into opinion (id_opinion, id_imagen, id_audio, id_edicion) values (2, 2, 2, 1);
insert into opinion (id_opinion, id_imagen, id_audio, id_edicion) values (3, 3, 3, 1);
insert into opinion (id_opinion, id_imagen, id_audio, id_edicion) values (4, 4, 4, 1);
insert into opinion (id_opinion, id_imagen, id_audio, id_edicion) values (5, 5, 5, 1);
insert into opinion (id_opinion, id_imagen, id_audio, id_edicion) values (6, 6, 6, 1);
insert into opinion (id_opinion, id_imagen, id_audio, id_edicion) values (7, 7, 7, 1);
insert into opinion (id_opinion, id_imagen, id_audio, id_edicion) values (8, 8, 8, 1);
insert into opinion (id_opinion, id_imagen, id_audio, id_edicion) values (9, 9, 9, 1);
insert into opinion (id_opinion, id_imagen, id_audio, id_edicion) values (10, 10, 10, 1);
insert into opinion (id_opinion, id_imagen, id_audio, id_edicion) values (11, 11, 11, 1);
insert into opinion (id_opinion, id_imagen, id_audio, id_edicion) values (12, 12, 12, 1);
insert into opinion (id_opinion, id_imagen, id_audio, id_edicion) values (13, 13, 13, 1);
insert into opinion (id_opinion, id_imagen, id_audio, id_edicion) values (14, 14, 14, 1);
insert into opinion (id_opinion, id_imagen, id_audio, id_edicion) values (15, 15, 15, 1);


insert into academica (id_academica, academica, id_titulo, url_logo, fecha, id_edicion, titulo) values (1, 'Universidad Tecnológica Nacional Facultad Regional Córdoba', 1, '../myProfile/img/logoUTN.svg', '2017 2019', 1, 'Técnico universitario en programación');
insert into academica (id_academica, academica, id_titulo, url_logo, fecha, id_edicion, titulo) values (2, 'Colegio Nacional de Monserrat', 2, '../myProfile/img/logoCNM.svg', '1995 1996', 1, 'Dibujante especialista en dibujo técnico, artístico y publicitario');
insert into academica (id_academica, academica, id_titulo, url_logo, fecha, id_edicion, titulo) values (3, 'Institución Preceptor', 3, '../myProfile/img/logoIP.svg', '1990 1991', 1, 'Diseñador gráfico');

insert into curso (id_curso, id_titulo, url_logo, fecha, id_edicion, titulo, curso) values (4, 7, '../myProfile/img/logoUTN.svg', '2022', 1, 'Curso Arduino', 'Universidad Tecnológica Nacional Facultad Regional Tucumán');
insert into curso (id_curso, id_titulo, url_logo, fecha, id_edicion, titulo, curso) values (5, 8, '../myProfile/img/logoAP.svg', '2022', 1, '#YoProgramo', 'Argentina Programa');
insert into curso (id_curso, id_titulo, url_logo, fecha, id_edicion, titulo, curso) values (6, 9, '../myProfile/img/logoAP.svg', '2022', 1, 'English for software development', 'Argentina Programa');
insert into curso (id_curso, id_titulo, url_logo, fecha, id_edicion, titulo, curso) values (7, 10, '../myProfile/img/logoConoSur.svg', '2022', 1, '#YoQuieroProgramar', 'ConoSur Tech');
insert into curso (id_curso, id_titulo, url_logo, fecha, id_edicion, titulo, curso) values (8, 11, '../myProfile/img/logoDH.svg', '2019 2020', 1, 'Desarrollador web full stack', 'Digital House Coding House');
insert into curso (id_curso, id_titulo, url_logo, fecha, id_edicion, titulo, curso) values (9, 12, '../myProfile/img/logoUTN.svg', '2018', 1, 'Programa 111mil', 'Universidad Tecnológica Nacional Facultad Regional Córdoba');
insert into curso (id_curso, id_titulo, url_logo, fecha, id_edicion, titulo, curso) values (10, 13, '../myProfile/img/logoUPM.svg', '2016', 1, 'Desarrollo en HTML5, CSS3, JavaScript de apps web, IOs y Android', 'Universidad Politécnica de Madrid');
insert into curso (id_curso, id_titulo, url_logo, fecha, id_edicion, titulo, curso) values (11, 14, '../myProfile/img/logoCem.svg', '2014 2015', 1, 'Curso de inglés. Curso de portugués', 'CEM English');
insert into curso (id_curso, id_titulo, url_logo, fecha, id_edicion, titulo, curso) values (12, 15, '../myProfile/img/logoCodesis.svg', '2003', 1, 'Técnico en diseño gráfico y programación web', 'Editorial Codesis Ltda');
insert into curso (id_curso, id_titulo, url_logo, fecha, id_edicion, titulo, curso) values (13, 16, '../myProfile/img/logoLTC.svg', '1986', 1, 'Programación BASIC', 'Least Time Course');
insert into curso (id_curso, id_titulo, url_logo, fecha, id_edicion, titulo, curso) values (14, 17, '../myProfile/img/logoSDA.svg', '1980 1985', 1, 'Corso de lengua e cultura italiana', 'Società Dante Alighieri');

insert into edicion (id_edicion, url_logoAdd, url_logoEdit, url_logoDel) values (1, '../myProfile/img/plus.svg', '../myProfile/img/pencil.svg', '../myProfile/img/trash.svg');
insert into edicion (id_edicion, url_logoAdd, url_logoEdit, url_logoDel) values (2, '../myProfile/img/plus.svg', '../myProfile/img/pencil.svg', '../myProfile/img/trash.svg');
insert into edicion (id_edicion, url_logoAdd, url_logoEdit, url_logoDel) values (3, '../myProfile/img/plus.svg', '../myProfile/img/pencil.svg', '../myProfile/img/trash.svg');

insert into proyecto (id_proyecto, id_edicion, proyecto, url_logo, descripcion, fecha, id_persona) values (1, 1, 'Shoppin list', '../myProfile/img/logoProy1.svg', 'Lorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsum Lorem ipsum Lorem ipsumLorem ipsumLorem ipsum Lorem ipsumLorem ipsumLorem ipsum Lorem ipsumLorem ipsum', 'Febrero 2022', 1);
insert into proyecto (id_proyecto, id_edicion, proyecto, url_logo, descripcion, fecha, id_persona) values (2, 1, 'PokéPark', '../myProfile/img/logoProy2.svg', 'Lorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsum Lorem ipsum Lorem ipsumLorem ipsumLorem ipsum Lorem ipsumLorem ipsumLorem ipsum Lorem ipsumLorem ipsum', 'Marzo 2022', 1);
insert into proyecto (id_proyecto, id_edicion, proyecto, url_logo, descripcion, fecha, id_persona) values (3, 1, 'Mi portfolio', '../myProfile/img/logoProy3.svg', 'Lorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsum Lorem ipsum Lorem ipsumLorem ipsumLorem ipsum Lorem ipsumLorem ipsumLorem ipsum Lorem ipsumLorem ipsum', 'Mayo 2022', 1);

insert into educacion (id_educacion, id_titulo) values (1, 1);
insert into educacion (id_educacion, id_titulo) values (2, 2);
insert into educacion (id_educacion, id_titulo) values (3, 3);
insert into educacion (id_educacion, id_titulo) values (4, 4);
insert into educacion (id_educacion, id_titulo) values (5, 5);
insert into educacion (id_educacion, id_titulo) values (6, 6);
insert into educacion (id_educacion, id_titulo) values (7, 7);
insert into educacion (id_educacion, id_titulo) values (8, 8);
insert into educacion (id_educacion, id_titulo) values (9, 9);
insert into educacion (id_educacion, id_titulo) values (10, 10);
insert into educacion (id_educacion, id_titulo) values (11, 11);
insert into educacion (id_educacion, id_titulo) values (12, 12);
insert into educacion (id_educacion, id_titulo) values (13, 13);
insert into educacion (id_educacion, id_titulo) values (14, 14);
insert into educacion (id_educacion, id_titulo) values (15, 15);
insert into educacion (id_educacion, id_titulo) values (16, 16);
insert into educacion (id_educacion, id_titulo) values (17, 17);

insert into academica (id_academica, id_titulo, url_logo, fecha, id_edicion, titulo) values (4, 4, '', '', 1, '');
insert into academica (id_academica, id_titulo, url_logo, fecha, id_edicion, titulo) values (5, 5, '', '', 1, '');
insert into academica (id_academica, id_titulo, url_logo, fecha, id_edicion, titulo) values (6, 6, '', '', 1, '');
insert into academica (id_academica, id_titulo, url_logo, fecha, id_edicion, titulo) values (7, 7, '', '', 1, '');
insert into academica (id_academica, id_titulo, url_logo, fecha, id_edicion, titulo) values (8, 8, '', '', 1, '');
insert into academica (id_academica, id_titulo, url_logo, fecha, id_edicion, titulo) values (9, 9, '', '', 1, '');
insert into academica (id_academica, id_titulo, url_logo, fecha, id_edicion, titulo) values (10, 10, '', '', 1, '');
insert into academica (id_academica, id_titulo, url_logo, fecha, id_edicion, titulo) values (11, 11, '', '', 1, '');
insert into academica (id_academica, id_titulo, url_logo, fecha, id_edicion, titulo) values (12, 12, '', '', 1, '');
insert into academica (id_academica, id_titulo, url_logo, fecha, id_edicion, titulo) values (13, 13, '', '', 1, '');
insert into academica (id_academica, id_titulo, url_logo, fecha, id_edicion, titulo) values (14, 14, '', '', 1, '');
insert into academica (id_academica, id_titulo, url_logo, fecha, id_edicion, titulo) values (15, 15, '', '', 1, '');
insert into academica (id_academica, id_titulo, url_logo, fecha, id_edicion, titulo) values (16, 16, '', '', 1, '');
insert into academica (id_academica, id_titulo, url_logo, fecha, id_edicion, titulo) values (17, 17, '', '', 1, '');

insert into titulo (id_titulo, id_educacion, id_academica, id_curso) values (1, 1, 1, 1);
insert into titulo (id_titulo, id_educacion, id_academica, id_curso) values (2, 2, 2, 2);
insert into titulo (id_titulo, id_educacion, id_academica, id_curso) values (3, 3, 3, 3);
insert into titulo (id_titulo, id_educacion, id_academica, id_curso) values (4, 4, 4, 4);
insert into titulo (id_titulo, id_educacion, id_academica, id_curso) values (5, 5, 5, 5);
insert into titulo (id_titulo, id_educacion, id_academica, id_curso) values (6, 6, 6, 6);
insert into titulo (id_titulo, id_educacion, id_academica, id_curso) values (7, 7, 7, 7);
insert into titulo (id_titulo, id_educacion, id_academica, id_curso) values (8, 8, 8, 8);
insert into titulo (id_titulo, id_educacion, id_academica, id_curso) values (9, 9, 9, 9);
insert into titulo (id_titulo, id_educacion, id_academica, id_curso) values (10, 10, 10, 10);
insert into titulo (id_titulo, id_educacion, id_academica, id_curso) values (11, 11, 11, 11);
insert into titulo (id_titulo, id_educacion, id_academica, id_curso) values (12, 12, 12, 12);
insert into titulo (id_titulo, id_educacion, id_academica, id_curso) values (13, 13, 13, 13);
insert into titulo (id_titulo, id_educacion, id_academica, id_curso) values (14, 14, 14, 14);
insert into titulo (id_titulo, id_educacion, id_academica, id_curso) values (15, 15, 15, 15);
insert into titulo (id_titulo, id_educacion, id_academica, id_curso) values (16, 16, 16, 16);
insert into titulo (id_titulo, id_educacion, id_academica, id_curso) values (17, 17, 17, 17);

insert into habilidad (id_habilidad, id_dura, id_blanda) values (1, 1, 1);
insert into habilidad (id_habilidad, id_dura, id_blanda) values (2, 2, 2);
insert into habilidad (id_habilidad, id_dura, id_blanda) values (3, 3, 3);

insert into freelance (id_freelance, freelance, url_logo, id_experiencia, fecha) values (2, '', '', 2, 1, '');
insert into freelance (id_freelance, freelance, url_logo, id_experiencia, fecha) values (3, '', '', 3, 1, '');

insert into experiencia (id_experiencia, id_empleo, id_freelance) values (1, 1, 1);
insert into experiencia (id_experiencia, id_empleo, id_freelance) values (2, 2, 2);
insert into experiencia (id_experiencia, id_empleo, id_freelance) values (3, 3, 3);

insert into persona (id_persona, nom_persona, url_fotoPortada, url_fotoPerfil, ciudad, pais, id_experiencia, id_educacion, id_proyecto, id_edicion) values 
(1, 'Fabián Héctor López', '../myProfile/img/fondo2.jpg', '../myProfile/img/fotoPerfil2.png', 'Córdoba', 'Argentina', 'Mi objetivo profesional es trabajar en proyectos creativos en un equipo al que aporte mis ideas y, a la vez me posibilite avanzar en mi aprendizaje.',1, 1, 1, 1, 1);






