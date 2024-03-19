create database project

use project

drop table product

CREATE TABLE product (
    id INT PRIMARY KEY,
    name NVARCHAR(255),
    image NVARCHAR(255),
    price DECIMAL(10, 2),
    title NVARCHAR(255),
    description NVARCHAR(255),
    BrandID INT,
    sell_ID INT
);

-- Insert initial perfume records
INSERT INTO product (id, name, image, price, title, description, BrandID, sell_ID)
VALUES
    (1, 'Chanel No. 5', 'https://i.pinimg.com/564x/15/0b/11/150b110305f2c8b6c25ea3bbd852057a.jpg', 100, 'Floral', 'Eau de Parfum, 100ml', 1, 1),
    (2, 'Dior Sauvage', 'https://i.pinimg.com/564x/35/0b/99/350b99bea2e3e27e89065862415816f5.jpg', 120, 'Woody', 'Eau de Toilette, 100ml', 2, 1),
    (3, 'Tom Ford Tobacco Vanille', 'https://i.pinimg.com/564x/96/48/80/9648807b4cf95d41fe539c095109f68b.jpg', 250, 'Oriental', 'Eau de Parfum, 50ml', 3, 3),
    (4, 'Tom Ford Neroli Portofino', 'https://i.pinimg.com/564x/e1/0a/31/e10a31818b75004d5e856b5c1016ed40.jpg', 200, 'Citrus', 'Eau de Parfum, 100ml', 3, 3),
    (5, 'Tom Ford Soleil Blanc', 'https://i.pinimg.com/564x/68/ea/08/68ea08497fbaaa60cbc5ae1872457360.jpg', 270, 'Floral', 'Eau de Parfum, 100ml', 3, 3),
    (6, 'Yves Saint Laurent Black Opium', 'https://i.pinimg.com/564x/0d/ef/8f/0def8f7fe8b199aa9e3e1a83b39f4493.jpg', 95, 'Oriental', 'Eau de Parfum, 90ml', 4, 3),
    (7, 'Kilian Black Phantom', 'https://i.pinimg.com/564x/f6/1e/0a/f61e0aff29db93c588e42825ef8dbc22.jpg', 300, 'Oriental', 'Eau de Parfum, 50ml', 5, 4),
    (8, 'Dolce & Gabbana Light Blue', 'https://i.pinimg.com/564x/18/a0/03/18a0037ed430308b2c9132f6dc9b3783.jpg', 85, 'Citrus', 'Eau de Toilette, 50ml', 6, 2);



    (9, 'Kilian Love, don''t be shy', 'https://i.pinimg.com/564x/5f/27/a3/5f27a39f1eafe9e56560ba0a7a5f9456.jpg', 320, 'Sweet', 'Eau de Parfum, 100ml', 5, 4),
    (10, 'Kilian Good Girl Gone Bad', 'https://i.pinimg.com/564x/73/54/b5/7354b52b5fc4b2238a92cbb30a8cfbd5.jpg', 280, 'Floral', 'Eau de Parfum, 50ml', 5, 4),
    (11, 'Kilian Straight to Heaven', 'https://i.pinimg.com/564x/33/48/7a/33487acc36b028e2686b09149c48c9e0.jpg', 350, 'Woody', 'Eau de Parfum, 50ml', 5, 4),
    (12, 'Roja Parfums Elysium', 'https://i.pinimg.com/564x/22/d1/fd/22d1fda34bd0324d37f54c0a5ab2666b.jpg', 400, 'Citrus', 'Eau de Parfum, 50ml', 7, 5),
    (13, 'Roja Parfums Enigma', 'https://i.pinimg.com/564x/cc/9a/32/cc9a32effb9b3d1262d9564bfc86d16c.jpg', 450, 'Oriental', 'Eau de Parfum, 100ml', 7, 5),
    (14, 'Roja Parfums Creation-E', 'https://i.pinimg.com/564x/a9/4f/db/a94fdbcba0f34db69e506818114e8e14.jpg', 420, 'Floral', 'Eau de Parfum, 50ml', 7, 5),
    (15, 'Yves Saint Laurent Libre', 'https://i.pinimg.com/564x/4b/07/67/4b0767e872c8d887821f9137234b7ce4.jpg', 150, 'Oriental', 'Eau de Parfum, 90ml', 4, 3),
    (16, 'Dolce & Gabbana King', 'https://i.pinimg.com/564x/1e/35/6a/1e356a0e0ca9a15d12d6c7ba8d46df05.jpg', 180, 'Woody', 'Eau de Parfum, 100ml', 6, 2),
    (17, 'Dolce & Gabbana Queen', 'https://i.pinimg.com/564x/4f/b8/ab/4fb8ab5b35b5dff5367e49a4b852878f.jpg', 190, 'Floral', 'Eau de Parfum, 100ml', 6, 2),
    (18,'Roja Parfums Scandal', 'https://i.pinimg.com/564x/85/5d/6b/855d6b5a374dc00d1dccd58f1d32aedb.jpg', 480, 'Woody', 'Eau de Parfum, 50ml', 7, 5),
    (19, 'Tom Ford Black Orchid', 'https://i.pinimg.com/564x/75/fb/a3/75fba3ff6d12c5c2c4d5dd72dcb5b2ce.jpg', 200, 'Oriental', 'Eau de Parfum, 50ml', 3, 1),
    (20,'Miss Dior', 'https://i.pinimg.com/564x/25/6e/1c/256e1cf7fbada6e3f65af81ae50265a7.jpg', 150, 'Floral', 'Eau de Parfum, 100ml', 2, 7),
	(21, 'Chanel Chance Eau Tendre', 'https://i.pinimg.com/564x/e2/47/e0/e247e03ca66d9a5d40e0b6170e4586fd.jpg', 150, 'Floral', 'Eau de Toilette, 100ml', 1, 1),
    (22, 'Chanel Coco Mademoiselle', 'https://i.pinimg.com/564x/36/01/e0/3601e0ccb7e6281a0a5b1e1ee3eee088.jpg', 170, 'Floral', 'Eau de Parfum, 100ml', 1, 1),
    (23, 'Tom Ford Oud Wood', 'https://i.pinimg.com/736x/18/57/cb/1857cb56acf98ec1eaeebb9296a34750.jpg', 250, 'Oriental', 'Eau de Parfum, 50ml', 3, 3),
    (24, 'Kilian Rolling in Love', 'https://i.pinimg.com/564x/29/27/38/2927383e1a506f9375ebdc0efbcea3b4.jpg', 330, 'Floral', 'Eau de Parfum, 100ml', 5, 4),
    (25, 'Dior Jadore', 'https://i.pinimg.com/564x/8a/4d/44/8a4d444fa2e320f3db6eeeeae341008e.jpg', 180, 'Floral', 'Eau de Parfum, 100ml', 2, 1),
    (26, 'Dior Homme Intense', 'https://i.pinimg.com/564x/6a/14/bc/6a14bc1b0173b225f0fc0f6ae56b67c7.jpg', 150, 'Woody', 'Eau de Parfum, 100ml', 2, 1),
	(27, 'Diptyque Eau Rose', 'https://i.pinimg.com/564x/ac/44/c9/ac44c92e5cb18e89599a4b4944a54e94.jpg', 120, 'Floral', 'Eau de Toilette, 50ml', 8, 8),
    (28, 'Diptyque Philosykos', 'https://i.pinimg.com/564x/e7/a9/62/e7a9621aa1ba53e8c67dc14036bf387a.jpg', 130, 'Woody', 'Eau de Parfum, 75ml', 8, 8),
    (29, 'Diptyque Do Son', 'https://i.pinimg.com/564x/43/b9/99/43b9991371d0071673fab7fa8a4f3e38.jpg', 140, 'Floral', 'Eau de Parfum, 100ml', 8, 8),
    (30, 'Le Labo Santal 33', 'https://i.pinimg.com/564x/35/d7/f2/35d7f20d7ba32cda787e4e74ad706e42.jpg', 200, 'Woody', 'Eau de Parfum, 50ml', 9, 5),
    (31, 'Le Labo Rose 31', 'https://i.pinimg.com/564x/ba/69/62/ba696299c35afc16e24a792434b16ba4.jpg', 180, 'Floral', 'Eau de Parfum, 100ml', 9, 5),
    (32, 'Le Labo Bergamote 22', 'https://i.pinimg.com/564x/e4/8a/ad/e48aad103f8712f9fd56a48864f2f13d.jpg', 220, 'Citrus', 'Eau de Parfum, 50ml', 9, 5),
    (33, 'Zoologist Elephant', 'https://i.pinimg.com/564x/a6/6e/92/a66e922cf23d9eff9f4fad9c47fad00e.jpg', 120, 'Woody', 'Eau de Parfum, 100ml', 10, 6),
    (34, 'Zoologist Bat', 'https://i.pinimg.com/564x/52/95/9a/52959ae4d4e76defe3602c8e97a1323f.jpg', 130, 'Spicy', 'Eau de Parfum, 50ml', 10, 6),
    (35, 'Zoologist Hummingbird', 'https://i.pinimg.com/564x/f4/74/8c/f4748c6bb32449c7d587ff5747a9f11a.jpg', 110, 'Floral', 'Eau de Parfum, 75ml', 10, 6),
    (36, 'Zoologist Beaver', 'https://i.pinimg.com/564x/ba/92/12/ba921272106a3e34dfe32078558197fb.jpg', 140, 'Woody', 'Eau de Parfum, 50ml', 10, 6),
    (37, 'Zoologist Dragonfly', 'https://i.pinimg.com/564x/2d/be/8e/2dbe8edc30be0befa22db2472b4b5bd8.jpg', 100, 'Citrus', 'Eau de Parfum, 100ml', 10, 6),
    (38, 'Zoologist Macaque', 'https://i.pinimg.com/564x/00/d3/72/00d3728885da0a4e46fe16abf37a5d21.jpg', 95, 'Fresh', 'Eau de Parfum, 50ml', 10, 6),
	(39, 'Diptyque Tam Dao', 'https://i.pinimg.com/564x/cd/3e/9c/cd3e9c075544c3eb85245a12b21626a8.jpg', 150, 'Woody', 'Eau de Parfum, 50ml', 8, 8),
    (40, 'Diptyque Eau des Sens', 'https://i.pinimg.com/564x/d6/8a/e3/d68ae3a578b17d84ad7ae3df41d630a2.jpg', 160, 'Citrus', 'Eau de Toilette, 100ml', 8, 8);


	select*from product



	----------------------------------------------------------------------------------------------
	create database project1

	use project1

	CREATE TABLE product (
    id INT PRIMARY KEY identity,
    name NVARCHAR(255),
    image NVARCHAR(255),
    price DECIMAL(10, 2),
    title NVARCHAR(255),
    description NVARCHAR(255),
    BrandID INT,
    sell_ID INT
);

-- Insert initial perfume records
INSERT INTO product ( name, image, price, title, description, BrandID, sell_ID)
VALUES
    ('Kilian Love, don''t be shy', 'https://i.pinimg.com/564x/5f/27/a3/5f27a39f1eafe9e56560ba0a7a5f9456.jpg', 320, 'Sweet', 'Eau de Parfum, 100ml', 5, 4),
    ('Dior Sauvage', 'https://i.pinimg.com/564x/35/0b/99/350b99bea2e3e27e89065862415816f5.jpg', 120, 'Woody', 'Eau de Toilette, 100ml', 2, 1),
    ('Tom Ford Tobacco Vanille', 'https://i.pinimg.com/564x/96/48/80/9648807b4cf95d41fe539c095109f68b.jpg', 250, 'Oriental', 'Eau de Parfum, 50ml', 3, 3),
    ('Tom Ford Neroli Portofino', 'https://i.pinimg.com/564x/e1/0a/31/e10a31818b75004d5e856b5c1016ed40.jpg', 200, 'Citrus', 'Eau de Parfum, 100ml', 3, 3),
    ( 'Tom Ford Soleil Blanc', 'https://i.pinimg.com/564x/68/ea/08/68ea08497fbaaa60cbc5ae1872457360.jpg', 270, 'Floral', 'Eau de Parfum, 100ml', 3, 3),
    ('Yves Saint Laurent Black Opium', 'https://i.pinimg.com/564x/0d/ef/8f/0def8f7fe8b199aa9e3e1a83b39f4493.jpg', 95, 'Oriental', 'Eau de Parfum, 90ml', 4, 3),
    ('Kilian Black Phantom', 'https://i.pinimg.com/564x/f6/1e/0a/f61e0aff29db93c588e42825ef8dbc22.jpg', 300, 'Oriental', 'Eau de Parfum, 50ml', 5, 4),
    ('Dolce & Gabbana Light Blue', 'https://i.pinimg.com/564x/18/a0/03/18a0037ed430308b2c9132f6dc9b3783.jpg', 85, 'Citrus', 'Eau de Toilette, 50ml', 6, 2),
	 ('Chanel No. 5', 'https://i.pinimg.com/564x/15/0b/11/150b110305f2c8b6c25ea3bbd852057a.jpg', 100, 'Floral', 'Eau de Parfum, 100ml', 1, 1),
    ( 'Kilian Good Girl Gone Bad', 'https://i.pinimg.com/564x/73/54/b5/7354b52b5fc4b2238a92cbb30a8cfbd5.jpg', 280, 'Floral', 'Eau de Parfum, 50ml', 5, 4),
    ( 'Kilian Straight to Heaven', 'https://i.pinimg.com/564x/33/48/7a/33487acc36b028e2686b09149c48c9e0.jpg', 350, 'Woody', 'Eau de Parfum, 50ml', 5, 4),
    ( 'Roja Parfums Elysium', 'https://i.pinimg.com/564x/22/d1/fd/22d1fda34bd0324d37f54c0a5ab2666b.jpg', 400, 'Citrus', 'Eau de Parfum, 50ml', 7, 5),
    ( 'Roja Parfums Enigma', 'https://i.pinimg.com/564x/cc/9a/32/cc9a32effb9b3d1262d9564bfc86d16c.jpg', 450, 'Oriental', 'Eau de Parfum, 100ml', 7, 5),
    ( 'Roja Parfums Creation-E', 'https://i.pinimg.com/564x/a9/4f/db/a94fdbcba0f34db69e506818114e8e14.jpg', 420, 'Floral', 'Eau de Parfum, 50ml', 7, 5),
    ( 'Yves Saint Laurent Libre', 'https://i.pinimg.com/564x/4b/07/67/4b0767e872c8d887821f9137234b7ce4.jpg', 150, 'Oriental', 'Eau de Parfum, 90ml', 4, 3),
    ( 'Dolce & Gabbana King', 'https://i.pinimg.com/564x/1e/35/6a/1e356a0e0ca9a15d12d6c7ba8d46df05.jpg', 180, 'Woody', 'Eau de Parfum, 100ml', 6, 2),
    ( 'Dolce & Gabbana Queen', 'https://i.pinimg.com/564x/4f/b8/ab/4fb8ab5b35b5dff5367e49a4b852878f.jpg', 190, 'Floral', 'Eau de Parfum, 100ml', 6, 2),
    ('Roja Parfums Scandal', 'https://i.pinimg.com/564x/85/5d/6b/855d6b5a374dc00d1dccd58f1d32aedb.jpg', 480, 'Woody', 'Eau de Parfum, 50ml', 7, 5),
    ( 'Tom Ford Black Orchid', 'https://i.pinimg.com/564x/75/fb/a3/75fba3ff6d12c5c2c4d5dd72dcb5b2ce.jpg', 200, 'Oriental', 'Eau de Parfum, 50ml', 3, 1),
    ('Miss Dior', 'https://i.pinimg.com/564x/25/6e/1c/256e1cf7fbada6e3f65af81ae50265a7.jpg', 150, 'Floral', 'Eau de Parfum, 100ml', 2, 7),
	( 'Chanel Chance Eau Tendre', 'https://i.pinimg.com/564x/e2/47/e0/e247e03ca66d9a5d40e0b6170e4586fd.jpg', 150, 'Floral', 'Eau de Toilette, 100ml', 1, 1),
    ( 'Chanel Coco Mademoiselle', 'https://i.pinimg.com/564x/36/01/e0/3601e0ccb7e6281a0a5b1e1ee3eee088.jpg', 170, 'Floral', 'Eau de Parfum, 100ml', 1, 1),
    ('Tom Ford Oud Wood', 'https://i.pinimg.com/736x/18/57/cb/1857cb56acf98ec1eaeebb9296a34750.jpg', 250, 'Oriental', 'Eau de Parfum, 50ml', 3, 3),
    ( 'Kilian Rolling in Love', 'https://i.pinimg.com/564x/29/27/38/2927383e1a506f9375ebdc0efbcea3b4.jpg', 330, 'Floral', 'Eau de Parfum, 100ml', 5, 4),
    ( 'Dior Jadore', 'https://i.pinimg.com/564x/8a/4d/44/8a4d444fa2e320f3db6eeeeae341008e.jpg', 180, 'Floral', 'Eau de Parfum, 100ml', 2, 1),
    ( 'Dior Homme Intense', 'https://i.pinimg.com/564x/6a/14/bc/6a14bc1b0173b225f0fc0f6ae56b67c7.jpg', 150, 'Woody', 'Eau de Parfum, 100ml', 2, 1),
	( 'Diptyque Eau Rose', 'https://i.pinimg.com/564x/ac/44/c9/ac44c92e5cb18e89599a4b4944a54e94.jpg', 120, 'Floral', 'Eau de Toilette, 50ml', 8, 8),
    ( 'Diptyque Philosykos', 'https://i.pinimg.com/564x/e7/a9/62/e7a9621aa1ba53e8c67dc14036bf387a.jpg', 130, 'Woody', 'Eau de Parfum, 75ml', 8, 8),
    ('Diptyque Do Son', 'https://i.pinimg.com/564x/43/b9/99/43b9991371d0071673fab7fa8a4f3e38.jpg', 140, 'Floral', 'Eau de Parfum, 100ml', 8, 8),
    ( 'Le Labo Santal 33', 'https://i.pinimg.com/564x/35/d7/f2/35d7f20d7ba32cda787e4e74ad706e42.jpg', 200, 'Woody', 'Eau de Parfum, 50ml', 9, 5),
    ( 'Le Labo Rose 31', 'https://i.pinimg.com/564x/ba/69/62/ba696299c35afc16e24a792434b16ba4.jpg', 180, 'Floral', 'Eau de Parfum, 100ml', 9, 5),
    ('Le Labo Bergamote 22', 'https://i.pinimg.com/564x/e4/8a/ad/e48aad103f8712f9fd56a48864f2f13d.jpg', 220, 'Citrus', 'Eau de Parfum, 50ml', 9, 5),
    ( 'Zoologist Elephant', 'https://i.pinimg.com/564x/a6/6e/92/a66e922cf23d9eff9f4fad9c47fad00e.jpg', 120, 'Woody', 'Eau de Parfum, 100ml', 10, 6),
    ( 'Zoologist Bat', 'https://i.pinimg.com/564x/52/95/9a/52959ae4d4e76defe3602c8e97a1323f.jpg', 130, 'Spicy', 'Eau de Parfum, 50ml', 10, 6),
    ( 'Zoologist Hummingbird', 'https://i.pinimg.com/564x/f4/74/8c/f4748c6bb32449c7d587ff5747a9f11a.jpg', 110, 'Floral', 'Eau de Parfum, 75ml', 10, 6),
    ( 'Zoologist Beaver', 'https://i.pinimg.com/564x/ba/92/12/ba921272106a3e34dfe32078558197fb.jpg', 140, 'Woody', 'Eau de Parfum, 50ml', 10, 6),
    ( 'Zoologist Dragonfly', 'https://i.pinimg.com/564x/2d/be/8e/2dbe8edc30be0befa22db2472b4b5bd8.jpg', 100, 'Citrus', 'Eau de Parfum, 100ml', 10, 6),
    ( 'Zoologist Macaque', 'https://i.pinimg.com/564x/00/d3/72/00d3728885da0a4e46fe16abf37a5d21.jpg', 95, 'Fresh', 'Eau de Parfum, 50ml', 10, 6),
	( 'Diptyque Tam Dao', 'https://i.pinimg.com/564x/cd/3e/9c/cd3e9c075544c3eb85245a12b21626a8.jpg', 150, 'Woody', 'Eau de Parfum, 50ml', 8, 8),
    ( 'Diptyque Eau des Sens', 'https://i.pinimg.com/564x/d6/8a/e3/d68ae3a578b17d84ad7ae3df41d630a2.jpg', 160, 'Citrus', 'Eau de Toilette, 100ml', 8, 8);


	drop table product


	CREATE TABLE brand (
    brandid INT PRIMARY KEY,
    name VARCHAR(255)
);

insert into brand values 
(1, 'Chanel'),
(2, 'Dior'),
(3, 'Tom Ford'),
(4, 'Yves Saint Laurent'),
(5, 'Killian'),
(6, 'Dolce & Gabbana'),
(7, 'Roja'),
(8, 'Diptyque'),
(9, 'Le Labo'),
(10, 'Zoologist');

select*from brand
select top 1 * from product order by id desc

select * from product
where BrandID = 7

 use PE_Example

 select * from Subjects
 select * from Instructors
 select * from Instructors
 where SubjectID = 'CSI101'

 select * from product where id = 3

 select * from product
 where [name] like '%la%'

 CREATE TABLE account (
    uID INT PRIMARY KEY IDENTITY,
    email VARCHAR(255) NOT NULL,
    pass VARCHAR(255) NOT NULL,
    itSell INT,
    isAdmin INT
);

INSERT INTO account (email, pass, itSell, isAdmin) VALUES
('user1@example.com', '1', 1, 0),
('user2@example.com', '2', 0, 0),
('user3@example.com', '3', 1, 1),
('user4@example.com', '4', 0, 1),
('user5@example.com', '5', 1, 0),
('user6@example.com', '6', 0, 0),
('user7@example.com', '7', 1, 1),
('user8@example.com', '8', 0, 1),
('user9@example.com', '9', 1, 0),
('user10@example.com', '10', 0, 0),
('user11@example.com', 'password11', 1, 1),
('user12@example.com', 'password12', 0, 1),
('user13@example.com', 'password13', 1, 0),
('user14@example.com', 'password14', 0, 0),
('user15@example.com', 'password15', 1, 1),
('user16@example.com', 'password16', 0, 1),
('user17@example.com', 'password17', 1, 0),
('user18@example.com', 'password18', 0, 0),
('user19@example.com', 'password19', 1, 1),
('user20@example.com', 'password20', 0, 1);

drop table account


select * from account 
where email = 
and pass=

INSERT INTO account values ('user36@example.com', 'password36', 0, 0);

delete from product 
where id = 19

INSERT INTO product
VALUES
 ('Tom Ford Black Orchid', 'https://i.pinimg.com/564x/75/fb/a3/75fba3ff6d12c5c2c4d5dd72dcb5b2ce.jpg', 200, 'Oriental', 'Eau de Parfum, 50ml', 3, 1)



INSERT INTO product values 
 ('Tom Ford Black Orchid', 'https://i.pinimg.com/564x/75/fb/a3/75fba3ff6d12c5c2c4d5dd72dcb5b2ce.jpg', 200, 'Oriental', 'Eau de Parfum, 50ml', 3, 1)

 INSERT INTO product
 values ('Tom Ford Black Orchid', 'https://i.pinimg.com/564x/75/fb/a3/75fba3ff6d12c5c2c4d5dd72dcb5b2ce.jpg', 200, 'Oriental', 'Eau de Parfum, 50ml', 3, 1)

 update product
 set [name] = ,
 [image] = ,
 price = ,
 title = ,
 [description] = ,
 brandID = 
 where id = 

 select count(*) from product

 select * from product
 order by id
 OFFSET ? ROWS
 FETCH FIRST 5 rows only;

 CREATE TABLE [order] (
    id INT IDENTITY(1,1) PRIMARY KEY,
    [date] DATE,
    uid INT,
    totalmoney money
);

drop table [order]

CREATE TABLE order_detail (
    oid INT,
    pid INT,
    quantity INT,
    price DECIMAL(10, 2),
    FOREIGN KEY (oid) REFERENCES [order](id),
    FOREIGN KEY (pid) REFERENCES product(id)
);

insert into [order] values(?,?,?)

select*from order_detail

select*from [order]

insert into order_detail
values (1, 19, 2, 390)

select top 1 id from [order] order by id desc

