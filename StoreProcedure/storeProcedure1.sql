/* SP Açıklama: paketlenen sütlerin otomatik bir numara alması istenmektedir.Bunun için sistem saatini anlık olarak alan ve sistem saatine göre paket numarası üreten bir SP 
oluşturulmuştur.*/  
--SP Create Scripti: 
create procedure SP_GETPaketNo
@PaketNo nvarchar(8)out
as begin
DECLARE @tarih AS DATETIME
SELECT @tarih=GETDATE()
DECLARE @randomChar AS INT
SET @PaketNo=''
IF DATEPART(HOUR,@tarih)<10 
SET @PaketNo='0'+CAST(DATEPART(HOUR,@tarih) AS NVARCHAR(1))
ELSE
SET @PaketNo=CAST(DATEPART(HOUR,@tarih) AS NVARCHAR(2))
IF DATEPART(MINUTE,@tarih)<10 
SET @paketno=@paketno+'0'+CAST(DATEPART(MINUTE,@tarih)
AS NVARCHAR(2))
ELSE
SET @paketno=@paketno+CAST(DATEPART(MINUTE,@tarih)
AS NVARCHAR(2))
IF DATEPART(DAY,@tarih)<10 
SET @paketno=@paketno+'0'+CAST(DATEPART(DAY,@tarih)
AS NVARCHAR(2))
ELSE
SET @paketno=@paketno+CAST(DATEPART(DAY,@tarih)
AS NVARCHAR(2))
IF DATEPART(SECOND,@tarih)<10 
SET @paketno=@paketno+'0'+CAST(DATEPART(SECOND,@tarih)
AS NVARCHAR(2))
ELSE
SET @paketno=@paketno+CAST(DATEPART(SECOND,@tarih)
AS NVARCHAR(2))
return @paketno
END
--ÇALIŞMA:
DECLARE @result AS NVARCHAR(8)
EXEC SP_GETPaketNo @PaketNo=@result out
SELECT @result




