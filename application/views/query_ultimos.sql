select 
sys_poe.dosimetropersona.id as iddosimetro,
sys_poe.dosimetropersona.idpersona as idpersona,
sys_poe.dosimetropersona.iddocumento as iddocumento,
sys_poe.dosimetropersona.idtarjeta as idtarjeta,
sys_poe.tarjetas.sinceros as sinceros,
sys_poe.dosimetropersona.idestablecimiento as idestablecimiento,
sys_poe.dosimetropersona.fechainicio as fechainicio,
sys_poe.dosimetropersona.fechafin as fechafin,
sys_poe.dosimetropersona.idservicio as idservicio,
sys_poe.dosimetropersona.estatus as estatus
from
sys_poe.dosimetropersona, sys_poe.tarjetas
where 
sys_poe.dosimetropersona.idtarjeta=sys_poe.tarjetas.id 
and sys_poe.dosimetropersona.id IN (select sys_poe.dosimetropersona.id from sys_poe.dosimetropersona, sys_poe.tarjetas where 
sys_poe.dosimetropersona.idtarjeta=sys_poe.tarjetas.id and sys_poe.tarjetas.sinceros IN ('4115','4960','1598','2015','2267','2680','3251','1648','3671','3420','3219','3447','3294','2684','3698','1173') order by sys_poe.dosimetropersona.id DESC limit 16);

select * from sys_poe.lecturas  where iddosimetro in (117322,117325,117324,117318,117312,117317,117326,117321,117316,117320,117313,117315,117314,117327,117328,117311,114548,114063,117336,114061,114531,114538,114532,114536,114533,114535,104312,114541,114537,114542,114530,114529,117323,114546,113411,114545,114630,114561,114660,114555,114654,114553,114543,114551,114619,114556,114634,114646,114658,114635,114544,114564,114636,114558,114626,113400,114661,114554,110961,114638,110055,113386,114559,114552,114629,114656,114655,114648,114620,114659,114613,114549,114568,114653,114621,114625,114618,114652,114647,114627,114539,114566,114657,114633,113413,114624,114669,114643,114550) order by iddosimetro desc

insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (5927,'2026-08-04',0.382304,1907,'BENITEZ0526.asc',18382,117322,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (5930,'2026-08-04',0.445156,1907,'BENITEZ0526.asc',18022,117325,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (5929,'2026-08-04',0.407689,1907,'BENITEZ0526.asc',17323,117324,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (5922,'2026-08-04',0.375755,1907,'BENITEZ0526.asc',17768,117318,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (5915,'2026-08-04',0.376243,1907,'BENITEZ0526.asc',18090,117312,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (5921,'2026-08-04',0.381685,1907,'BENITEZ0526.asc',17802,117317,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (5931,'2026-08-04',0.404595,1907,'BENITEZ0526.asc',18227,117326,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (5926,'2026-08-04',0.39095,1907,'BENITEZ0526.asc',17979,117321,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (5919,'2026-08-04',0.43488,1907,'BENITEZ0526.asc',19614,117316,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (5924,'2026-08-04',0.399691,1907,'BENITEZ0526.asc',17398,117320,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (5916,'2026-08-04',0.406103,1907,'BENITEZ0526.asc',17107,117313,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (5918,'2026-08-04',0.406758,1907,'BENITEZ0526.asc',18110,117315,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (5917,'2026-08-04',0.526176,1907,'BENITEZ0526.asc',17623,117314,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (6356,'2026-08-04',0.458441,1907,'BENITEZ0526.asc',17163,117327,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (0,'2026-08-04',0.455676,1907,'BENITEZ0526.asc',17391,117328,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (5914,'2026-08-04',0.451527,1907,'BENITEZ0526.asc',17445,117311,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (5312,'2026-08-04',0.444194,1725,'BENITEZ0526.asc',17835,114548,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (6159,'2026-08-04',0.40402,1689,'BENITEZ0526.asc',19408,114063,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (6743,'2026-08-04',0.382304,1910,'BENITEZ0526.asc',17261,117336,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (6154,'2026-08-04',0.445156,1689,'BENITEZ0526.asc',18770,114061,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (7081,'2026-08-04',0.407689,1723,'BENITEZ0526.asc',17846,114531,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (7076,'2026-08-04',0.375755,1724,'BENITEZ0526.asc',19510,114538,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (7082,'2026-08-04',0.376243,1723,'BENITEZ0526.asc',18686,114532,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (7074,'2026-08-04',0.381685,1724,'BENITEZ0526.asc',16814,114536,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (7083,'2026-08-04',0.404595,1723,'BENITEZ0526.asc',18049,114533,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (4824,'2026-08-04',0.39095,1724,'BENITEZ0526.asc',17360,114535,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (5836,'2026-08-04',0.43488,1069,'BENITEZ0526.asc',19625,104312,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (7079,'2026-08-04',0.399691,1724,'BENITEZ0526.asc',16906,114541,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (7075,'2026-08-04',0.406103,1724,'BENITEZ0526.asc',19755,114537,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (0,'2026-08-04',0.406758,1724,'BENITEZ0526.asc',18011,114542,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (7080,'2026-08-04',0.526176,1723,'BENITEZ0526.asc',18537,114530,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (4835,'2026-08-04',0.458441,1723,'BENITEZ0526.asc',16874,114529,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (5928,'2026-08-04',0.455676,1907,'BENITEZ0526.asc',18725,117323,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (4302,'2026-08-04',0.382304,1725,'BENITEZ0526.asc',19795,114546,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (5633,'2026-08-04',0.445156,1636,'BENITEZ0526.asc',17848,113411,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (4301,'2026-08-04',0.407689,1725,'BENITEZ0526.asc',17267,114545,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (5286,'2026-08-04',0.375755,1727,'BENITEZ0526.asc',19565,114630,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (6333,'2026-08-04',0.376243,1725,'BENITEZ0526.asc',18483,114561,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (6331,'2026-08-04',0.381685,1727,'BENITEZ0526.asc',17710,114660,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (5585,'2026-08-04',0.404595,1725,'BENITEZ0526.asc',19546,114555,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (6325,'2026-08-04',0.39095,1727,'BENITEZ0526.asc',18340,114654,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (5547,'2026-08-04',0.43488,1725,'BENITEZ0526.asc',17326,114553,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (3497,'2026-08-04',0.399691,1725,'BENITEZ0526.asc',17812,114543,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (5318,'2026-08-04',0.406103,1725,'BENITEZ0526.asc',19472,114551,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (4397,'2026-08-04',0.406758,1727,'BENITEZ0526.asc',17286,114619,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (5589,'2026-08-04',0.526176,1725,'BENITEZ0526.asc',17467,114556,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (5401,'2026-08-04',0.458441,1727,'BENITEZ0526.asc',17382,114634,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (6317,'2026-08-04',0.455676,1727,'BENITEZ0526.asc',19500,114646,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (6329,'2026-08-04',0.451527,1727,'BENITEZ0526.asc',17400,114658,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (5404,'2026-08-04',0.444194,1727,'BENITEZ0526.asc',17455,114635,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (3512,'2026-08-04',0.40402,1725,'BENITEZ0526.asc',17769,114544,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (6671,'2026-08-04',0.382304,1725,'BENITEZ0526.asc',17795,114564,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (5407,'2026-08-04',0.445156,1727,'BENITEZ0526.asc',17690,114636,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (5635,'2026-08-04',0.407689,1725,'BENITEZ0526.asc',17881,114558,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (4846,'2026-08-04',0.375755,1727,'BENITEZ0526.asc',17951,114626,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (5276,'2026-08-04',0.376243,1636,'BENITEZ0526.asc',19506,113400,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (6332,'2026-08-04',0.381685,1727,'BENITEZ0526.asc',17992,114661,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (5584,'2026-08-04',0.404595,1725,'BENITEZ0526.asc',19778,114554,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (6313,'2026-08-04',0.39095,1478,'BENITEZ0526.asc',18099,110961,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (5633,'2026-08-04',0.43488,1727,'BENITEZ0526.asc',18013,114638,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (6128,'2026-08-04',0.399691,1423,'BENITEZ0526.asc',18379,110055,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (4365,'2026-08-04',0.406103,1636,'BENITEZ0526.asc',18212,113386,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (5654,'2026-08-04',0.406758,1725,'BENITEZ0526.asc',19711,114559,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (5319,'2026-08-04',0.526176,1725,'BENITEZ0526.asc',18372,114552,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (5280,'2026-08-04',0.458441,1727,'BENITEZ0526.asc',18496,114629,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (6327,'2026-08-04',0.455676,1727,'BENITEZ0526.asc',19766,114656,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (6326,'2026-08-04',0.382304,1727,'BENITEZ0526.asc',18329,114655,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (6319,'2026-08-04',0.445156,1727,'BENITEZ0526.asc',17218,114648,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (4818,'2026-08-04',0.407689,1727,'BENITEZ0526.asc',18727,114620,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (6330,'2026-08-04',0.375755,1727,'BENITEZ0526.asc',18721,114659,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (3669,'2026-08-04',0.376243,1727,'BENITEZ0526.asc',18713,114613,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (5313,'2026-08-04',0.381685,1725,'BENITEZ0526.asc',18528,114549,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (0,'2026-08-04',0.404595,1725,'BENITEZ0526.asc',18584,114568,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (6324,'2026-08-04',0.39095,1727,'BENITEZ0526.asc',18940,114653,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (4819,'2026-08-04',0.43488,1727,'BENITEZ0526.asc',17958,114621,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (4844,'2026-08-04',0.399691,1727,'BENITEZ0526.asc',18456,114625,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (4388,'2026-08-04',0.406103,1727,'BENITEZ0526.asc',19771,114618,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (6323,'2026-08-04',0.406758,1727,'BENITEZ0526.asc',19718,114652,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (6318,'2026-08-04',0.526176,1727,'BENITEZ0526.asc',18926,114647,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (4848,'2026-08-04',0.458441,1727,'BENITEZ0526.asc',17264,114627,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (7077,'2026-08-04',0.455676,1724,'BENITEZ0526.asc',18816,114539,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (7063,'2026-08-04',0.451527,1725,'BENITEZ0526.asc',18966,114566,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (6328,'2026-08-04',0.444194,1727,'BENITEZ0526.asc',18692,114657,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (5309,'2026-08-04',0.40402,1727,'BENITEZ0526.asc',19270,114633,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (6311,'2026-08-04',0.382304,1636,'BENITEZ0526.asc',19542,113413,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (4841,'2026-08-04',0.445156,1727,'BENITEZ0526.asc',17965,114624,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (6372,'2026-08-04',0.407689,1727,'BENITEZ0526.asc',18193,114669,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (6314,'2026-08-04',0.375755,1727,'BENITEZ0526.asc',16884,114643,1);
insert into sys_poe.lecturas (hpersonal,fecha,dosis,iddocumento,archivo,idtarjeta,iddosimetro,ajuste) values (5315,'2026-08-04',0.376243,1725,'BENITEZ0526.asc',16856,114550,1);
,