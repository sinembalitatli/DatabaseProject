CREATE database DBsutFabrikasi5
go 
use DBsutFabrikasi5
go 
create table tbl_Besin(
id          int IDENTITY(1,1)NOT NULL,
besinCesidi nvarchar(250) NULL,
besinMiktari int NULL

CONSTRAINT [PK_tbl_Besin]PRIMARY KEY CLUSTERED 
(     [id]ASC
)
)
go
create table tbl_Beslenme(
id             int IDENTITY(1,1)NOT NULL,
beslenmeTarihi datetime NULL,
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
asiTuru nvarchar(250)NULL,
uygulanmasıgerekenyas nvarchar(250)NULL


CONSTRAINT [PK_tbl_Asi]PRIMARY KEY CLUSTERED
([id]ASC
))
GO

CREATE TABLE tbl_AsiGorevli(
id int IDENTITY (1,1)NOT NULL,
Ad nvarchar (250),
AsiTarihi datetime NULL,
uyguladigiHayvanid int,
asiTuru nvarchar(250)
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
toplamMiktar int NULL,
sutYagCesidi nvarchar(250)NULL,
sutCesidi nvarchar(250) NULL,
CONSTRAINT [PK_tbl_Sut]PRIMARY KEY CLUSTERED 
([id]asc
))go
create table tbl_kullanimYerleri(
id int IDENTITY (1,1)NOT NULL,
kullanimYeri nvarchar(250)NULL

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
dagitilanMiktar int NULL,
gonderilenSube nvarchar (250)NULL


CONSTRAINT [PK_tbl_Dagitim]PRIMARY KEY CLUSTERED
([id]asc
))
go
create table tbl_Sube(
id int IDENTITY (1,1)NOT NULL,
Ad nvarchar (250),
alinanUrunCesit nvarchar(250)NULL,
alinanMiktar int NULL,
alinanTarih datetime null,
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



