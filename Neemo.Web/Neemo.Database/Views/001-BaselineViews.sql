SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_Category]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [dbo].[vw_Category]
AS
SELECT CategoryID, Category as Title, CreatedDateTime, CreatedByUser, LastModifiedDateTime, LastModifiedByUser, DeletedDateTime, DeletedByUser, EffectiveDateFrom, EffectiveDateTo
FROM   dbo.Category
WHERE Active = 1

' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_CountByBadge]'))
EXEC dbo.sp_executesql @statement = N'CREATE view  [dbo].[vw_CountByBadge]

AS 

SELECT        M.Badge +  '' (''+ convert(nvarchar(8),COUNT(*))+ '')'' AS AvailableForSale
FROM            dbo.Badge AS M INNER JOIN
                         dbo.Vehicle AS V ON M.BadgeID = V.BadgeID INNER JOIN
                         dbo.VehicleListing AS VL ON V.VehicleID = VL.VehicleID
WHERE        (VL.Active = 1) AND (VL.Approved = 1) AND (VL.EffectiveDateFrom > GETDATE()) AND (VL.EffectiveDateTo <= GETDATE() OR
                         VL.EffectiveDateTo IS NULL)
GROUP BY M.Badge



' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_CountByMake]'))
EXEC dbo.sp_executesql @statement = N'
CREATE view  [dbo].[vw_CountByMake]
AS
Select ''Select Make''  AvailableForSale
Union
SELECT        M.Make + '' ('' + CONVERT(nvarchar(8), COUNT(*)) + '')'' AS AvailableForSale
FROM            dbo.Make AS M Left JOIN
                         dbo.Vehicle AS V ON M.MakeID = V.MakeID Left JOIN
                         dbo.VehicleListing AS VL ON V.VehicleID = VL.VehicleID
WHERE        (VL.Active = 1) AND (VL.Approved = 1) AND (VL.EffectiveDateFrom > GETDATE()) AND (VL.EffectiveDateTo <= GETDATE() OR
                         VL.EffectiveDateTo IS NULL)
GROUP BY M.Make





' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_CountByModel]'))
EXEC dbo.sp_executesql @statement = N'CREATE view  [dbo].[vw_CountByModel]

AS 

SELECT        M.Model +  '' (''+ convert(nvarchar(8),COUNT(*))+ '')'' AS AvailableForSale
FROM            dbo.Model AS M INNER JOIN
                         dbo.Vehicle AS V ON M.ModelID = V.ModelID INNER JOIN
                         dbo.VehicleListing AS VL ON V.VehicleID = VL.VehicleID
WHERE        (VL.Active = 1) AND (VL.Approved = 1) AND (VL.EffectiveDateFrom > GETDATE()) AND (VL.EffectiveDateTo <= GETDATE() OR
                         VL.EffectiveDateTo IS NULL)
GROUP BY M.Model



' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_CountBySeries]'))
EXEC dbo.sp_executesql @statement = N'CREATE view  [dbo].[vw_CountBySeries]

AS 

SELECT        M.Series +  '' (''+ convert(nvarchar(8),COUNT(*))+ '')'' AS AvailableForSale
FROM            dbo.Series AS M INNER JOIN
                         dbo.Vehicle AS V ON M.SeriesID = V.SeriesID INNER JOIN
                         dbo.VehicleListing AS VL ON V.VehicleID = VL.VehicleID
WHERE        (VL.Active = 1) AND (VL.Approved = 1) AND (VL.EffectiveDateFrom > GETDATE()) AND (VL.EffectiveDateTo <= GETDATE() OR
                         VL.EffectiveDateTo IS NULL)
GROUP BY M.Series



' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Vw_PartDetails_All]'))
EXEC dbo.sp_executesql @statement = N'

CREATE view  [dbo].[Vw_PartDetails_All]
AS
SELECT DISTINCT 
                         dbo.Part.Part, dbo.Part.CategoryID, dbo.Part.Active, dbo.Category.Category, dbo.Part.PartNo, dbo.Part.PartID, dbo.Part.DefaultPartPhotoID, ISNULL(dbo.PartPhoto.PartPhotoID, 0) AS PartPhotoID, 
                         dbo.PartPrice.Quantity, dbo.PartPrice.Price, dbo.PartPhoto.PhotoName, dbo.Part.CreatedDateTime, dbo.Part.ShortDescription, dbo.Part.Description, dbo.Part.Height, dbo.Part.Width, dbo.Part.Length, 
                         dbo.Part.Weight, CL.Colour, SD.Side, CASE WHEN PartPhotoID = DefaultPartPhotoID THEN ''true'' ELSE ''false'' END AS isDefault
FROM            dbo.Part LEFT OUTER JOIN
                         dbo.Category ON dbo.Part.CategoryID = dbo.Category.CategoryID LEFT OUTER JOIN
                         dbo.PartPrice ON dbo.PartPrice.PartID = dbo.Part.PartID LEFT OUTER JOIN
                         dbo.PartPhoto ON dbo.Part.PartID = dbo.PartPhoto.PartID LEFT OUTER JOIN
                         dbo.Side AS SD ON dbo.Part.SideID = SD.SideID LEFT OUTER JOIN
                         dbo.Colour AS CL ON dbo.Part.ColourID = CL.ColourID
WHERE        (dbo.PartPhoto.PartPhotoID = dbo.Part.DefaultPartPhotoID) OR
                         (dbo.Part.DefaultPartPhotoID IS NULL)






' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_PartFeatures_All]'))
EXEC dbo.sp_executesql @statement = N'CREATE view  [dbo].[vw_PartFeatures_All]
AS
SELECT        S.Side, S.SideID, CT.Category, CT.CategoryID, C.Colour, C.ColourID, P.Part, P.PartNo, P.Height, P.Width, P.Length, P.Weight, F.Feature, PF.PartFeatureID, PF.FeatureID, P.PartID
FROM            dbo.Part AS P INNER JOIN
                         dbo.Category AS CT ON P.CategoryID = CT.CategoryID INNER JOIN
                         dbo.PartFeature AS PF ON P.PartID = PF.PartID INNER JOIN
                         dbo.Feature AS F ON PF.FeatureID = F.FeatureID LEFT OUTER JOIN
                         dbo.Side AS S ON P.SideID = S.SideID LEFT OUTER JOIN
                         dbo.Colour AS C ON P.ColourID = C.ColourID




' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Vw_PartPhotos_All]'))
EXEC dbo.sp_executesql @statement = N'
CREATE view  [dbo].[Vw_PartPhotos_All]
AS
SELECT        S.Side, S.SideID, CT.Category, CT.CategoryID, C.Colour
	, C.ColourID, PP.PhotoDetails
	, PP.PhotoPath, PP.PhotoName
	, PP.PartID, PP.PartPhotoID, P.Part, P.PartNo, P.Height, P.Width, P.Length, 
    P.Weight,PP.Active
						 ,Case WHEN PP.PartPhotoID = P.DefaultPartPhotoID THEN 1 ELSE 0  END isDefault
                         FROM Part P Inner Join dbo.PartPhoto AS PP ON P.PartID = PP.PartID INNER JOIN
                         dbo.Category AS CT ON P.CategoryID = CT.CategoryID LEFT OUTER JOIN
                         dbo.Side AS S ON P.SideID = S.SideID LEFT OUTER JOIN
                         dbo.Colour AS C ON P.ColourID = C.ColourID





' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_PartPrice_All]'))
EXEC dbo.sp_executesql @statement = N'CREATE view  [dbo].[vw_PartPrice_All]
AS
SELECT        S.Side, S.SideID, CT.Category, CT.CategoryID, C.Colour, C.ColourID, P.Part, P.PartNo, P.Height, P.Width, P.Length, P.Weight, P.PartID, PP.Quantity, PP.Price, PP.Active
FROM            dbo.Part AS P INNER JOIN
                         dbo.Category AS CT ON P.CategoryID = CT.CategoryID INNER JOIN
                         dbo.PartPrice AS PP ON P.PartID = PP.PartID LEFT OUTER JOIN
                         dbo.Side AS S ON P.SideID = S.SideID LEFT OUTER JOIN
                         dbo.Colour AS C ON P.ColourID = C.ColourID
WHERE        (PP.Active = 1)




' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_productAll]'))
EXEC dbo.sp_executesql @statement = N'



CREATE view  [dbo].[vw_productAll]
AS
SELECT  P.ProductId 
		,Pt.Part as Title 
		--,(SELECT TOP 1 PhotoName FROM PartPhoto pp where pp.PartID = Pt.PartID) AS ImageId
		,(PPT.PhotoName) AS ImageId
		,(CASE P.SoldOut WHEN 1 THEN 0 WHEN 0 THEN 1 END) as IsAvailable
		,w.WreckNo 
		,P.Qty as AvailableQty 
		,P.Active 
		,Pt.PartNo 
		,P.onSpecial 
		,P.Soldout 
		,P.Discount 
		,P.SpecialsNote 
		,P.DisplayonHomePage 
		,P.Featured 
		,P.New 
		,P.TopSeller 
		,P.Deffects 
		,P.DeffectNotes 
		,P.DefaultProductPhotoID 
		,P.PartID 
		,P.WreckID 
		,P.Comment 
		,Pt.ColourID 
		,Pt.CategoryID 
		,Pt.SideID 
		,Pt.Height 
		,Pt.Width 
		,Pt.Weight 
		,w.KeyWord 
		,EZ.EngineSize 
		,EZ.EngineSizeID 
		,FT.FuelType 
		,E.EngineNo 
		,BT.BodyType 
		,CH.ChassisID 
		,CH.ChassisNo 
		,BT.BodyTypeID 
		,E.EngineID 
		,Pt.Length 
		,CCR.CCRating 
		,CCR.CCRatingID 
		,CT.Category 
		,FT.FuelTypeID 
		,SD.Side 
		,CL.Colour 
		,PP.Price 
		,PP.Quantity 
		,Pt.Part
		, P.Qty

FROM	dbo.Product AS P 
		INNER JOIN dbo.Part AS Pt ON P.PartID = Pt.PartID 
		INNER JOIN dbo.Wreck AS w ON P.WreckID = w.WreckID 
		INNER JOIN dbo.CCRating AS CCR ON w.CCRatingID = CCR.CCRatingID 
		INNER JOIN dbo.Category AS CT ON Pt.CategoryID = CT.CategoryID
		INNER JOIN dbo.BodyType AS BT ON w.BodyTypeID = BT.BodyTypeID
		INNER JOIN dbo.Chassis AS CH ON w.ChassisID = CH.ChassisID 
		INNER JOIN dbo.Engine AS E ON w.EngineID = E.EngineID 
		INNER JOIN dbo.EngineSize AS EZ ON w.EngineSizeID = EZ.EngineSizeID 
		INNER JOIN dbo.FuelType AS FT ON w.FuelTypeID = FT.FuelTypeID 
		INNER JOIN dbo.ProductPrice AS PP ON P.ProductId = PP.ProductID  AND (PP.Active = 1)
		LEFT OUTER JOIN dbo.Side AS SD ON Pt.SideID = SD.SideID 
		LEFT OUTER JOIN dbo.Colour AS CL ON Pt.ColourID = CL.ColourID 
		LEFT OUTER JOIN dbo.PartPhoto  AS PPT ON Ppt.PartPhotoID = Pt.DefaultPartPhotoID
						 
WHERE        (PP.Quantity = 1) AND (PP.Active = 1)







' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_productAll_Web]'))
EXEC dbo.sp_executesql @statement = N'
CREATE view  [dbo].[vw_productAll_Web]
AS
SELECT  P.ProductId 
		,Pt.Part AS Title 
		,(PPT.PhotoName) AS ImageId
		,Pt.ShortDescription AS QuickOverview
		,(CASE P.SoldOut WHEN 1 THEN 0 WHEN 0 THEN 1 END) as IsAvailable
		,P.New AS IsNew
		,P.Featured AS IsFeatured
		,P.TopSeller AS IsBestSeller
		,PP.Price
		,P.Qty as AvailableQty 
		,Pt.[Description] 
		,Pt.CreatedDateTime

		,w.WreckNo 		
		,P.Active 
		,Pt.PartNo 
		,P.onSpecial 
		,P.Soldout 
		,P.Discount 
		,P.SpecialsNote 
		,P.Deffects 
		,P.DeffectNotes 
		,P.DefaultProductPhotoID 
		,P.PartID 
		,P.WreckID 
		,P.Comment 
		,Pt.ColourID 
		,Pt.CategoryID 
		,Pt.SideID 
		,Pt.Height 
		,Pt.Width 
		,Pt.Weight 
		,w.KeyWord 
		,EZ.EngineSize 
		,EZ.EngineSizeID 
		,FT.FuelType 
		,E.EngineNo 
		,BT.BodyType 
		,CH.ChassisID 
		,CH.ChassisNo 
		,BT.BodyTypeID 
		,E.EngineID 
		,Pt.Length 
		,CCR.CCRating 
		,CCR.CCRatingID 
		,CT.Category 
		,FT.FuelTypeID 
		,SD.Side 
		,CL.Colour 		 
		,Pt.Part
		,P.Qty
		,mk.Make
		,md.Model
		,wb.WheelBase
		,y.[Year]
		/*
		select * from [vw_productAll_Web]
		*/
FROM	dbo.Product AS P 
		INNER JOIN dbo.Part AS Pt ON P.PartID = Pt.PartID 
		INNER JOIN dbo.Wreck AS w ON P.WreckID = w.WreckID 
		INNER JOIN dbo.Model AS md ON w.ModelID = md.ModelID
		INNER JOIN dbo.Make AS mk ON w.MakeID = mk.MakeID
		INNER JOIN dbo.CCRating AS CCR ON w.CCRatingID = CCR.CCRatingID 
		INNER JOIN dbo.Category AS CT ON Pt.CategoryID = CT.CategoryID
		INNER JOIN dbo.BodyType AS BT ON w.BodyTypeID = BT.BodyTypeID
		INNER JOIN dbo.Chassis AS CH ON w.ChassisID = CH.ChassisID 
		INNER JOIN dbo.Engine AS E ON w.EngineID = E.EngineID 
		INNER JOIN dbo.EngineSize AS EZ ON w.EngineSizeID = EZ.EngineSizeID 
		INNER JOIN dbo.FuelType AS FT ON w.FuelTypeID = FT.FuelTypeID 
		INNER JOIN dbo.ProductPrice AS PP ON P.ProductId = PP.ProductID  AND (PP.Active = 1)

		LEFT OUTER JOIN dbo.Side AS SD ON Pt.SideID = SD.SideID 
		LEFT OUTER JOIN dbo.Colour AS CL ON Pt.ColourID = CL.ColourID 
		LEFT OUTER JOIN dbo.PartPhoto  AS PPT ON Ppt.PartPhotoID = Pt.DefaultPartPhotoID
		LEFT OUTER JOIN dbo.WheelBase  AS wb ON w.WheelBaseID = wb.WheelBaseID
		LEFT OUTER JOIN dbo.[Year]  AS y ON w.YearID = y.YearID
						 
WHERE        (PP.Quantity = 1) AND (PP.Active = 1)

' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_WreckDetails_All]'))
EXEC dbo.sp_executesql @statement = N'
CREATE view   [dbo].[vw_WreckDetails_All]
AS
SELECT        w.WreckNo, w.KeyWord, EZ.EngineSize, FT.FuelType, E.EngineNo, BT.BodyType, CH.ChassisID, CH.ChassisNo, BT.BodyTypeID, E.EngineID, CCR.CCRating, CCR.CCRatingID, CT.Category, CT.CategoryID, 
                         FT.FuelTypeID, SD.Side, CL.Colour, w.WreckID
FROM            dbo.Side AS SD CROSS JOIN
                         dbo.Category AS CT CROSS JOIN
                         dbo.Colour AS CL CROSS JOIN
                         dbo.BodyType AS BT INNER JOIN
                         dbo.CCRating AS CCR INNER JOIN
                         dbo.Wreck AS w ON CCR.CCRatingID = w.CCRatingID ON BT.BodyTypeID = w.BodyTypeID INNER JOIN
                         dbo.Chassis AS CH ON w.ChassisID = CH.ChassisID INNER JOIN
                         dbo.Engine AS E ON w.EngineID = E.EngineID INNER JOIN
                         dbo.EngineSize AS EZ ON w.EngineSizeID = EZ.EngineSizeID INNER JOIN
                         dbo.FuelType AS FT ON w.FuelTypeID = FT.FuelTypeID





' 
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'vw_CountByMake', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "M"
            Begin Extent = 
               Top = 48
               Left = 712
               Bottom = 178
               Right = 921
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "V"
            Begin Extent = 
               Top = 13
               Left = 391
               Bottom = 164
               Right = 600
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "VL"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 335
               Right = 260
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_CountByMake'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'vw_CountByMake', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_CountByMake'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'vw_CountByModel', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "M"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 263
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "V"
            Begin Extent = 
               Top = 6
               Left = 301
               Bottom = 136
               Right = 526
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "VL"
            Begin Extent = 
               Top = 6
               Left = 564
               Bottom = 136
               Right = 802
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_CountByModel'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'vw_CountByModel', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_CountByModel'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'Vw_PartDetails_All', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Part"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 247
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Category"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 247
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PartPrice"
            Begin Extent = 
               Top = 270
               Left = 38
               Bottom = 400
               Right = 247
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SD"
            Begin Extent = 
               Top = 534
               Left = 38
               Bottom = 664
               Right = 247
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CL"
            Begin Extent = 
               Top = 666
               Left = 38
               Bottom = 796
               Right = 247
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PartPhoto"
            Begin Extent = 
               Top = 402
               Left = 38
               Bottom = 532
               Right = 247
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 22
         Width = 284
         Width = 1500
         Width = 1500
         Width' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Vw_PartDetails_All'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'Vw_PartDetails_All', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 4470
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 4620
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Vw_PartDetails_All'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'Vw_PartDetails_All', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Vw_PartDetails_All'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'vw_PartFeatures_All', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "P"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 247
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "C"
            Begin Extent = 
               Top = 262
               Left = 584
               Bottom = 392
               Right = 793
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CT"
            Begin Extent = 
               Top = 143
               Left = 1154
               Bottom = 273
               Right = 1363
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "S"
            Begin Extent = 
               Top = 266
               Left = 883
               Bottom = 396
               Right = 1092
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PF"
            Begin Extent = 
               Top = 0
               Left = 384
               Bottom = 130
               Right = 593
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "F"
            Begin Extent = 
               Top = 191
               Left = 140
               Bottom = 321
               Right = 349
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Wid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_PartFeatures_All'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'vw_PartFeatures_All', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'th = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_PartFeatures_All'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'vw_PartFeatures_All', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_PartFeatures_All'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'Vw_PartPhotos_All', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "P"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 343
               Right = 247
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PP"
            Begin Extent = 
               Top = 208
               Left = 825
               Bottom = 436
               Right = 1034
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "C"
            Begin Extent = 
               Top = 257
               Left = 405
               Bottom = 387
               Right = 614
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CT"
            Begin Extent = 
               Top = 144
               Left = 731
               Bottom = 274
               Right = 940
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "S"
            Begin Extent = 
               Top = 72
               Left = 1022
               Bottom = 202
               Right = 1231
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
E' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Vw_PartPhotos_All'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'Vw_PartPhotos_All', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'nd
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Vw_PartPhotos_All'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'Vw_PartPhotos_All', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Vw_PartPhotos_All'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'vw_PartPrice_All', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "P"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 247
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CT"
            Begin Extent = 
               Top = 178
               Left = 981
               Bottom = 308
               Right = 1190
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "S"
            Begin Extent = 
               Top = 6
               Left = 1026
               Bottom = 136
               Right = 1235
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "C"
            Begin Extent = 
               Top = 13
               Left = 310
               Bottom = 143
               Right = 519
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PP"
            Begin Extent = 
               Top = 156
               Left = 337
               Bottom = 343
               Right = 546
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_PartPrice_All'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'vw_PartPrice_All', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_PartPrice_All'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'vw_PartPrice_All', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_PartPrice_All'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'vw_productAll', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Pt"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 247
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "w"
            Begin Extent = 
               Top = 270
               Left = 38
               Bottom = 400
               Right = 247
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PP"
            Begin Extent = 
               Top = 402
               Left = 38
               Bottom = 532
               Right = 247
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "P"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 250
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_productAll'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'vw_productAll', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' End
         Begin Table = "E"
            Begin Extent = 
               Top = 140
               Left = 916
               Bottom = 270
               Right = 1125
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "EZ"
            Begin Extent = 
               Top = 270
               Left = 804
               Bottom = 400
               Right = 1013
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "FT"
            Begin Extent = 
               Top = 270
               Left = 1051
               Bottom = 400
               Right = 1260
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "SD"
            Begin Extent = 
               Top = 219
               Left = 282
               Bottom = 349
               Right = 491
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CL"
            Begin Extent = 
               Top = 200
               Left = 548
               Bottom = 330
               Right = 757
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PP"
            Begin Extent = 
               Top = 200
               Left = 501
               Bottom = 330
               Right = 710
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_productAll'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'vw_productAll', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_productAll'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'vw_WreckDetails_All', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "w"
            Begin Extent = 
               Top = 0
               Left = 0
               Bottom = 130
               Right = 209
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CCR"
            Begin Extent = 
               Top = 6
               Left = 782
               Bottom = 136
               Right = 991
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CT"
            Begin Extent = 
               Top = 6
               Left = 1029
               Bottom = 136
               Right = 1238
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "BT"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 247
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CH"
            Begin Extent = 
               Top = 138
               Left = 285
               Bottom = 268
               Right = 494
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "E"
            Begin Extent = 
               Top = 138
               Left = 532
               Bottom = 268
               Right = 741
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "EZ"
            Begin Extent = 
               Top = 138
               Left = 779
               Bottom = 268
               Right = 988
            End
            DisplayFlags = 280
            TopColumn = 0
        ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_WreckDetails_All'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'vw_WreckDetails_All', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' End
         Begin Table = "FT"
            Begin Extent = 
               Top = 138
               Left = 1026
               Bottom = 268
               Right = 1235
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SD"
            Begin Extent = 
               Top = 270
               Left = 38
               Bottom = 400
               Right = 247
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CL"
            Begin Extent = 
               Top = 270
               Left = 285
               Bottom = 400
               Right = 494
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_WreckDetails_All'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'vw_WreckDetails_All', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_WreckDetails_All'
GO
