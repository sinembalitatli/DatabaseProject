
/*tüm süt bilgilerini geitren sorgu*/
select * from tbl_Sut
/*en son asi yapilan hayvanin idsi*/
select top 1 id from tbl_AsiGorevli order by AsiTarihi desc
/*son yapılan aşı bilgileri*/
select top 1  *  from tbl_AsiGorevli order by AsiTarihi desc
/*2021 yılında yapılan aşılar*/

select * from tbl_AsiGorevli where YEAR(AsiTarihi)=2021
/*aşı türlerine göre ayrı ayrı toplam aşı sayısı*/
select asiTuru ,toplamasisayisi=COUNT(*) from tbl_AsiGorevli group by asiTuru--:)
select * from dbo.tbl_Asi
/*aşıtürü ve uygulanması gereken yaş aralıklarını getiren sorgu*/
select tbl_asi.asiTuru,uygulanmasıgerekenyas from tbl_AsiGorevli inner join tbl_asi on tbl_AsiGorevli.id=tbl_asi.id

/*sorgu*/
select asiTuru from tbl_asiGorevli
/*LSD aşı türüne ait aşıların uygulanacak yaş aralıkları*/
select tbl_AsiGorevli.asiTuru,uygulanmasıgerekenyas from tbl_AsiGorevli inner join tbl_asi on tbl_AsiGorevli.id=tbl_asi.id where  tbl_AsiGorevli.asiTuru='LSD (Lumpy Skin Disease)'
/*aşıların türlerine ait isimler*/
select distinct asituru from tbl_asi
/*üretim tarihi bulunan peynirlerin çeşitleri*/
select cesit from tbl_peynir where uretimtarihi  in(select uretimTarihi from tbl_peynir where uretimTarihi is not null)

/*LSD (Lumpy Skin Disease) asi turunun yapıldığı tarihler*/
select  tbl_asi.asiTuru,AsiTarihi from  tbl_Asi inner join tbl_AsiGorevli 
on tbl_Asi.asiTuru=tbl_AsiGorevli.asiTuru where tbl_Asi.asiTuru='LSD (Lumpy Skin Disease) '

/*gebelik bilgisi bulunan hayvanların yapıldığı  aşılar*/
select * from tbl_AsiGorevli  inner join tbl_Hayvan on tbl_AsiGorevli.hayvantur=tbl_Hayvan.hayvanTur where  tbl_hayvan.gebelikbilgisi is not null

/* ece isimli  personelin çalıştığı birim*/
select calistigibirim from  tbl_Personel where Ad like '%ece%'

/*hayvantüründe henüz aşı bilgisi olmayan hayvanların listesi*/
select * from tbl_Hayvan where hayvanTur not  in(select hayvanTur from tbl_AsiGorevli)
select tbl_Hayvan.hayvantur from tbl_Hayvan left join tbl_AsiGorevli on tbl_Hayvan.hayvanTur= tbl_AsiGorevli.hayvantur where tbl_AsiGorevli.hayvantur is nul



/*hayvantüründe henüz aşı bilgisi olmayan hayvanların listesi*/
select * from tbl_Hayvan where hayvanTur not  in(select hayvanTur from tbl_AsiGorevli)
select tbl_Hayvan.hayvantur from tbl_Hayvan left join tbl_AsiGorevli on tbl_Hayvan.hayvanTur= tbl_AsiGorevli.hayvantur where tbl_AsiGorevli.hayvantur is null
select tbl_Hayvan.hayvantur  from tbl_AsiGorevli right join tbl_Hayvan on tbl_AsiGorevli.hayvantur= tbl_Hayvan.hayvanTur where tbl_AsiGorevli.hayvantur is null

/*çalıştığı birime göre birden fazla birimde çalışan personallerin çalıştığı birimler*/
select tbl_birim.ad ,sayisi=COUNT(*) from tbl_birim inner join tbl_Personel on tbl_birim.personelad=tbl_Personel.Ad  group by tbl_birim.ad having COUNT(*)>1

/*soyadi  yıldız olan personeli aşı birimine ekle*/
insert into tbl_birim values('asi',(select ad from tbl_Personel where soyad='yıldız'),'yıldız')








