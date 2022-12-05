/*CREATE FUNCTION DOCSO12(@so bigint)
RETURNS nvarchar(200) AS
BEGIN
	DECLARE @a nvarchar(50), @b nvarchar(50), @c nvarchar(50), 
			@d nvarchar(50), @doc nvarchar(200), @trieu int, @nghin int, @donvi int

	IF @so = 0 SET @doc = 'không'
	ELSE BEGIN
		IF @so/1000000000 = 0 SET @a =''
		ELSE SET @a = dbo.DOCSO3(@so/1000000000) + ' tỷ'

		SET @trieu = @so%1000000000
		IF @trieu/1000000 = 0 SET @b = ''
		ELSE SET @b = dbo.DOCSO3(@trieu/1000000) + ' triệu'

		SET @nghin = @trieu%1000000
		IF @nghin/1000 = 0 SET @c = ''
		ELSE SET @c = dbo.DOCSO3(@nghin/1000) + ' nghìn'

		SET @donvi = @nghin%1000
		IF @so%1000 = 0 SET @d = ''
		ELSE SET @d = dbo.DOCSO3(@donvi)

		SET @doc = @a + ' ' + @b + ' ' + @c + ' ' + @d
		END
RETURN @doc
END*/

SELECT dbo.DOCSO12(6988412697)
SELECT dbo.DOCSO12(598763142985)