SELECT [EV_NO]
      ,[LA_NO]
      ,[BU_NO]
      ,[EOO_DENOMINATOR]
      ,[EOO_NUMERATOR]
      ,[STATUS]
  FROM [MAPLB] order by EV_NO;

SELECT [EV_NO], COUNT(DISTINCT [LA_NO] + ',' + [BU_NO]) AS [COUNT]
FROM [MAPLB]
GROUP BY [EV_NO]
HAVING COUNT(DISTINCT [LA_NO] + ',' + [BU_NO]) > 1;

