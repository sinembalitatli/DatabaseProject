CREATE VIEW view_SutBilgileri AS
SELECT 
Id=TS.id,
kullanimyeri=TSKY.kullanimyeri,
paketSut=TPS.id,
hayvan=TH.id 
FROM tbl_Sut AS TS INNER JOIN tbl_tbl_kullanildigiyerlerSutAS TSKY
ON TS .id=TSKY.id
INNER JOIN tbl_paketlenensutSut TPSS ON TOSV.id=TS.id
INNER JOIN tbl_paketlenenSut AS TPS ON TPSS.id=TPS.id
INNER JOIN tbl_hayvanSut AS THS ON TPS.idVirusId=THS .id
INNER JOIN tbl_hayvan AS TH ON THS.id=TH.id
