
create table tbl_Besin(
id          int IDENTITY(1,1)NOT NULL,
besinCesidi nvarchar(250) NULL,
besinMiktari int NULL
/*er daki beslenme saati  beslenme tarihi olarak beslenme tablosuna eklendi*/
CONSTRAINT [PK_tbl_Besin]PRIMARY KEY CLUSTERED 
(     [id]ASC
)
)
go
create table tbl_Beslenme(
id             int IDENTITY(1,1)NOT NULL,
beslenmeTarihi datetime NULL,/*sonradan eklendi*/
CONSTRAINT [PK_tbl_Beslenme]PRIMARY KEY CLUSTERED 
(      [id]ASC
))
GO
CREATE TABLE tbl_BeslenmeGorevli(
id int IDENTITY(1,1)NOT NULL,
Ad nvarchar(250),
beslenmeGörevTarihi datetime NULL
CONSTRAINT [PK_tbl_Gorevli]PRIMARY KEY CLUSTERED
(
[id]ASC
))
GO
CREATE TABLE tbl_Asi(
id int IDENTITY(1,1)NOT NULL,
asiTuru nvarchar(250)NULL,/*er da yok yeni eklendi*/
uygulanmasıgerekenyas nvarchar(250)NULL/*er da yok yeni eklendi*/


CONSTRAINT [PK_tbl_Asi]PRIMARY KEY CLUSTERED
([id]ASC
))
GO

CREATE TABLE tbl_AsiGorevli(
id int IDENTITY (1,1)NOT NULL,
Ad nvarchar (250),
AsiTarihi datetime NULL,
uyguladigiHayvanid int,/*er da yok yeni eklendi*/
asiTuru nvarchar(250)/*er da yok yeni eklendi*/
CONSTRAINT [PK_tbl_AsiGorevli]PRIMARY KEY CLUSTERED
([id]Asc
))
go
create table tbl_Hayvan(
id int IDENTITY(1,1)NOT NULL,
hayvanTur nvarchar (250)NULL,
cinsiyet nvarchar(250)NULL,
toplamSayi int NULL,
asiBilgileri nvarchar( 250 ) NULL  


CONSTRAINT [PK_tbl_Hayvan]PRIMARY KEY CLUSTERED
( [id ]ASC
))
GO
CREATE TABLE tbl_Sut(
id int IDENTITY (1,1),
toplamMiktar int NULL,/*er da yok yeni eklendi*/
sutYagCesidi nvarchar(250)NULL,/*er da yok yeni eklendi*/
sutCesidi nvarchar(250) NULL,/*er da yok yeni eklendi*/
CONSTRAINT [PK_tbl_Sut]PRIMARY KEY CLUSTERED 
([id]asc
))
go
create table tbl_kullanimYerleri(
id int IDENTITY (1,1)NOT NULL,
kullanimYeri nvarchar(250)NULL/*er da yok yeni eklendi*/

CONSTRAINT [PK_tbl_kullanimYerleri]PRIMARY KEY CLUSTERED
([id]asc))
go
Create table tbl_paketlenenSut(
id int IDENTITY (1,1)NOT NULL,
sutYagCesidi nvarchar(250)NULL,
sutCesidi nvarchar(250) NULL,
paketCesidi nvarchar(250)NULL,
toplamMiktar int NULL,
saklamaKosullari nvarchar(250)NULL,
uretimTarihi datetime NULL,
tuketimTarihi datetime NULL


CONSTRAINT [PK_tbl_paketlenenSut]PRIMARY KEY CLUSTERED
([id]asc))
go
create table tbl_yogurt(
id int IDENTITY (1,1)NOT NULL,
kaymakcesit nvarchar(250)NULL,
yogurtCesit nvarchar(250)NULL,
toplamMiktar int NULL,
saklamaKosullari nvarchar(250)NULL,
uretimTarihi datetime NULL,
tuketimTarihi datetime NULL,

CONSTRAINT [PK_tbl_yogurt]PRIMARY KEY CLUSTERED
([id]ASC))
go
create table tbl_peynir(
id int IDENTITY (1,1)NOT NULL,
cesit nvarchar(250)NULL,
toplamMiktar int NULL,
saklamaKosullari nvarchar(250)NULL,
uretimTarihi datetime NULL,
tuketimTarihi datetime NULL

CONSTRAINT[PK_tbl_peynir]PRIMARY KEY CLUSTERED
([id]asc))
go

create table tbl_Tereyagi(
id int IDENTITY (1,1)NOT NULL,
cesit nvarchar(250)NULL,
toplamMiktar int NULL,
saklamaKosullari nvarchar(250)NULL,
uretimTarihi datetime NULL,
tuketimTarihi datetime NULL

CONSTRAINT [PK_tbl_Tereyagi]PRIMARY KEY CLUSTERED 
([id]asc
))go
create table tbl_Fabrika(
id int IDENTITY(1,1)NOT NULL,
Ad nvarchar (250)NULL
CONSTRAINT [PK_tbl_Fabrika]PRIMARY KEY CLUSTERED
([id]ASC
))
GO
CREATE TABLE tbl_Personel(
id int IDENTITY (1,1)NOT NULL,
Ad nvarchar (250)NULL,
soyad nvarchar(250)NULL,
iseBaslamaTarihi datetime,
calistigiBirim nvarchar(250)

CONSTRAINT [PK_tbl_Personel]PRIMARY KEY CLUSTERED
([id]asc
))
go

create table tbl_Dagitim(
id int IDENTITY (1,1) NOT NULL,
uruncesit nvarchar(250),
tarih datetime NULL,
dagitilanMiktar int NULL,/*er da yok yeni eklendi*/
gonderilenSube nvarchar (250)NULL/*er da yok yeni eklendi*/


CONSTRAINT [PK_tbl_Dagitim]PRIMARY KEY CLUSTERED
([id]asc
))
go
create table tbl_Sube(
id int IDENTITY (1,1)NOT NULL,
Ad nvarchar (250),
alinanUrunCesit nvarchar(250)NULL,/*er da yok yeni eklendi*/
alinanMiktar int NULL,/*er da yok yeni eklendi*/
alinanTarih datetime null,/*er da yok yeni eklendi*/
adres nvarchar(250) NULL
CONSTRAINT [PK_tbl_Sube]PRIMARY KEY CLUSTERED
([id]))
go
create table tbl_SatisBilgileri(
id int IDENTITY (1,1)NOT NULL


CONSTRAINT [PK_tbl-satisBilgileri]PRIMARY KEY CLUSTERED 
([id]))
go
/*satılan ürün,alınan ürün ve kalan ürün bilgieri varlık olarak kabul edildi*/
create table tbl_satilanUrun(
id int IDENTITY (1,1)NOT NULL,
sube nvarchar(250)NULL,
Ad nvarchar(250) NULL,
miktar int NULL
CONSTRAINT [PK_tbl_satilanUrun]PRIMARY KEY CLUSTERED (
[id]
))go
create table tbl_ihtiyacOlanUrun(
id int IDENTITY (1,1)NOT NULL,
sube nvarchar(250)NULL,
Ad nvarchar(250) NULL,
miktar int NULL

CONSTRAINT [PK_tbl_ihtiyacOlanUrun]PRIMARY KEY CLUSTERED (
[id]
))go
create table tbl_KalanUrun(
id int IDENTITY (1,1)NOT NULL,
şube  nvarchar(250)NULL,
Ad nvarchar(250) NULL,

miktar int NULL
CONSTRAINT [PK_tbl_KalanUrun]PRIMARY KEY CLUSTERED (
[id]
))go
/*ilişkililer*/

create table tbl_hayvanSut(
id int IDENTITY (1,1)NOT NULL,
hayvanTur nvarchar NULL,
hayvanId int  NULL,
sutId int NULL 
CONSTRAINT [PK_tbl_ tbl_hayvanSut]PRIMARY  KEY CLUSTERED (
[id] 
)
) 
go



create table tbl_asiHayvan(
id int IDENTITY (1,1)NOT NULL,
hayvanId int  NULL,
asiId int NULL 
CONSTRAINT [PK_tbl_asiHayvan]PRIMARY  KEY CLUSTERED (
[id] 
)
) 
go



create table tbl_asi_asiGorevli(
id int IDENTITY (1,1)NOT NULL,
asıGorevliId int  NULL,
asiId int NULL 
CONSTRAINT [PK_tbl_asi_asiGorevli]PRIMARY  KEY CLUSTERED (
[id] 
)
) 
go

create table tbl_beslenmeHayvan(
id int IDENTITY (1,1)NOT NULL,
hayvanId int  NULL,
beslenmeId int NULL ,
CONSTRAINT [PK_tbl_beslenmeHayvan]PRIMARY  KEY CLUSTERED (
[id] 
)
) 
go







create table tbl_gorevliBeslenme(
id int IDENTITY (1,1)NOT NULL,
gorevliId int  NULL,
beslenmeId int NULL 
CONSTRAINT [PK_tbl_gorevliBeslenme]PRIMARY  KEY CLUSTERED (
[id] 
)
) 
go



create table tbl_besinBeslenme(
id int IDENTITY (1,1)NOT NULL,
besinId int  NULL,
beslenmeId int NULL 
CONSTRAINT [PK_tbl_besinBeslenme]PRIMARY  KEY CLUSTERED (
[id] 
)
) 
go



create table tbl_paketlenensutSut(
id int IDENTITY (1,1)NOT NULL,
paketlenensutId int  NULL,
sutId int NULL 
CONSTRAINT [PK_ tbl_paketlenensutSut]PRIMARY  KEY CLUSTERED (
[id] 
)
) 
go







create table tbl_kullanildigiyerlerSut(
id int IDENTITY (1,1)NOT NULL,
kullanildigiyerlerId int  NULL,
sutId int NULL 
CONSTRAINT [PK_ tbl_kullanildigiyerlerSut]PRIMARY  KEY CLUSTERED (
[id] 
)
) 
go


create table tbl_kullanildigiyerlerPeynir(
id int IDENTITY (1,1)NOT NULL,
kullanildigiyerlerId int  NULL,
PeynirId int NULL 
CONSTRAINT [PK_ tbl_kullanildigiyerlerPeynir]PRIMARY  KEY CLUSTERED (
[id] 
)
) 
go







create table tbl_kullanildigiyerlerYogurt(
id int IDENTITY (1,1)NOT NULL,
kullanildigiyerlerId int  NULL,
YogurtId int NULL 
CONSTRAINT [PK_ tbl_kullanildigiyerlerYogurt]PRIMARY  KEY CLUSTERED (
[id] 
)
) 
go



create table tbl_kullanildigiyerlerTereyagi(
id int IDENTITY (1,1)NOT NULL,
kullanildigiyerlerId int  NULL,
TereyagiId int NULL 
CONSTRAINT [PK_ tbl_kullanildigiyerlerTereyagi]PRIMARY  KEY CLUSTERED (
[id] 
)
) 
go


create table tbl_fabrikaSut(
id int IDENTITY (1,1)NOT NULL,
fabrikaId int  NULL,
sutId int NULL 
CONSTRAINT [PK_ tbl_fabrikaSut]PRIMARY  KEY CLUSTERED (
[id] 
)
) 
go





create table tbl_Personelfabrika(
id int IDENTITY (1,1)NOT NULL,
fabrikaId int  NULL,
PersonelId int NULL 
CONSTRAINT [PK_  tbl_Personelfabrika]PRIMARY  KEY CLUSTERED (
[id] 
)
) 
go



create table tbl_dagitimfabrika(
id int IDENTITY (1,1)NOT NULL,
fabrikaId int  NULL,
dagitimId int NULL 
CONSTRAINT [PK_ tbl_dagitimfabrika]PRIMARY  KEY CLUSTERED (
[id] 
)
) 
go




create table tbl_subedagitim(
id int IDENTITY (1,1)NOT NULL,
dagatimId int  NULL,
subeId int NULL 
CONSTRAINT [PK_  tbl_subedagitim]PRIMARY  KEY CLUSTERED (
[id] 
)
) 
go









create table tbl_satisbilgilerisube(
id int IDENTITY (1,1)NOT NULL,
satisbilgileriId int  NULL,
subeId int NULL 
CONSTRAINT [PK_  tbl_satisbilgilerisube]PRIMARY  KEY CLUSTERED (
[id] 
)
) 
go



create table tbl_satilanurunsatisbilgileri(
id int IDENTITY (1,1)NOT NULL,
satisbilgileriId int  NULL,
satilanurunId int NULL 
CONSTRAINT [PK_  tbl_satilanurunsatisbilgileri]PRIMARY  KEY CLUSTERED (
[id] 
)
) 

go



create table tbl_kalanurunsatisbilgileri(
id int IDENTITY (1,1)NOT NULL,
satisbilgileriId int  NULL,
kalanurunId int NULL 
CONSTRAINT [PK_  tbl_kalanurunsatisbilgileri]PRIMARY  KEY CLUSTERED (
[id] 
)
) 

go



create table tbl_ihtiyacolanurunsatisbilgileri(
id int IDENTITY (1,1)NOT NULL,
satisbilgileriId int  NULL,
ihtiyacolanurunnId int NULL 
CONSTRAINT [PK_  tbl_ihtiyacolanurunsatisbilgileri]PRIMARY  KEY CLUSTERED (
[id] 
)
) 

go


insert into tbl_Besin values('KURU YONCA',null)
insert into tbl_Besin values('BUĞDAY SAMANI',null)
insert into tbl_Besin values('MISIR SİLAJI',null)
insert into tbl_Besin values(' PROTEİN FABRİKA YEM',null)
insert into tbl_Besin values(' ARPA KIRMASI',null)
insert into tbl_Beslenme values('10.11.2022')
insert into tbl_Beslenme values('11.11.2022')
insert into tbl_Beslenme values('12.11.2022')
insert into tbl_Beslenme values('13.11.2022')
insert into tbl_Beslenme values('14.11.2022')
insert into tbl_BeslenmeGorevli values ('ali','10.11.2022')
insert into tbl_BeslenmeGorevli values ('ali','11.11.2022')
insert into tbl_BeslenmeGorevli values ('ece','12.11.2022')
insert into tbl_BeslenmeGorevli values ('ece','13.11.2022')
insert into tbl_BeslenmeGorevli values ('deniz','14.11.2022')
insert into tbl_Asi values ('ŞAP','2.ay,3.ay,9.ay,15.ay,21.ay')
insert into tbl_Asi values ('BRUCELLA','3.ay,7.ay')
insert into tbl_Asi values ('LSD (Lumpy Skin Disease)','4.ay,5.ay,17.ay')
insert into tbl_Asi values ('BRD (Bovine Respiratory Disease)','17.gün,45.gün,7.5 ay')
insert into tbl_Asi values ('CLOSTRIDIAL AŞILAR','17.gün,45.gün,20.ay')
insert into tbl_Asi values ('BVD','12.ay,13.ay')
insert into tbl_Asi values ('TRİKOFİTİ (Mantar)','1.gün,14.gün')
insert into tbl_Asi values ('KOMBİNE İSHAL AŞISI (E.coli, Rota ve Coronavirüs)','7 aylık gebe hayvan,8 
aylık gebe hayvan')
insert into tbl_AsiGorevli values('hüseyin','01.02.2021',1,'ŞAP')
insert into tbl_AsiGorevli values('hüseyin','01.03.2021',1,'ŞAP')
insert into tbl_AsiGorevli values('hüseyin','01.09.2021',1,'ŞAP')
insert into tbl_AsiGorevli values('hüseyin','01.03.2022',1,'ŞAP')
insert into tbl_AsiGorevli values('hüseyin','01.05.2022',1,'ŞAP')
insert into tbl_AsiGorevli values('hüseyinson','01.11.2022',1,'ŞAP')
insert into tbl_AsiGorevli values('hüseyin','01.03.2021',1,'BRUCELLA')
insert into tbl_AsiGorevli values('hüseyin','01.07.2021',1,'BRUCELLA')
insert into tbl_AsiGorevli values('hüseyin','01.04.2021',1,'LSD (Lumpy Skin Disease)')
insert into tbl_AsiGorevli values('hüseyin','01.03.2022',1,'LSD (Lumpy Skin Disease)')
insert into tbl_AsiGorevli values('hüseyin','01.05.2022',1,'LSD (Lumpy Skin Disease)')
insert into tbl_AsiGorevli values('hüseyin','17.01.2021',1,'BRD (Bovine Respiratory Disease)')
insert into tbl_AsiGorevli values('hüseyin','15.02.2021',1,'BRD (Bovine Respiratory Disease)')
insert into tbl_AsiGorevli values('hüseyin','15.07.2021',1,'BRD (Bovine Respiratory Disease)')
insert into tbl_AsiGorevli values('hüseyin','17.01.2021',1,'CLOSTRIDIAL AŞILAR')
insert into tbl_AsiGorevli values('hüseyin','15.02.2021',1,'CLOSTRIDIAL AŞILAR')
insert into tbl_AsiGorevli values('hüseyin','01.08.2022',1,'CLOSTRIDIAL AŞILAR')
insert into tbl_AsiGorevli values('hüseyin','12.01.2021',1,'BVD')
insert into tbl_AsiGorevli values('hüseyin','13.08.2021',1,'BVD')
insert into tbl_AsiGorevli values('hüseyin','01.01.2021',1,'TRİKOFİTİ (Mantar)')
insert into tbl_AsiGorevli values('hüseyin','14.08.2021',1,'TRİKOFİTİ (Mantar)')
insert into tbl_AsiGorevli values('hüseyin',null,1,'KOMBİNE İSHAL AŞISI (E.coli, Rota ve Coronavirüs)')
insert into tbl_AsiGorevli values('hüseyin',null,1,'KOMBİNE İSHAL AŞISI (E.coli, Rota ve Coronavirüs))')
insert into tbl_Hayvan values('inek','dişi',null,null,1)
insert into tbl_Hayvan values('keçi','erkek',null,null,2)
insert into tbl_Hayvan values('koyun','dişi',null,null,3)
insert into tbl_Hayvan values('manda','erkek',null,null,4)
insert into tbl_Sut values(null,'yarimyagli','inek')
insert into tbl_Sut values(null,'tamyagli','inek')
insert into tbl_Sut values(null,'yarimyagli','keçi')
insert into tbl_Sut values(null,'tamyagli','keçi')
insert into tbl_Sut values(null,'yarimyagli','koyun')
insert into tbl_Sut values(null,'tamyagli','koyun')
insert into tbl_Sut values(null,'yarimyagli','manda')
insert into tbl_Sut values(null,'tamyagli','manda')
insert into tbl_kullanimYerleri values('yogurt')
insert into tbl_kullanimYerleri values('tereyagi')
insert into tbl_kullanimYerleri values('peynir')
insert into tbl_kullanimYerleri values('paketsut')
insert into tbl_paketlenenSut values('yarimyagli','inek','karton',null,' buzdolabında 4-
5°C','01.01.2022','01.01.2023',1)
insert into tbl_paketlenenSut values('yarimyagli','keçi','karton',null,' buzdolabında 4-
5°C','01.01.2022','01.01.2023',2)
insert into tbl_paketlenenSut values('tamyagli','inek','cam',null,' buzdolabında 4-
5°C','01.01.2022','01.01.2023',3)
insert into tbl_paketlenenSut values('yarimyagli','keçi','cam',null,' buzdolabında 4-
5°C','01.01.2022','01.01.2023',4)
insert into tbl_paketlenenSut values('yarimyagli','inek','karton',null,' buzdolabında 4-
5°C','01.01.2022','01.01.2023',5)
insert into tbl_paketlenenSut values('yarimyagli','keçi','plastik',null,' buzdolabında 4-
5°C','01.01.2022','01.01.2023',6)
insert into tbl_yogurt values('kaymaklı','inek',null,'buzdolabında +4 ile +6 °C arasında sıcaklıklarda 
saklanmalıdır','01.01.2022','01.01.2023')
insert into tbl_yogurt values('kaymaksız','keçi',null,'buzdolabında +4 ile +6 °C arasında sıcaklıklarda 
saklanmalıdır','01.01.2022','01.01.2023')
insert into tbl_peynir values('lor',null,'','01.01.2022','01.01.2023')
insert into tbl_peynir values('beyaz',null,'2-4 derece','01.01.2022','01.01.2023')
insert into tbl_peynir values('kaşar',null,'2-4 derece','01.01.2022','01.01.2023')
insert into tbl_Tereyagi values('tuzlu',null,null,'01.01.2022','01.01.2023')
insert into tbl_Fabrika values('ss')
insert into tbl_Personel values('ece','yılmaz','05.02.2018','beslenme')
insert into tbl_Personel values('deniz ','yıldız','04.03.2016','beslenme')
insert into tbl_Personel values('hüseyin','yılmaz','01.02.2019','aşı')
insert into tbl_Dagitim values('paketSut','01.11.2022',null,'izmir şube')
insert into tbl_Dagitim values('peynir','01.11.2022',null,'bursa şube')
insert into tbl_Dagitim values('tereyagi','01.11.2022',null,'istanbul şube')
insert into tbl_Dagitim values('yogurt','01.11.2022',null,'aydın şube')
insert into tbl_Sube values('İzmir şube','paketsut',null,'01.11.2022')
insert into tbl_Sube values('bursa şube','peynir',null,'01.11.2022')
insert into tbl_Sube values('istanbul şube','tereyagi',null,'01.11.2022')
insert into tbl_Sube values('aydın','yogurt',null,'01.11.2022')
insert into tbl_satilanUrun values('izmir şube','paketsüt',null,null)
insert into tbl_satilanUrun values('bursa şube','peynir',null,null)
insert into tbl_satilanUrun values('istanbul şube','tereyagi',null,null)
insert into tbl_satilanUrun values('aydın şube','yogurt',null,null)
insert into tbl_ihtiyacOlanUrun values('aydın şube','yogurt',null)
insert into tbl_KalanUrun values('İzmir şube','paketsut',null)
insert into tbl_KalanUrun values('bursa şube','peynir',null)
insert into tbl_KalanUrun values('istanbul şube','tereyagi',null)
insert into tbl_KalanUrun values('aydın','yogurt',null)

update  tbl_AsiGorevli set Ad='hüseyinson' where ad='hüseyin'
ALTER TABLE tbl_Hayvan
ADD yas int;
UPDATE tbl_hayvan
SET yas =1 WHERE id=4;
ALTER TABLE tbl_Hayvan
ADD gebelikBilgisi nvarchar(10);
ALTER TABLE tbl_Hayvan
ADD gebeliksuresi nvarchar(50);
update  tbl_hayvan set asibilgileri='tam' where hayvantur='keçi'
ALTER TABLE tbl_Hayvan
drop asiBilgileri ;

UPDATE tbl_hayvan
SET gebelikBilgisi='gebe'  WHERE id=3;
UPDATE tbl_hayvan
SET hayvantur='koyun'  WHERE id=3;
ALTER TABLE tbl_asigorevli
ADD hayvantur nvarchar(50);
insert into tbl_AsiGorevli values('hüseyin','01.01.2022',2,'TRİKOFİTİ (Mantar)')
UPDATE tbl_asigorevli
SET hayvantur='koyun'  WHERE uyguladigiHayvanid=1;

update tbl_Hayvan set gebeliksuresi='7 aylık' where hayvanTur='koyun'
alter  table tbl_hayvan add dogumTarihi datetime;
update tbl_Hayvan set dogumTarihi='02.03.2017' where hayvanTur='koyun'
insert into  tbl_AsiGorevli values('hüseyin','02.01.2020',1,'TRİKOFİTİ (Mantar)','inek')
insert into  tbl_AsiGorevli values('hüseyin','18.01.2020',1,'CLOSTRIDIAL AŞILAR','inek')
insert into  tbl_AsiGorevli values('hüseyin','15.01.2020',1,'TRİKOFİTİ (Mantar)','inek')
insert into  tbl_AsiGorevli values('hüseyin','18.01.2020',1,'BRD (Bovine Respiratory Disease)','inek')
insert into  tbl_AsiGorevli values('hüseyin','15.02.2020',1,'BRD (Bovine Respiratory Disease)','inek')
insert into  tbl_AsiGorevli values('hüseyin','15.02.2020',1,'CLOSTRIDIAL AŞILAR','koyun')
insert into  tbl_AsiGorevli values('hüseyin','01.03.2020',1,'şap','inek')
insert into  tbl_AsiGorevli values('hüseyin','01.04.2020',1,'şap','inek')
insert into  tbl_AsiGorevli values('hüseyin','01.04.06.2020',1,'brucella','inek')
insert into  tbl_AsiGorevli values('hüseyin','01.06.2020',1,'LSD (Lumpy Skin Disease)','inek')
insert into  tbl_AsiGorevli values('hüseyin','01.07.2020',1,'LSD (Lumpy Skin Disease)','inek')
insert into  tbl_AsiGorevli values('hüseyin','01.08.2020',1,'brucella','inek')
insert into  tbl_AsiGorevli values('hüseyin','01.10.2020',1,'şap','inek')
insert into  tbl_AsiGorevli values('hüseyin','01.09.2021',1,'CLOSTRIDIAL AŞILAR','inek')
insert into  tbl_AsiGorevli values('hüseyin','16.08.2020',1,'BRD (Bovine Respiratory Disease)','inek')
insert into  tbl_AsiGorevli values('hüseyin','01.02.2021',1,'BVD','inek')
insert into  tbl_AsiGorevli values('hüseyin','01.03.2021',1,'BVD','inek')
insert into  tbl_AsiGorevli values('hüseyin','01.06.2021',1,'LSD (Lumpy Skin Disease)','inek')
insert into  tbl_AsiGorevli values('hüseyin','01.10.2022',1,'şap','inek')




/**********/
insert into  tbl_AsiGorevli values('hüseyin','03.03.2017',2,'TRİKOFİTİ (Mantar)','koyun')
insert into  tbl_AsiGorevli values('hüseyin','19.03.2017',2,'CLOSTRIDIAL AŞILAR','koyun')
insert into  tbl_AsiGorevli values('hüseyin','19.03.2017',2,'TRİKOFİTİ (Mantar)','koyun')
insert into  tbl_AsiGorevli values('hüseyin','19.03.2017',2,'BRD (Bovine Respiratory Disease)','koyun')
insert into  tbl_AsiGorevli values('hüseyin','16.04.2017',2,'BRD (Bovine Respiratory Disease)','koyun')
insert into  tbl_AsiGorevli values('hüseyin','16.04.2017',2,'CLOSTRIDIAL AŞILAR','koyun')

insert into  tbl_AsiGorevli values('hüseyin','02.05.2017',2,'şap','koyun')
insert into  tbl_AsiGorevli values('hüseyin','02.06.2017',2,'şap','koyun')
insert into  tbl_AsiGorevli values('hüseyin','02.06.2017',2,'brucella','koyun')
insert into  tbl_AsiGorevli values('hüseyin','02.07.2017',2,'LSD (Lumpy Skin Disease)','koyun')
insert into  tbl_AsiGorevli values('hüseyin','02.08.2017',2,'LSD (Lumpy Skin Disease)','koyun')
insert into  tbl_AsiGorevli values('hüseyin','02.10.2017',2,'brucella','koyun')
insert into  tbl_AsiGorevli values('hüseyin','02.11.2017',2,'şap','koyun')
insert into  tbl_AsiGorevli values('hüseyin','02.11.2017',2,'CLOSTRIDIAL AŞILAR','koyun')
insert into  tbl_AsiGorevli values('hüseyin','17.10.2017',2,'BRD (Bovine Respiratory Disease)','koyun')
insert into  tbl_AsiGorevli values('hüseyin','02.06.2018',2,'BVD','koyun')
insert into  tbl_AsiGorevli values('hüseyin','02.07.2018',2,'BVD','koyun')
insert into  tbl_AsiGorevli values('hüseyin','02.08.2018',2,'LSD (Lumpy Skin Disease)','koyun')
insert into  tbl_AsiGorevli values('hüseyin','02.11.2018',2,'şap','koyun')
insert into  tbl_AsiGorevli values('hüseyin','27.11.2022',2,'fgf','koyun')

insert into  tbl_AsiGorevli values('hüseyin',Convert(datetime,'25.11.2022',104),2,'KOMBİNE İSHAL AŞISI (E.coli, Rota ve Coronavirüs)','koyun')


delete from tbl_AsiGorevli where asiTuru='KOMBİNE İSHAL AŞISI (E.coli, Rota ve Coronavirüs)'
insert into tbl_Personel 



alter table tbl_birim add personalad nvarchar(250);
alter table tbl_birim add personalsoyad nvarchar(250);

delete from tbl_Personel where Ad='ece'
delete from tbl_Personel where Ad='deniz'
delete from tbl_Personel where Ad='hüseyin'
delete from tbl_Personel where Ad='mert'
ALTER TABLE tbl_personel
DROP COLUMN calistigibirim;
insert into tbl_Personel values('mert','can','01.05.2011')
insert into tbl_Personel values('deniz','yıldız','05.09.2012')
insert into tbl_Personel values('hüeyin','yılmaz','07.08.2016')
insert into tbl_Personel values('ece','yılmaz','03.04.2018')
CREATE table tbl_birim(
id          int IDENTITY(1,1)NOT NULL,
ad nvarchar(250) NULL,
personelad nvarchar(250) NULL,
personelsoyad nvarchar(250) NULL

CONSTRAINT [PK_tbl_birim]PRIMARY KEY CLUSTERED 
(     [id]ASC
)
)
go
create table tbl_birimPersonel(
id int IDENTITY (1,1)NOT NULL,
birimId int  NULL,
personelId int NULL 
CONSTRAINT [PK_tbl_birimPersone]PRIMARY  KEY CLUSTERED (
[id] 
)
) 
go


insert into tbl_birim values('beslenme','ece','yılmaz')
insert into tbl_birim values('beslenme','deniz','yıldız')
insert into tbl_birim values('aşı','hüseyin','yılmaz')
insert into tbl_birim values('fabrika','mert','can')
insert into tbl_birim values('fabrika','deniz','yıldız')
drop table tbl_birim
delete from tbl_birim where id=11



ALTER TABLE tbl_paketlenensut
ADD paketNo int;
ALTER TABLE tbl_Hayvan
ADD HayvanNo int;