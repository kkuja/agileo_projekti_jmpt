INSERT INTO
	authority
VALUES
	(1,'ROLE_ADMIN'),
	(2,'ROLE_BOSS'),
	(3,'ROLE_SALESPERSON'),
	(4,'ROLE_TECHNICIAN'),
	(5,'ROLE_CUSTOMER_SERVANT'),
	(6,'ROLE_SECRETARY'),
	(7,'ROLE_BILLER'),
	(8,'ROLE_USER');


INSERT INTO
	webuser2
VALUES
	(1,'pomo','2ee80d71b2ad4884b91c11629bf35fdaf91a34ec9f2814b83e03bcd656b82657ae2d13241a8a4492',1,'Bruce','Springsteen'),
	(2,'myyjä','b8b8cc8ec8fab80a56c3c2cd6cfd95f8ef57ce0232873aa25e315a82b405b2cbab18919058a31d1c',1,'Jethro','Rostedt'),
	(3,'teknikko','3218b79fb8ec876fce343771cd74e461dbd52a530fe64aa61892fd4611b146cbaeb618320f3f10fc',1,'Timo','Terävä'),
	(4,'aspalvelija','903a490a4b41532fb0481b727aa5c13ef5614913fd51f6b66f4ae3016e8d94b796da5b54ea8ebd1f',1,'Antti','Avulias'),
	(5,'sihteeri','9726af13788a4be9388db98bc2b4d3f9deaa561df2c6dda1e11b8ab62a3f33ed510946358dd46018',1,'Sanna','Sihteerikkö'),
	(6,'laskuttaja','ca0a2cef72b92b5a3be12e40fd62abccf785c661f467dcb53cc8b0c0d5db5e2ca81f5e1114cf1f1d',1,'Lasse','Laatunen'),
	(7,'admin99','25d0fc456ce1406be1f2f2536825ded2c2dcdb4d593109fc3b381149d4daae6a57b3226ffc914b45',1,'Paavo','Pääkäyttäjä'),
	(8,'juuseri','7199e5fbc78f1dfa5b3c63d1c2a619c44a08dc2ffa11c840063660996d883edb3df09ab71374cdd0',1,'Pekka','Peruskäyttäjä'),
	(9,'adminpomo','505a55efb2e31f28b71d3a0d8b010c8e7d2572bbcb2205de043ef17fd69144368cb9bbf1974e2907',1,'Linus','Torvalds');


INSERT INTO
	webuser2_authority
VALUES
	(1,1,2),
	(2,2,3),
	(3,3,4),
	(4,4,5),
	(5,5,6),
	(6,6,7),
	(7,7,1),
	(8,8,8),
	(9,9,1),
	(10,9,2);
