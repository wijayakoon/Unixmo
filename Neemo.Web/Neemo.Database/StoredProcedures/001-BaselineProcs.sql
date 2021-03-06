SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AncapRating_Get]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[AncapRating_Get]
		   @AncapRatingID int
		   ,@AncapRating nvarchar(100)
		   ,@Status nvarchar(20)
		   ,@Usage Nvarchar(20)
           
AS
Declare @Active bit
IF @Status = ''Active''
	BEGIN
		SET @Active = 1
	END
ELSE
	BEGIN
		SET @Active = 0
	END
--ENDIF		
Set @AncapRating = ''%'' + @AncapRating +''%''

IF @Usage =''PopulateDDL''
	BEGIN		
		Select AncapRating,AncapRatingID 
		From AncapRating
			Where (Active = @Active OR @Status = ''All'')
			AND (AncapRatingID = @AncapRatingID OR @AncapRatingID =0)
			AND (AncapRating = @AncapRating OR @AncapRating Is Null)
		Union 
		Select '' Please Select AncapRating'' AncapRating , 0  AncapRatingID
			Order by AncapRating
		Return
	END
--ENDIF
IF @Usage = ''SearchByID''
	BEGIN
		Select AncapRating,AncapRatingID 
		From AncapRating			
			WHERE (AncapRatingID = @AncapRatingID)			
		Return
	END
--ENDIF

IF @Usage = ''SearchByName''
	BEGIN

		Select AncapRating,AncapRatingID 
		From AncapRating			
			WHERE (AncapRating like @AncapRating)			
		Return
	END
--ENDIF



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AncapRating_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[AncapRating_Insert]
		   @AncapRating nvarchar(100)
           ,@Image nvarchar(100)
           ,@EffectiveDateFrom Datetime
AS
INSERT INTO [dbo].[AncapRating]
           ([AncapRating]
           ,[Image]           
           ,[EffectiveDateFrom])           
     VALUES
           (
		   @AncapRating
           ,@Image
           ,@EffectiveDateFrom)
           


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AncapRating_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[AncapRating_Update]
@AncapRatingID int
,@AncapRating nvarchar(100)
,@Image nvarchar(100)
,@EffectiveDateFrom datetime
,@EffectiveDateTo DateTime
,@Active bit

AS
UPDATE [dbo].[AncapRating]
   SET [AncapRating] = @AncapRating
      ,[Image] = @Image
      ,[Active] = @Active
      ,[LastModifiedDateTime] = getdate()      
      ,[EffectiveDateFrom] = @EffectiveDateFrom
      ,[EffectiveDateTo] = @EffectiveDateTo
 WHERE AncapRatingID =@AncapRatingID


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Badge_Get]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[Badge_Get]
		   @BadgeID int
		   ,@Badge nvarchar(100)
		   ,@Status nvarchar(20)
		   ,@Usage Nvarchar(20)
           
AS
Declare @Active bit
IF @Status = ''Active''
	BEGIN
		SET @Active = 1
	END
ELSE
	BEGIN
		SET @Active = 0
	END
--ENDIF		
Set @Badge = ''%'' + @Badge +''%''

IF @Usage =''PopulateDDL''
	BEGIN		
		Select Badge,BadgeID 
		From Badge
			Where (Active = @Active OR @Status = ''All'')
			AND (BadgeID = @BadgeID OR @BadgeID =0)
			AND (Badge = @Badge OR @Badge Is Null)
		Union 
		Select '' Please Select Badge'' Badge , 0  BadgeID
			Order by Badge
		Return
	END
--ENDIF
IF @Usage = ''SearchByID''
	BEGIN
		Select Badge,BadgeID 
		From Badge			
			WHERE (BadgeID = @BadgeID)			
		Return
	END
--ENDIF

IF @Usage = ''SearchByName''
	BEGIN

		Select Badge,BadgeID 
		From Badge			
			WHERE (Badge like @Badge)			
		Return
	END
--ENDIF



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Badge_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[Badge_Insert]
		   @Badge nvarchar(100)
           ,@Image nvarchar(100)
           ,@EffectiveDateFrom Datetime
AS
INSERT INTO [dbo].[Badge]
           ([Badge]
           ,[Image]           
           ,[EffectiveDateFrom])           
     VALUES
           (
		   @Badge
           ,@Image
           ,@EffectiveDateFrom)
           


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Badge_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[Badge_Update]
@BadgeID int
,@Badge nvarchar(100)
,@Image nvarchar(100)
,@EffectiveDateFrom datetime
,@EffectiveDateTo DateTime
,@Active bit

AS
UPDATE [dbo].[Badge]
   SET [Badge] = @Badge
      ,[Image] = @Image
      ,[Active] = @Active
      ,[LastModifiedDateTime] = getdate()      
      ,[EffectiveDateFrom] = @EffectiveDateFrom
      ,[EffectiveDateTo] = @EffectiveDateTo
 WHERE BadgeID =@BadgeID


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BodyType_Get]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[BodyType_Get]
		   @BodyTypeID int
		   ,@BodyType nvarchar(100)
		   ,@Status nvarchar(20)
		   ,@Usage Nvarchar(20)
           
AS
Declare @Active bit
IF @Status = ''Active''
	BEGIN
		SET @Active = 1
	END
ELSE
	BEGIN
		SET @Active = 0
	END
--ENDIF		
Set @BodyType = ''%'' + @BodyType +''%''

IF @Usage =''PopulateDDL''
	BEGIN		
		Select BodyType,BodyTypeID 
		From BodyType
			Where (Active = @Active OR @Status = ''All'')
			AND (BodyTypeID = @BodyTypeID OR @BodyTypeID =0)
			AND (BodyType = @BodyType OR @BodyType Is Null)
		--Union 
		--Select '' Please Select BodyType'' BodyType , 0  BodyTypeID
			Order by BodyType
		Return
	END
--ENDIF
IF @Usage = ''SearchByID''
	BEGIN
		Select BodyType,BodyTypeID 
		From BodyType			
			WHERE (BodyTypeID = @BodyTypeID)			
		Return
	END
--ENDIF

IF @Usage = ''SearchByName''
	BEGIN

		Select BodyType,BodyTypeID 
		From BodyType			
			WHERE (BodyType like @BodyType)			
		Return
	END
--ENDIF



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BodyType_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[BodyType_Insert]
		   @BodyType nvarchar(100)
           ,@Image nvarchar(100)
           ,@EffectiveDateFrom Datetime
AS
INSERT INTO [dbo].[BodyType]
           ([BodyType]
           ,[Image]           
           ,[EffectiveDateFrom])           
     VALUES
           (
		   @BodyType
           ,@Image
           ,@EffectiveDateFrom)
           


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BodyType_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[BodyType_Update]
@BodyTypeID int
,@BodyType nvarchar(100)
,@Image nvarchar(100)
,@EffectiveDateFrom datetime
,@EffectiveDateTo DateTime
,@Active bit

AS
UPDATE [dbo].[BodyType]
   SET [BodyType] = @BodyType
      ,[Image] = @Image
      ,[Active] = @Active
      ,[LastModifiedDateTime] = getdate()      
      ,[EffectiveDateFrom] = @EffectiveDateFrom
      ,[EffectiveDateTo] = @EffectiveDateTo
 WHERE BodyTypeID =@BodyTypeID



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category_Get]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[Category_Get]
		   @CategoryID int
		   ,@Category nvarchar(100)
		   ,@Status nvarchar(20)
		   ,@Usage Nvarchar(20)
           
AS
Declare @Active bit
IF @Status = ''Active''
	BEGIN
		SET @Active = 1
	END
ELSE
	BEGIN
		SET @Active = 0
	END
--ENDIF		
Set @Category = ''%'' + @Category +''%''

IF @Usage =''PopulateDDL''
	BEGIN		
		Select Category,CategoryID 
		From Category
			Where (Active = @Active OR @Status = ''All'')
			AND (CategoryID = @CategoryID OR @CategoryID =0)
			AND (Category = @Category OR @Category Is Null)
		Union 
		Select '' Please Select Category'' Category , 0  CategoryID
			Order by Category
		Return
	END
--ENDIF
IF @Usage = ''SearchByID''
	BEGIN
		Select Category,CategoryID 
		From Category			
			WHERE (CategoryID = @CategoryID)			
		Return
	END
--ENDIF

IF @Usage = ''SearchByName''
	BEGIN

		Select Category,CategoryID 
		From Category			
			WHERE (Category like @Category)			
		Return
	END
--ENDIF



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[Category_Insert]
		   @Category nvarchar(100)
           ,@Image nvarchar(100)
           ,@EffectiveDateFrom Datetime
AS
INSERT INTO [dbo].[Category]
           ([Category]
           ,[Image]           
           ,[EffectiveDateFrom])           
     VALUES
           (
		   @Category
           ,@Image
           ,@EffectiveDateFrom)
           




' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[Category_Update]
@CategoryID int
,@Category nvarchar(100)
,@Image nvarchar(100)
,@EffectiveDateFrom datetime
,@EffectiveDateTo DateTime
,@Active bit

AS
UPDATE [dbo].[Category]
   SET [Category] = @Category
      ,[Image] = @Image
      ,[Active] = @Active
      ,[LastModifiedDateTime] = getdate()      
      ,[EffectiveDateFrom] = @EffectiveDateFrom
      ,[EffectiveDateTo] = @EffectiveDateTo
 WHERE CategoryID =@CategoryID




' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CCRating_Get]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


CREATE Procedure [dbo].[CCRating_Get]
		   @CCRatingID int
		   ,@CCRating nvarchar(100)
		   ,@Status nvarchar(20)
		   ,@Usage Nvarchar(20)
           
AS
Declare @Active bit
IF @Status = ''Active''
	BEGIN
		SET @Active = 1
	END
ELSE
	BEGIN
		SET @Active = 0
	END
--ENDIF		
Set @CCRating = ''%'' + @CCRating +''%''

IF @Usage =''PopulateDDL''
	BEGIN		
		Select CCRating,CCRatingID 
		From CCRating
			Where (Active = @Active OR @Status = ''All'')
			AND (CCRatingID = @CCRatingID OR @CCRatingID =0)
			AND (CCRating = @CCRating OR @CCRating Is Null)
		--Union 
		--Select '' Please Select CCRating'' CCRating , 0  CCRatingID
			Order by CCRating
		Return
	END
--ENDIF
IF @Usage = ''SearchByID''
	BEGIN
		Select CCRating,CCRatingID 
		From CCRating			
			WHERE (CCRatingID = @CCRatingID)			
		Return
	END
--ENDIF

IF @Usage = ''SearchByName''
	BEGIN

		Select CCRating,CCRatingID 
		From CCRating			
			WHERE (CCRating like @CCRating)			
		Return
	END
--ENDIF




' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CCRating_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[CCRating_Insert]
		   @CCRating nvarchar(100)
           ,@Image nvarchar(100)
           ,@EffectiveDateFrom Datetime
AS
INSERT INTO [dbo].[CCRating]
           ([CCRating]
           ,[Image]           
           ,[EffectiveDateFrom])           
     VALUES
           (
		   @CCRating
           ,@Image
           ,@EffectiveDateFrom)
           



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CCRating_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[CCRating_Update]
@CCRatingID int
,@CCRating nvarchar(100)
,@Image nvarchar(100)
,@EffectiveDateFrom datetime
,@EffectiveDateTo DateTime
,@Active bit

AS
UPDATE [dbo].[CCRating]
   SET [CCRating] = @CCRating
      ,[Image] = @Image
      ,[Active] = @Active
      ,[LastModifiedDateTime] = getdate()      
      ,[EffectiveDateFrom] = @EffectiveDateFrom
      ,[EffectiveDateTo] = @EffectiveDateTo
 WHERE CCRatingID =@CCRatingID



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Chassis_Get]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[Chassis_Get]
		   @ChassisID int
		   ,@ChassisNo nvarchar(100)
		   ,@Status nvarchar(20)
		   ,@Usage Nvarchar(20)
           
AS
Declare @Active bit
IF @Status = ''Active''
	BEGIN
		SET @Active = 1
	END
ELSE
	BEGIN
		SET @Active = 0
	END
--ENDIF		

Print @Usage
IF @Usage =''PopulateDDL''
	BEGIN		
		Select ChassisNo,ChassisID 
		From Chassis
			Where (Active = @Active OR @Status = ''All'')
			AND (ChassisID = @ChassisID OR @ChassisID =0)
			AND (ChassisNo = @ChassisNo OR @ChassisNo Is Null)
		--Union 
		--Select '' Please Select Chassis'' ChassisNo , 0  ChassisID
			Order by ChassisNo
		Return
	END
--ENDIF
Print ''XX3''
IF @Usage = ''SearchByID''
	BEGIN
	Print ''XX4''
		Select ChassisNo,ChassisID 
		From Chassis			
			WHERE (ChassisID = @ChassisID)			
		Return
	END
--ENDIF

IF @Usage = ''SearchByName''
	BEGIN
	Print ''XX5''
		Select ChassisNo,ChassisID 
		From Chassis			
			WHERE (ChassisNo = @ChassisNo)			
		Return
	END
--ENDIF
Print ''XX6''

' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Chassis_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[Chassis_Insert]
		   @ChassisNo nvarchar(100)
           ,@Image nvarchar(100)
           ,@EffectiveDateFrom Datetime
AS
INSERT INTO [dbo].[Chassis]
           ([ChassisNo]
           ,[Image]           
           ,[EffectiveDateFrom])           
     VALUES
           (
		   @ChassisNo
           ,@Image
           ,@EffectiveDateFrom)
           



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Chassis_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[Chassis_Update]
@ChassisID int
,@ChassisNo nvarchar(100)
,@Image nvarchar(100)
,@EffectiveDateFrom datetime
,@EffectiveDateTo DateTime
,@Active bit

AS
UPDATE [dbo].[Chassis]
   SET [ChassisNo] = @ChassisNo
      ,[Image] = @Image
      ,[Active] = @Active
      ,[LastModifiedDateTime] = getdate()      
      ,[EffectiveDateFrom] = @EffectiveDateFrom
      ,[EffectiveDateTo] = @EffectiveDateTo
 WHERE ChassisID =@ChassisID



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Colour_Get]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[Colour_Get]
		   @ColourID int
		   ,@Colour nvarchar(100)
		   ,@Status nvarchar(20)
		   ,@Usage Nvarchar(20)
           
AS
Declare @Active bit
IF @Status = ''Active''
	BEGIN
		SET @Active = 1
	END
ELSE
	BEGIN
		SET @Active = 0
	END
--ENDIF		
Set @Colour = ''%'' + @Colour +''%''

IF @Usage =''PopulateDDL''
	BEGIN		
		Select Colour,ColourID 
		From Colour
			Where (Active = @Active OR @Status = ''All'')
			AND (ColourID = @ColourID OR @ColourID =0)
			AND (Colour = @Colour OR @Colour Is Null)
		--Union 
		--Select '' Please Select Colour'' Colour , 0  ColourID
			Order by Colour
		Return
	END
--ENDIF
IF @Usage = ''SearchByID''
	BEGIN
		Select Colour,ColourID 
		From Colour			
			WHERE (ColourID = @ColourID)			
		Return
	END
--ENDIF

IF @Usage = ''SearchByName''
	BEGIN

		Select Colour,ColourID 
		From Colour			
			WHERE (Colour like @Colour)			
		Return
	END
--ENDIF



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Colour_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[Colour_Insert]
		   @Colour nvarchar(100)
           ,@Image nvarchar(100)
           ,@EffectiveDateFrom Datetime
AS
INSERT INTO [dbo].[Colour]
           ([Colour]
           ,[Image]           
           ,[EffectiveDateFrom])           
     VALUES
           (
		   @Colour
           ,@Image
           ,@EffectiveDateFrom)
           



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Colour_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[Colour_Update]
@ColourID int
,@Colour nvarchar(100)
,@Image nvarchar(100)
,@EffectiveDateFrom datetime
,@EffectiveDateTo DateTime
,@Active bit

AS
UPDATE [dbo].[Colour]
   SET [Colour] = @Colour
      ,[Image] = @Image
      ,[Active] = @Active
      ,[LastModifiedDateTime] = getdate()      
      ,[EffectiveDateFrom] = @EffectiveDateFrom
      ,[EffectiveDateTo] = @EffectiveDateTo
 WHERE ColourID =@ColourID


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Condition_Get]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[Condition_Get]
		   @ConditionID int
		   ,@Condition nvarchar(100)
		   ,@Status nvarchar(20)
		   ,@Usage Nvarchar(20)
           
AS
Declare @Active bit
IF @Status = ''Active''
	BEGIN
		SET @Active = 1
	END
ELSE
	BEGIN
		SET @Active = 0
	END
--ENDIF		
Set @Condition = ''%'' + @Condition +''%''

IF @Usage =''PopulateDDL''
	BEGIN		
		Select Condition,ConditionID 
		From Condition
			Where (Active = @Active OR @Status = ''All'')
			AND (ConditionID = @ConditionID OR @ConditionID =0)
			AND (Condition = @Condition OR @Condition Is Null)
		Union 
		Select '' Please Select Condition'' Condition , 0  ConditionID
			Order by Condition
		Return
	END
--ENDIF
IF @Usage = ''SearchByID''
	BEGIN
		Select Condition,ConditionID 
		From Condition			
			WHERE (ConditionID = @ConditionID)			
		Return
	END
--ENDIF

IF @Usage = ''SearchByName''
	BEGIN

		Select Condition,ConditionID 
		From Condition			
			WHERE (Condition like @Condition)			
		Return
	END
--ENDIF



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Condition_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[Condition_Insert]
		   @Condition nvarchar(100)
           ,@Image nvarchar(100)
           ,@EffectiveDateFrom Datetime
AS
INSERT INTO [dbo].[Condition]
           ([Condition]
           ,[Image]           
           ,[EffectiveDateFrom])           
     VALUES
           (
		   @Condition
           ,@Image
           ,@EffectiveDateFrom)
           


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Condition_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[Condition_Update]
@ConditionID int
,@Condition nvarchar(100)
,@Image nvarchar(100)
,@EffectiveDateFrom datetime
,@EffectiveDateTo DateTime
,@Active bit

AS
UPDATE [dbo].[Condition]
   SET [Condition] = @Condition
      ,[Image] = @Image
      ,[Active] = @Active
      ,[LastModifiedDateTime] = getdate()      
      ,[EffectiveDateFrom] = @EffectiveDateFrom
      ,[EffectiveDateTo] = @EffectiveDateTo
 WHERE ConditionID =@ConditionID


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cylinder_Get]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[Cylinder_Get]
		   @CylinderID int
		   ,@Cylinder nvarchar(100)
		   ,@Status nvarchar(20)
		   ,@Usage Nvarchar(20)
           
AS
Declare @Active bit
IF @Status = ''Active''
	BEGIN
		SET @Active = 1
	END
ELSE
	BEGIN
		SET @Active = 0
	END
--ENDIF		
Set @Cylinder = ''%'' + @Cylinder +''%''

IF @Usage =''PopulateDDL''
	BEGIN		
		Select Cylinder,CylinderID 
		From Cylinder
			Where (Active = @Active OR @Status = ''All'')
			AND (CylinderID = @CylinderID OR @CylinderID =0)
			AND (Cylinder = @Cylinder OR @Cylinder Is Null)
		Union 
		Select '' Please Select Cylinder'' Cylinder , 0  CylinderID
			Order by Cylinder
		Return
	END
--ENDIF
IF @Usage = ''SearchByID''
	BEGIN
		Select Cylinder,CylinderID 
		From Cylinder			
			WHERE (CylinderID = @CylinderID)			
		Return
	END
--ENDIF

IF @Usage = ''SearchByName''
	BEGIN

		Select Cylinder,CylinderID 
		From Cylinder			
			WHERE (Cylinder like @Cylinder)			
		Return
	END
--ENDIF



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cylinder_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[Cylinder_Insert]
		   @Cylinder nvarchar(100)
           ,@Image nvarchar(100)
           ,@EffectiveDateFrom Datetime
AS
INSERT INTO [dbo].[Cylinder]
           ([Cylinder]
           ,[Image]           
           ,[EffectiveDateFrom])           
     VALUES
           (
		   @Cylinder
           ,@Image
           ,@EffectiveDateFrom)
           


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cylinder_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[Cylinder_Update]
@CylinderID int
,@Cylinder nvarchar(100)
,@Image nvarchar(100)
,@EffectiveDateFrom datetime
,@EffectiveDateTo DateTime
,@Active bit

AS
UPDATE [dbo].[Cylinder]
   SET [Cylinder] = @Cylinder
      ,[Image] = @Image
      ,[Active] = @Active
      ,[LastModifiedDateTime] = getdate()      
      ,[EffectiveDateFrom] = @EffectiveDateFrom
      ,[EffectiveDateTo] = @EffectiveDateTo
 WHERE CylinderID =@CylinderID



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DealType_Get]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[DealType_Get]
		   @DealTypeID int
		   ,@DealType nvarchar(100)
		   ,@Status nvarchar(20)
		   ,@Usage Nvarchar(20)
           
AS
Declare @Active bit
IF @Status = ''Active''
	BEGIN
		SET @Active = 1
	END
ELSE
	BEGIN
		SET @Active = 0
	END
--ENDIF		
Set @DealType = ''%'' + @DealType +''%''

IF @Usage =''PopulateDDL''
	BEGIN		
		Select DealType,DealTypeID 
		From DealType
			Where (Active = @Active OR @Status = ''All'')
			AND (DealTypeID = @DealTypeID OR @DealTypeID =0)
			AND (DealType = @DealType OR @DealType Is Null)
		Union 
		Select '' Please Select DealType'' DealType , 0  DealTypeID
			Order by DealType
		Return
	END
--ENDIF
IF @Usage = ''SearchByID''
	BEGIN
		Select DealType,DealTypeID 
		From DealType			
			WHERE (DealTypeID = @DealTypeID)			
		Return
	END
--ENDIF

IF @Usage = ''SearchByName''
	BEGIN

		Select DealType,DealTypeID 
		From DealType			
			WHERE (DealType like @DealType)			
		Return
	END
--ENDIF



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DealType_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[DealType_Insert]
		   @DealType nvarchar(100)
           ,@Image nvarchar(100)
           ,@EffectiveDateFrom Datetime
AS
INSERT INTO [dbo].[DealType]
           ([DealType]
           ,[Image]           
           ,[EffectiveDateFrom])           
     VALUES
           (
		   @DealType
           ,@Image
           ,@EffectiveDateFrom)
           


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DealType_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[DealType_Update]
@DealTypeID int
,@DealType nvarchar(100)
,@Image nvarchar(100)
,@EffectiveDateFrom datetime
,@EffectiveDateTo DateTime
,@Active bit

AS
UPDATE [dbo].[DealType]
   SET [DealType] = @DealType
      ,[Image] = @Image
      ,[Active] = @Active
      ,[LastModifiedDateTime] = getdate()      
      ,[EffectiveDateFrom] = @EffectiveDateFrom
      ,[EffectiveDateTo] = @EffectiveDateTo
 WHERE DealTypeID =@DealTypeID


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Door_Get]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[Door_Get]
		   @DoorID int
		   ,@Door nvarchar(100)
		   ,@Status nvarchar(20)
		   ,@Usage Nvarchar(20)
           
AS
Declare @Active bit
IF @Status = ''Active''
	BEGIN
		SET @Active = 1
	END
ELSE
	BEGIN
		SET @Active = 0
	END
--ENDIF		
Set @Door = ''%'' + @Door +''%''

IF @Usage =''PopulateDDL''
	BEGIN		
		Select Door,DoorID 
		From Door
			Where (Active = @Active OR @Status = ''All'')
			AND (DoorID = @DoorID OR @DoorID =0)
			AND (Door = @Door OR @Door Is Null)
		Union 
		Select '' Please Select Door'' Door , 0  DoorID
			Order by Door
		Return
	END
--ENDIF
IF @Usage = ''SearchByID''
	BEGIN
		Select Door,DoorID 
		From Door			
			WHERE (DoorID = @DoorID)			
		Return
	END
--ENDIF

IF @Usage = ''SearchByName''
	BEGIN

		Select Door,DoorID 
		From Door			
			WHERE (Door like @Door)			
		Return
	END
--ENDIF



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Door_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[Door_Insert]
		   @Door nvarchar(100)
           ,@Image nvarchar(100)
           ,@EffectiveDateFrom Datetime
AS
INSERT INTO [dbo].[Door]
           ([Door]
           ,[Image]           
           ,[EffectiveDateFrom])           
     VALUES
           (
		   @Door
           ,@Image
           ,@EffectiveDateFrom)
           


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Door_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[Door_Update]
@DoorID int
,@Door nvarchar(100)
,@Image nvarchar(100)
,@EffectiveDateFrom datetime
,@EffectiveDateTo DateTime
,@Active bit

AS
UPDATE [dbo].[Door]
   SET [Door] = @Door
      ,[Image] = @Image
      ,[Active] = @Active
      ,[LastModifiedDateTime] = getdate()      
      ,[EffectiveDateFrom] = @EffectiveDateFrom
      ,[EffectiveDateTo] = @EffectiveDateTo
 WHERE DoorID =@DoorID


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DriveType_Get]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[DriveType_Get]
		   @DriveTypeID int
		   ,@DriveType nvarchar(100)
		   ,@Status nvarchar(20)
		   ,@Usage Nvarchar(20)
           
AS
Declare @Active bit
IF @Status = ''Active''
	BEGIN
		SET @Active = 1
	END
ELSE
	BEGIN
		SET @Active = 0
	END
--ENDIF		
Set @DriveType = ''%'' + @DriveType +''%''

IF @Usage =''PopulateDDL''
	BEGIN		
		Select DriveType,DriveTypeID 
		From DriveType
			Where (Active = @Active OR @Status = ''All'')
			AND (DriveTypeID = @DriveTypeID OR @DriveTypeID =0)
			AND (DriveType = @DriveType OR @DriveType Is Null)
		Union 
		Select '' Please Select DriveType'' DriveType , 0  DriveTypeID
			Order by DriveType
		Return
	END
--ENDIF
IF @Usage = ''SearchByID''
	BEGIN
		Select DriveType,DriveTypeID 
		From DriveType			
			WHERE (DriveTypeID = @DriveTypeID)			
		Return
	END
--ENDIF

IF @Usage = ''SearchByName''
	BEGIN

		Select DriveType,DriveTypeID 
		From DriveType			
			WHERE (DriveType like @DriveType)			
		Return
	END
--ENDIF



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DriveType_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[DriveType_Insert]
		   @DriveType nvarchar(100)
           ,@Image nvarchar(100)
           ,@EffectiveDateFrom Datetime
AS
INSERT INTO [dbo].[DriveType]
           ([DriveType]
           ,[Image]           
           ,[EffectiveDateFrom])           
     VALUES
           (
		   @DriveType
           ,@Image
           ,@EffectiveDateFrom)
           


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DriveType_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[DriveType_Update]
@DriveTypeID int
,@DriveType nvarchar(100)
,@Image nvarchar(100)
,@EffectiveDateFrom datetime
,@EffectiveDateTo DateTime
,@Active bit

AS
UPDATE [dbo].[DriveType]
   SET [DriveType] = @DriveType
      ,[Image] = @Image
      ,[Active] = @Active
      ,[LastModifiedDateTime] = getdate()      
      ,[EffectiveDateFrom] = @EffectiveDateFrom
      ,[EffectiveDateTo] = @EffectiveDateTo
 WHERE DriveTypeID =@DriveTypeID


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Engine_Get]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[Engine_Get]
		   @EngineID int
		   ,@EngineNo nvarchar(100)
		   ,@Status nvarchar(20)
		   ,@Usage Nvarchar(20)
           
AS
Declare @Active bit
IF @Status = ''Active''
	BEGIN
		SET @Active = 1
	END
ELSE
	BEGIN
		SET @Active = 0
	END
--ENDIF		
Set @EngineNo = ''%'' + @EngineNo +''%''

IF @Usage =''PopulateDDL''
	BEGIN		
		Select EngineNo,EngineID 
		From Engine
			Where (Active = @Active OR @Status = ''All'')
			AND (EngineID = @EngineID OR @EngineID =0)
			AND (EngineNo = @EngineNo OR @EngineNo Is Null)
		Union 
		Select '' Please Select EngineNo'' EngineNo , 0  EngineID
			Order by EngineNo
		Return
	END
--ENDIF
IF @Usage = ''SearchByID''
	BEGIN
		Select EngineNo,EngineID 
		From Engine			
			WHERE (EngineID = @EngineID)			
		Return
	END
--ENDIF

IF @Usage = ''SearchByName''
	BEGIN

		Select EngineNo,EngineID 
		From Engine			
			WHERE (EngineNo like @EngineNo)			
		Return
	END
--ENDIF



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Engine_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[Engine_Insert]
		   @EngineNo nvarchar(100)
           ,@Image nvarchar(100)
           ,@EffectiveDateFrom Datetime
AS
INSERT INTO [dbo].[Engine]
           ([EngineNo]
           ,[Image]           
           ,[EffectiveDateFrom])           
     VALUES
           (
		   @EngineNo
           ,@Image
           ,@EffectiveDateFrom)
           



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Engine_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[Engine_Update]
@EngineID int
,@EngineNo nvarchar(100)
,@Image nvarchar(100)
,@EffectiveDateFrom datetime
,@EffectiveDateTo DateTime
,@Active bit

AS
UPDATE [dbo].[Engine]
   SET [EngineNo] = @EngineNo
      ,[Image] = @Image
      ,[Active] = @Active
      ,[LastModifiedDateTime] = getdate()      
      ,[EffectiveDateFrom] = @EffectiveDateFrom
      ,[EffectiveDateTo] = @EffectiveDateTo
 WHERE EngineID =@EngineID



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EngineSize_Get]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[EngineSize_Get]
		   @EngineSizeID int
		   ,@EngineSize nvarchar(100)
		   ,@Status nvarchar(20)
		   ,@Usage Nvarchar(20)
           
AS
Declare @Active bit
IF @Status = ''Active''
	BEGIN
		SET @Active = 1
	END
ELSE
	BEGIN
		SET @Active = 0
	END
--ENDIF		
Set @EngineSize = ''%'' + @EngineSize +''%''

IF @Usage =''PopulateDDL''
	BEGIN		
		Select EngineSize,EngineSizeID 
		From EngineSize
			Where (Active = @Active OR @Status = ''All'')
			AND (EngineSizeID = @EngineSizeID OR @EngineSizeID =0)
			AND (EngineSize = @EngineSize OR @EngineSize Is Null)
		--Union 
		--Select '' Please Select EngineSize'' EngineSize , 0  EngineSizeID
			Order by EngineSize
		Return
	END
--ENDIF
IF @Usage = ''SearchByID''
	BEGIN
		Select EngineSize,EngineSizeID 
		From EngineSize			
			WHERE (EngineSizeID = @EngineSizeID)			
		Return
	END
--ENDIF

IF @Usage = ''SearchByName''
	BEGIN

		Select EngineSize,EngineSizeID 
		From EngineSize			
			WHERE (EngineSize like @EngineSize)			
		Return
	END
--ENDIF



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EngineSize_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[EngineSize_Insert]
		   @EngineSize nvarchar(100)
           ,@Image nvarchar(100)
           ,@EffectiveDateFrom Datetime
AS
INSERT INTO [dbo].[EngineSize]
           ([EngineSize]
           ,[Image]           
           ,[EffectiveDateFrom])           
     VALUES
           (
		   @EngineSize
           ,@Image
           ,@EffectiveDateFrom)
           


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EngineSize_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[EngineSize_Update]
@EngineSizeID int
,@EngineSize nvarchar(100)
,@Image nvarchar(100)
,@EffectiveDateFrom datetime
,@EffectiveDateTo DateTime
,@Active bit

AS
UPDATE [dbo].[EngineSize]
   SET [EngineSize] = @EngineSize
      ,[Image] = @Image
      ,[Active] = @Active
      ,[LastModifiedDateTime] = getdate()      
      ,[EffectiveDateFrom] = @EffectiveDateFrom
      ,[EffectiveDateTo] = @EffectiveDateTo
 WHERE EngineSizeID =@EngineSizeID


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Feature_Get]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[Feature_Get]
		   @FeatureID int
		   ,@Feature nvarchar(100)
		   ,@Status nvarchar(20)
		   ,@Usage Nvarchar(20)
           
AS
Declare @Active bit
IF @Status = ''Active''
	BEGIN
		SET @Active = 1
	END
ELSE
	BEGIN
		SET @Active = 0
	END
--ENDIF		
Set @Feature = ''%'' + @Feature +''%''

IF @Usage =''PopulateDDL''
	BEGIN		
		Select Feature,FeatureID 
		From Feature
			Where (Active = @Active OR @Status = ''All'')
			AND (FeatureID = @FeatureID OR @FeatureID =0)
			AND (Feature = @Feature OR @Feature Is Null)
		Union 
		Select '' Please Select Feature'' Feature , 0  FeatureID
			Order by Feature
		Return
	END
--ENDIF
IF @Usage = ''SearchByID''
	BEGIN
		Select Feature,FeatureID 
		From Feature			
			WHERE (FeatureID = @FeatureID)			
		Return
	END
--ENDIF

IF @Usage = ''SearchByName''
	BEGIN

		Select Feature,FeatureID 
		From Feature			
			WHERE (Feature like @Feature)			
		Return
	END
--ENDIF



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Feature_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[Feature_Insert]
		   @Feature nvarchar(100)
           ,@Image nvarchar(100)
           ,@EffectiveDateFrom Datetime
AS
INSERT INTO [dbo].[Feature]
           ([Feature]
           ,[Image]           
           ,[EffectiveDateFrom])           
     VALUES
           (
		   @Feature
           ,@Image
           ,@EffectiveDateFrom)
           


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Feature_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[Feature_Update]
@FeatureID int
,@Feature nvarchar(100)
,@Image nvarchar(100)
,@EffectiveDateFrom datetime
,@EffectiveDateTo DateTime
,@Active bit

AS
UPDATE [dbo].[Feature]
   SET [Feature] = @Feature
      ,[Image] = @Image
      ,[Active] = @Active
      ,[LastModifiedDateTime] = getdate()      
      ,[EffectiveDateFrom] = @EffectiveDateFrom
      ,[EffectiveDateTo] = @EffectiveDateTo
 WHERE FeatureID =@FeatureID


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FuelType_Get]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[FuelType_Get]
		   @FuelTypeID int
		   ,@FuelType nvarchar(100)
		   ,@Status nvarchar(20)
		   ,@Usage Nvarchar(20)
           
AS
Declare @Active bit
IF @Status = ''Active''
	BEGIN
		SET @Active = 1
	END
ELSE
	BEGIN
		SET @Active = 0
	END
--ENDIF		
Set @FuelType = ''%'' + @FuelType +''%''

IF @Usage =''PopulateDDL''
	BEGIN		
		Select FuelType,FuelTypeID 
		From FuelType
			Where (Active = @Active OR @Status = ''All'')
			AND (FuelTypeID = @FuelTypeID OR @FuelTypeID =0)
			AND (FuelType = @FuelType OR @FuelType Is Null)
		--Union 
		--Select '' Please Select FuelType'' FuelType , 0  FuelTypeID
			Order by FuelType
		Return
	END
--ENDIF
IF @Usage = ''SearchByID''
	BEGIN
		Select FuelType,FuelTypeID 
		From FuelType			
			WHERE (FuelTypeID = @FuelTypeID)			
		Return
	END
--ENDIF

IF @Usage = ''SearchByName''
	BEGIN

		Select FuelType,FuelTypeID 
		From FuelType			
			WHERE (FuelType like @FuelType)			
		Return
	END
--ENDIF



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FuelType_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[FuelType_Insert]
		   @FuelType nvarchar(100)
           ,@Image nvarchar(100)
           ,@EffectiveDateFrom Datetime
AS
INSERT INTO [dbo].[FuelType]
           ([FuelType]
           ,[Image]           
           ,[EffectiveDateFrom])           
     VALUES
           (
		   @FuelType
           ,@Image
           ,@EffectiveDateFrom)
           


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FuelType_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[FuelType_Update]
@FuelTypeID int
,@FuelType nvarchar(100)
,@Image nvarchar(100)
,@EffectiveDateFrom datetime
,@EffectiveDateTo DateTime
,@Active bit

AS
UPDATE [dbo].[FuelType]
   SET [FuelType] = @FuelType
      ,[Image] = @Image
      ,[Active] = @Active
      ,[LastModifiedDateTime] = getdate()      
      ,[EffectiveDateFrom] = @EffectiveDateFrom
      ,[EffectiveDateTo] = @EffectiveDateTo
 WHERE FuelTypeID =@FuelTypeID



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[get_Badges]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[get_Badges]
@MakeID int
,@ModelID int
AS

Select '' Select Badges''  Badges, 0 BadgesID
Union
SELECT        M.Badge + ''(''+ convert(nvarchar(10),count(*)) +'')'' Badge, M.BadgeID
FROM            dbo.Vehicle AS V INNER JOIN
                         dbo.Badge AS M ON V.BadgeID = M.BadgeID
WHERE        (M.Active = 1) 
	AND (V.Active = 1) 
	AND V.MakeID = @MakeID 
	AND V.ModelID = @ModelID
Group by M.Badge , M.BadgeID
order by Badges


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[get_Category]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

create Procedure [dbo].[get_Category]

AS
Select distinct * From Category
	Where Active =1
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Get_ImageList_ByListingHeaderID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


CREATE Procedure [dbo].[Get_ImageList_ByListingHeaderID] 

	-- Add the parameters for the stored procedure here

	@ByListingHeaderID int

AS

BEGIN

	-- SET NOCOUNT ON added to prevent extra result sets from

	-- interfering with SELECT statements.

	SET NOCOUNT ON;

    -- Insert statements for procedure here

	select *,

	(case when (select COUNT(*) from ListingHeader where DefaultImageListID = ImageList.ImageListID and Active = 1) = 1 then 1 else 0 end) ''isdefault''

	 from ImageList	

	where Active = 1 and ListingHeaderID = @ByListingHeaderID

END







' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Get_ImageList_ByPartID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[Get_ImageList_ByPartID] 

	-- Add the parameters for the stored procedure here

	@PartID int

AS

BEGIN

	-- SET NOCOUNT ON added to prevent extra result sets from

	-- interfering with SELECT statements.

	SET NOCOUNT ON;

    -- Insert statements for procedure here

	select *,

	(case when (select COUNT(*) from Part where DefaultPartPhotoID = PP.PartPhotoID and Active = 1) = 1 then 1 else 0 end) ''isdefault''

	 from PartPhoto PP	

	where Active = 1 and PP.PartID = @PartID

END






' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Get_ImageList_ByProductID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[Get_ImageList_ByProductID] 

	-- Add the parameters for the stored procedure here

	@ProductID int

AS

BEGIN

	-- SET NOCOUNT ON added to prevent extra result sets from

	-- interfering with SELECT statements.

	SET NOCOUNT ON;

    -- Insert statements for procedure here

	select *,

	(case when (select COUNT(*) from Product where DefaultProductPhotoID = PP.ProductPhotoID and Active = 1) = 1 then 1 else 0 end) ''isdefault''

	 from ProductPhoto PP	

	where Active = 1 and PP.ProductID = @ProductID

END






' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[get_Makes]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[get_Makes]
AS
Select '' Select Make''  Make, 0 MakeID
Union
SELECT        M.Make + ''(''+ convert(nvarchar(10),count(*)) +'')'' Make, M.MakeID
FROM            dbo.Vehicle AS V INNER JOIN
                         dbo.Make AS M ON V.MakeID = M.MakeID
WHERE        (M.Active = 1) AND (V.Active = 1)
Group by M.Make , M.MakeID
order by Make


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Get_MaxListingHeader]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[Get_MaxListingHeader]   

 -- Add the parameters for the stored procedure here  

  

AS  

BEGIN  

 -- SET NOCOUNT ON added to prevent extra result sets from  

 -- interfering with SELECT statements.  

 SET NOCOUNT ON;  

    -- Insert statements for procedure here  

 SELECT IDENT_CURRENT(''ListingHeader'') + IDENT_INCR(''ListingHeader'')

END 


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[get_Models]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[get_Models]
@MakeID int
AS

Select '' Select Model''  Model, 0 ModelID
Union
SELECT        M.Model + ''(''+ convert(nvarchar(10),count(*)) +'')'' Model, M.ModelID
FROM            dbo.Vehicle AS V INNER JOIN
                         dbo.Model AS M ON V.ModelID = M.ModelID
WHERE        (M.Active = 1) AND (V.Active = 1) AND V.MakeID = @MakeID
Group by M.Model , M.ModelID
order by Model


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[get_NewProducts]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
create Procedure [dbo].[get_NewProducts]

AS
Select distinct P.ProductID,Price,Photoname,Part from Product P 
	Inner Join Part PT on P.PartID = PT.PartID
	Left Join PartPhoto PTP on PT.DefaultPartPhotoID= PTP.PartPhotoID
	Inner Join ProductPrice PP on P.ProductID = PP.ProductID
	Where P.new = 1 and P.Active =1' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[get_OrderDetails]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'




CREATE PROCEDURE [dbo].[get_OrderDetails]
	-- Add the parameters for the stored procedure here
	@GUID nvarchar(100)
	
AS
BEGIN
SELECT     OrderHeader.*,OrderHEader.Totalamount + OrderHeader.TaxTotal TotalInvoice, OrderDetails.UnitPrice, OrderDetails.TotalValue, OrderDetails.Quantity, pt.Part Product, pt.PartNo ProductCode                       
FROM         OrderHeader 
INNER JOIN OrderDetails ON OrderHeader.OrderHeaderID = OrderDetails.OrderHeaderID 
INNER JOIN Product p ON OrderDetails.ProductID = p.ProductID
INNER JOIN Part pt ON p.PartID= pt.PartID
WHERE     (OrderHeader.[GUID] = @GUID)	

END






' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[get_Series]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[get_Series]
@MakeID int
,@ModelID int
,@BadgeID int
AS

Select '' Select Series''  Series, 0 SeriesID
Union
SELECT        M.Series + ''(''+ convert(nvarchar(10),count(*)) +'')'' Series, M.SeriesID
FROM            dbo.Vehicle AS V INNER JOIN
                         dbo.Series AS M ON V.SeriesID = M.SeriesID
WHERE        (M.Active = 1) 
	AND (V.Active = 1) 
	AND V.MakeID = @MakeID 
	AND V.ModelID = @ModelID
	AND V.BadgeID = @BadgeID

Group by M.Series , M.SeriesID
order by Series


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[get_Suburb]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[get_Suburb]

AS

Select '' Select Suburb''  Suburb, 0 SuburbID
Union
SELECT        Suburb + '' ('' + PostCode + '')'', SuburbID From Suburb
Where Active = 1
order by Suburb


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetRegistrationID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[GetRegistrationID]  

@Email varchar(100),
@Password varchar(20)

AS
Select * from Registration 
where 
EmailAddress=@Email and 
UserPassword=@Password and 
Active=1
-------------------------------------





' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GreenRating_Get]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[GreenRating_Get]
		   @GreenRatingID int
		   ,@GreenRating nvarchar(100)
		   ,@Status nvarchar(20)
		   ,@Usage Nvarchar(20)
           
AS
Declare @Active bit
IF @Status = ''Active''
	BEGIN
		SET @Active = 1
	END
ELSE
	BEGIN
		SET @Active = 0
	END
--ENDIF		
Set @GreenRating = ''%'' + @GreenRating +''%''

IF @Usage =''PopulateDDL''
	BEGIN		
		Select GreenRating,GreenRatingID 
		From GreenRating
			Where (Active = @Active OR @Status = ''All'')
			AND (GreenRatingID = @GreenRatingID OR @GreenRatingID =0)
			AND (GreenRating = @GreenRating OR @GreenRating Is Null)
		Union 
		Select '' Please Select GreenRating'' GreenRating , 0  GreenRatingID
			Order by GreenRating
		Return
	END
--ENDIF
IF @Usage = ''SearchByID''
	BEGIN
		Select GreenRating,GreenRatingID 
		From GreenRating			
			WHERE (GreenRatingID = @GreenRatingID)			
		Return
	END
--ENDIF

IF @Usage = ''SearchByName''
	BEGIN

		Select GreenRating,GreenRatingID 
		From GreenRating			
			WHERE (GreenRating like @GreenRating)			
		Return
	END
--ENDIF



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GreenRating_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[GreenRating_Insert]
		   @GreenRating nvarchar(100)
           ,@Image nvarchar(100)
           ,@EffectiveDateFrom Datetime
AS
INSERT INTO [dbo].[GreenRating]
           ([GreenRating]
           ,[Image]           
           ,[EffectiveDateFrom])           
     VALUES
           (
		   @GreenRating
           ,@Image
           ,@EffectiveDateFrom)
           


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GreenRating_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[GreenRating_Update]
@GreenRatingID int
,@GreenRating nvarchar(100)
,@Image nvarchar(100)
,@EffectiveDateFrom datetime
,@EffectiveDateTo DateTime
,@Active bit

AS
UPDATE [dbo].[GreenRating]
   SET [GreenRating] = @GreenRating
      ,[Image] = @Image
      ,[Active] = @Active
      ,[LastModifiedDateTime] = getdate()      
      ,[EffectiveDateFrom] = @EffectiveDateFrom
      ,[EffectiveDateTo] = @EffectiveDateTo
 WHERE GreenRatingID =@GreenRatingID


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Induction_Get]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[Induction_Get]
		   @InductionID int
		   ,@Induction nvarchar(100)
		   ,@Status nvarchar(20)
		   ,@Usage Nvarchar(20)
           
AS
Declare @Active bit
IF @Status = ''Active''
	BEGIN
		SET @Active = 1
	END
ELSE
	BEGIN
		SET @Active = 0
	END
--ENDIF		
Set @Induction = ''%'' + @Induction +''%''

IF @Usage =''PopulateDDL''
	BEGIN		
		Select Induction,InductionID 
		From Induction
			Where (Active = @Active OR @Status = ''All'')
			AND (InductionID = @InductionID OR @InductionID =0)
			AND (Induction = @Induction OR @Induction Is Null)
		Union 
		Select '' Please Select Induction'' Induction , 0  InductionID
			Order by Induction
		Return
	END
--ENDIF
IF @Usage = ''SearchByID''
	BEGIN
		Select Induction,InductionID 
		From Induction			
			WHERE (InductionID = @InductionID)			
		Return
	END
--ENDIF

IF @Usage = ''SearchByName''
	BEGIN

		Select Induction,InductionID 
		From Induction			
			WHERE (Induction like @Induction)			
		Return
	END
--ENDIF



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Induction_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[Induction_Insert]
		   @Induction nvarchar(100)
           ,@Image nvarchar(100)
           ,@EffectiveDateFrom Datetime
AS
INSERT INTO [dbo].[Induction]
           ([Induction]
           ,[Image]           
           ,[EffectiveDateFrom])           
     VALUES
           (
		   @Induction
           ,@Image
           ,@EffectiveDateFrom)
           


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Induction_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[Induction_Update]
@InductionID int
,@Induction nvarchar(100)
,@Image nvarchar(100)
,@EffectiveDateFrom datetime
,@EffectiveDateTo DateTime
,@Active bit

AS
UPDATE [dbo].[Induction]
   SET [Induction] = @Induction
      ,[Image] = @Image
      ,[Active] = @Active
      ,[LastModifiedDateTime] = getdate()      
      ,[EffectiveDateFrom] = @EffectiveDateFrom
      ,[EffectiveDateTo] = @EffectiveDateTo
 WHERE InductionID =@InductionID


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[KiloMeter_Get]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[KiloMeter_Get]
		   @KiloMeterID int
		   ,@KiloMeter nvarchar(100)
		   ,@Status nvarchar(20)
		   ,@Usage Nvarchar(20)
           
AS
Declare @Active bit
IF @Status = ''Active''
	BEGIN
		SET @Active = 1
	END
ELSE
	BEGIN
		SET @Active = 0
	END
--ENDIF		

Print @Usage
IF @Usage =''PopulateDDL''
	BEGIN		
		Select KiloMeter,KiloMeterID 
		From KiloMeter
			Where (Active = @Active OR @Status = ''All'')
			AND (KiloMeterID = @KiloMeterID OR @KiloMeterID =0)
			AND (KiloMeter = @KiloMeter OR @KiloMeter Is Null)
		Union 
		Select '' Please Select KiloMeter'' KiloMeter , 0  KiloMeterID
			Order by KiloMeter
		Return
	END
--ENDIF
Print ''XX3''
IF @Usage = ''SearchByID''
	BEGIN
	Print ''XX4''
		Select KiloMeter,KiloMeterID 
		From KiloMeter			
			WHERE (KiloMeterID = @KiloMeterID)			
		Return
	END
--ENDIF

IF @Usage = ''SearchByName''
	BEGIN
	Print ''XX5''
		Select KiloMeter,KiloMeterID 
		From KiloMeter			
			WHERE (KiloMeter = @KiloMeter)			
		Return
	END
--ENDIF
Print ''XX6''


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[KiloMeter_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[KiloMeter_Insert]
		   @KiloMeter nvarchar(100)
           ,@Image nvarchar(100)
           ,@EffectiveDateFrom Datetime
AS
INSERT INTO [dbo].[KiloMeter]
           ([KiloMeter]
           ,[Image]           
           ,[EffectiveDateFrom])           
     VALUES
           (
		   @KiloMeter
           ,@Image
           ,@EffectiveDateFrom)
           


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[KiloMeter_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[KiloMeter_Update]
@KiloMeterID int
,@KiloMeter nvarchar(100)
,@Image nvarchar(100)
,@EffectiveDateFrom datetime
,@EffectiveDateTo DateTime
,@Active bit

AS
UPDATE [dbo].[KiloMeter]
   SET [KiloMeter] = @KiloMeter
      ,[Image] = @Image
      ,[Active] = @Active
      ,[LastModifiedDateTime] = getdate()      
      ,[EffectiveDateFrom] = @EffectiveDateFrom
      ,[EffectiveDateTo] = @EffectiveDateTo
 WHERE KiloMeterID =@KiloMeterID


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ListingType_Get]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[ListingType_Get]
		   @ListingTypeID int
		   ,@ListingType nvarchar(100)
		   ,@Status nvarchar(20)
		   ,@Usage Nvarchar(20)
           
AS
Declare @Active bit
IF @Status = ''Active''
	BEGIN
		SET @Active = 1
	END
ELSE
	BEGIN
		SET @Active = 0
	END
--ENDIF		
Set @ListingType = ''%'' + @ListingType + ''%''

IF @Usage =''PopulateDDL''
	BEGIN		
		Select ListingType,ListingTypeID 
		From ListingType
			Where (Active = @Active OR @Status = ''All'')
			AND (ListingTypeID = @ListingTypeID OR @ListingTypeID =0)
			AND (ListingType = @ListingType OR @ListingType Is Null)
		Union 
		Select '' Please Select ListingType'' ListingType , 0  ListingTypeID
			Order by ListingType
		Return
	END
--ENDIF
IF @Usage = ''SearchByID''
	BEGIN
		Select ListingType,ListingTypeID 
		From ListingType			
			WHERE (ListingTypeID = @ListingTypeID)			
		Return
	END
--ENDIF

IF @Usage = ''SearchByName''
	BEGIN

		Select ListingType,ListingTypeID 
		From ListingType			
			WHERE (ListingType like @ListingType)			
		Return
	END
--ENDIF



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ListingType_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[ListingType_Insert]
		   @ListingType nvarchar(100)
           ,@Image nvarchar(100)
           ,@EffectiveDateFrom Datetime
AS
INSERT INTO [dbo].[ListingType]
           ([ListingType]
           ,[Image]           
           ,[EffectiveDateFrom])           
     VALUES
           (
		   @ListingType
           ,@Image
           ,@EffectiveDateFrom)
           


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ListingType_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[ListingType_Update]
@ListingTypeID int
,@ListingType nvarchar(100)
,@Image nvarchar(100)
,@EffectiveDateFrom datetime
,@EffectiveDateTo DateTime
,@Active bit

AS
UPDATE [dbo].[ListingType]
   SET [ListingType] = @ListingType
      ,[Image] = @Image
      ,[Active] = @Active
      ,[LastModifiedDateTime] = getdate()      
      ,[EffectiveDateFrom] = @EffectiveDateFrom
      ,[EffectiveDateTo] = @EffectiveDateTo
 WHERE ListingTypeID =@ListingTypeID



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Make_Get]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[Make_Get]
		   @MakeID int
		   ,@Make nvarchar(100)
		   ,@Status nvarchar(20)
		   ,@Usage Nvarchar(20)
           
AS
Declare @Active bit
IF @Status = ''Active''
	BEGIN
		SET @Active = 1
	END
ELSE
	BEGIN
		SET @Active = 0
	END
--ENDIF		
Set @Make = ''%'' + @Make +''%''

IF @Usage =''PopulateDDL''
	BEGIN		
		Select Make,MakeID 
		From Make
			Where (Active = @Active OR @Status = ''All'')
			AND (MakeID = @MakeID OR @MakeID =0)
			AND (Make = @Make OR @Make Is Null)
		--Union 
		--Select '' Please Select Make'' Make , 0  MakeID
			Order by Make
		Return
	END
--ENDIF
IF @Usage = ''SearchByID''
	BEGIN
		Select Make,MakeID 
		From Make			
			WHERE (MakeID = @MakeID)			
		Return
	END
--ENDIF

IF @Usage = ''SearchByName''
	BEGIN

		Select Make,MakeID 
		From Make			
			WHERE (Make like @Make)			
		Return
	END
--ENDIF



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Make_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[Make_Insert]
		   @Make nvarchar(100)
           ,@Image nvarchar(100)
           ,@EffectiveDateFrom Datetime
AS
INSERT INTO [dbo].[Make]
           ([Make]
           ,[Image]           
           ,[EffectiveDateFrom])           
     VALUES
           (
		   @Make
           ,@Image
           ,@EffectiveDateFrom)
           


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Make_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[Make_Update]
@MakeID int
,@Make nvarchar(100)
,@Image nvarchar(100)
,@EffectiveDateFrom datetime
,@EffectiveDateTo DateTime
,@Active bit

AS
UPDATE [dbo].[Make]
   SET [Make] = @Make
      ,[Image] = @Image
      ,[Active] = @Active
      ,[LastModifiedDateTime] = getdate()      
      ,[EffectiveDateFrom] = @EffectiveDateFrom
      ,[EffectiveDateTo] = @EffectiveDateTo
 WHERE MakeID =@MakeID


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Model_Get]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[Model_Get]
		   @ModelID int
		   ,@Model nvarchar(100)
		   ,@Status nvarchar(20)
		   ,@Usage Nvarchar(20)
           
AS
Declare @Active bit
IF @Status = ''Active''
	BEGIN
		SET @Active = 1
	END
ELSE
	BEGIN
		SET @Active = 0
	END
--ENDIF		
Set @Model = ''%'' + @Model +''%''

IF @Usage =''PopulateDDL''
	BEGIN		
		Select Model,ModelID 
		From Model
			Where (Active = @Active OR @Status = ''All'')
			AND (ModelID = @ModelID OR @ModelID =0)
			AND (Model = @Model OR @Model Is Null)
		--Union 
		--Select '' Please Select Model'' Model , 0  ModelID
			Order by Model
		Return
	END
--ENDIF
IF @Usage = ''SearchByID''
	BEGIN
		Select Model,ModelID 
		From Model			
			WHERE (ModelID = @ModelID)			
		Return
	END
--ENDIF

IF @Usage = ''SearchByName''
	BEGIN

		Select Model,ModelID 
		From Model			
			WHERE (Model like @Model)			
		Return
	END
--ENDIF



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Model_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[Model_Insert]
		   @Model nvarchar(100)
           ,@Image nvarchar(100)
           ,@EffectiveDateFrom Datetime
AS
INSERT INTO [dbo].[Model]
           ([Model]
           ,[Image]           
           ,[EffectiveDateFrom])           
     VALUES
           (
		   @Model
           ,@Image
           ,@EffectiveDateFrom)
           


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Model_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[Model_Update]
@ModelID int
,@Model nvarchar(100)
,@Image nvarchar(100)
,@EffectiveDateFrom datetime
,@EffectiveDateTo DateTime
,@Active bit

AS
UPDATE [dbo].[Model]
   SET [Model] = @Model
      ,[Image] = @Image
      ,[Active] = @Active
      ,[LastModifiedDateTime] = getdate()      
      ,[EffectiveDateFrom] = @EffectiveDateFrom
      ,[EffectiveDateTo] = @EffectiveDateTo
 WHERE ModelID =@ModelID


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Part_Get]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[Part_Get]
	@PartID int
	,@Part nvarchar(100)
	,@Status nvarchar(20)
	,@Usage Nvarchar(20)
AS

Declare @Active bit
IF @Status = ''Active''
	BEGIN
		SET @Active = 1
	END
ELSE
	BEGIN
		SET @Active = 0
	END
--ENDIF		
Set @Part = ''%'' + @Part +''%''

IF @Usage =''PopulateDDL''
	BEGIN		
		Select Part,PartID 
		From Part
			Where (Active = @Active OR @Status = ''All'')
			AND (@PartID = @PartID OR @PartID =0)
			AND (Part = @Part OR @Part Is Null)
		Union 
		Select '' Please Select Part'' Part , 0  PartID
			Order by Part
		Return
	END
--ENDIF
IF @Usage = ''SearchByID''
	BEGIN
		Select * 
		from Part P
		inner join PartPhoto PP on P.PartID = PP.PartID
		inner join PartFeature PF on P.PartID =Pf.PartID
		Where P.PartID = @PartID
	END
--ENDIF

IF @Usage = ''SearchByName''
	BEGIN
		Select * 
		from Part P
		Where P.Part Like @Part OR P.KeyWords like @Part 
		Return
	END
--ENDIF

-- exec Part_Get @PartID=0,@Part=N''12'',@Status=N''Active'',@Usage=N''SearchByName''
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Part_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[Part_Insert]
			@CategoryID int
		   ,@colourID int
		   ,@SideID int
           ,@Part nvarchar(Max)
           ,@ShortDescription nvarchar(510)
           ,@KeyWords nvarchar(max)
           ,@Description nvarchar(max)
           ,@PartNo nvarchar(200)
           ,@Height decimal(18,0)
           ,@Width decimal(18,0)
           ,@Length decimal(18,0)
           ,@Weight decimal(18,0)
           --,@Image nvarchar(100)
           --,@ThumbNailPath nvarchar(100)
           --,@ProductpecPath nvarchar(100)
           ,@Active bit
           ,@CreatedDateTime datetime
           ,@CreatedByUser nvarchar(50)
           ,@LastModifiedDateTime datetime
           ,@LastModifiedByUser nvarchar(50)           
       

AS
INSERT INTO [dbo].[Part]
           ([CategoryID]
		   ,ColourID 
		   ,SideID 
           ,[Part]
		   ,ShortDescription
		   ,KeyWords
           ,Description
           ,[PartNo]      
           ,[Height]
           ,[Width]
           ,[Length]
           ,[Weight]
           --,[Image]
           --,[ThumbNailPath]
           --,[ProductpecPath]
           ,[Active]
           ,[CreatedDateTime]
           ,[CreatedByUser]
           ,[LastModifiedDateTime]
           ,[LastModifiedByUser]         )
     VALUES
           (@CategoryID
		   ,@colourID 
		   ,@SideID 
           ,@Part
		   ,@ShortDescription
		   ,@KeyWords
           ,@Description
           ,@PartNo
           ,@Height
           ,@Width
           ,@Length
           ,@Weight
           --,@Image
           --,@ThumbNailPath
           --,@ProductpecPath
           ,@Active
           ,@CreatedDateTime
           ,@CreatedByUser
           ,@LastModifiedDateTime
           ,@LastModifiedByUser)
Select convert(int,@@Identity)






' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Part_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[Part_Update]
			@PartID int
		   ,@CategoryID int
		   ,@colourID int
		   ,@SideID int
           ,@Part nvarchar(max)
		   ,@ShortDescription nvarchar(510)
           ,@KeyWords nvarchar(max)
           ,@Description nvarchar(max)
           ,@PartNo nvarchar(100)
           ,@Height decimal(18,0)
           ,@Width decimal(18,0)
           ,@Length decimal(18,0)
           ,@Weight decimal(18,0)          
           ,@Active bit           
           ,@LastModifiedDateTime datetime
           ,@LastModifiedByUser nvarchar(50)           
           

AS
UPDATE Part SET 
           CategoryID=@CategoryID		   
		   ,ColourID =@ColourID
		   ,SideID =@SideID 
           ,Part=@Part
		   ,ShortDescription = @ShortDescription 
           ,KeyWords = @KeyWords 
           ,Description = @Description
           ,PartNo=@PartNo
           ,Height=@Height
           ,Width=@Width
           ,[Length]=@Length
           ,[Weight]=@Weight          
           ,Active=@Active
           ,LastModifiedDateTime=@LastModifiedDateTime
           ,LastModifiedByUser=@LastModifiedByUser
WHERE PartID = @PartID



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PartFeature_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure  [dbo].[PartFeature_Insert]

			@PartID int,

            @FeatureId int,

            @Active bit

           

AS

INSERT INTO [dbo].[PartFeature]

           ([PartID]

           ,[FeatureID]

           ,Active)

     VALUES

           (@PartID

           ,@FeatureId

           ,@Active)



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PartFeature_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


CREATE Procedure   [dbo].[PartFeature_Update]

	@PartID int,

	@FeatureID int,

	@Active bit



AS

Declare @PartFeatureID int 

Set @PartFeatureID = 0

Select @PartFeatureID  = PartFeatureID From PartFeature where PartID =@PartID AND FeatureID=@FeatureID  

print @PartFeatureID  



IF @PartFeatureID  > 0

BEGIN

	UPDATE PartFeature  SET EffectiveDateFrom =getdate(), Active=@Active where PartFeatureID = @PartFeatureID

	RETURN 0

END



IF @PartFeatureID = 0

BEGIN

	EXEC PartFeature_Insert @PartID,@FeatureID,@Active

	RETURN 0

END





' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PartPhoto_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[PartPhoto_Insert]   
 -- Add the parameters for the stored procedure here  
	 @PartID int,
	 @PhotoName nvarchar(200)   
	 --@CreatedByUser nvarchar(100), 
	 --@EffectiveDateFrom Datetime
AS  
BEGIN  
 -- SET NOCOUNT ON added to prevent extra result sets from  
 -- interfering with SELECT statements.  
 SET NOCOUNT ON;  
  
    -- Insert statements for procedure here  
 insert into PartPhoto  
 (PartID,PhotoName,CreatedDatetime,LastModifiedDateTime,Active)--,CreatedByUser,LastModifiedByUser)  
 values  
 (@PartID,@PhotoName,GETDATE(),GetDate(),1)--,@CreatedByUser,@CreatedByUser)  
 select @@identity
END






' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PartPrice_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure  [dbo].[PartPrice_Insert]
			@PartID int,
            @Quantity int,
            @Price money
AS
INSERT INTO [dbo].[PartPrice]
           ([PartID]
           ,[Quantity]
           ,[Price]
           ,[EffectiveDateFrom]
           ,[EffectiveDateTo]
           ,Active
           ,[CreatedDateTime]
           )
     VALUES
           (@PartID
           ,@Quantity
           ,@Price
           ,getdate()
           ,Null
           ,0
           ,getdate()
           )




' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PartPrice_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure   [dbo].[PartPrice_Update]
@PartPriceID int,
@PartID int,
@Quantity int,
@Price money,
@Active bit

AS
Declare @@PriceID int
Declare @@Price money

IF @Active = 0
BEGIN
	UPDATE PartPrice  SET EffectiveDateTo =getdate(), Active=0 where PartPriceID = @PartPriceID
	RETURN 0
END

IF @PartPriceID = 0
BEGIN
	EXEC PartPrice_Insert @PartID,@Quantity,@Price	
	RETURN 0
END


Select @@Price= Price  from PartPrice where Quantity =@Quantity and PartID = @PartID		
IF @@Price != @Price
BEGIN
	UPDATE PartPrice  SET EffectiveDateTo =getdate(), Active=0 where Quantity =@Quantity and PartID = @PartID
	EXEC PartPrice_Insert @PartID,@Quantity,@Price
	RETURN 0
END




' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Power_Get]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[Power_Get]
		   @PowerID int
		   ,@Power nvarchar(100)
		   ,@Status nvarchar(20)
		   ,@Usage Nvarchar(20)
           
AS
Declare @Active bit
IF @Status = ''Active''
	BEGIN
		SET @Active = 1
	END
ELSE
	BEGIN
		SET @Active = 0
	END
--ENDIF		
Set @Power = ''%'' + @Power +''%''

IF @Usage =''PopulateDDL''
	BEGIN		
		Select Power,PowerID 
		From Power
			Where (Active = @Active OR @Status = ''All'')
			AND (PowerID = @PowerID OR @PowerID =0)
			AND (Power = @Power OR @Power Is Null)
		Union 
		Select '' Please Select Power'' Power , 0  PowerID
			Order by Power
		Return
	END
--ENDIF
IF @Usage = ''SearchByID''
	BEGIN
		Select Power,PowerID 
		From Power			
			WHERE (PowerID = @PowerID)			
		Return
	END
--ENDIF

IF @Usage = ''SearchByName''
	BEGIN

		Select Power,PowerID 
		From Power			
			WHERE (Power like @Power)			
		Return
	END
--ENDIF



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Power_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[Power_Insert]
		   @Power nvarchar(100)
           ,@Image nvarchar(100)
           ,@EffectiveDateFrom Datetime
AS
INSERT INTO [dbo].[Power]
           ([Power]
           ,[Image]           
           ,[EffectiveDateFrom])           
     VALUES
           (
		   @Power
           ,@Image
           ,@EffectiveDateFrom)
           


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Power_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[Power_Update]
@PowerID int
,@Power nvarchar(100)
,@Image nvarchar(100)
,@EffectiveDateFrom datetime
,@EffectiveDateTo DateTime
,@Active bit

AS
UPDATE [dbo].[Power]
   SET [Power] = @Power
      ,[Image] = @Image
      ,[Active] = @Active
      ,[LastModifiedDateTime] = getdate()      
      ,[EffectiveDateFrom] = @EffectiveDateFrom
      ,[EffectiveDateTo] = @EffectiveDateTo
 WHERE PowerID =@PowerID


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PPlateApprove_Get]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[PPlateApprove_Get]
		   @PPlateApproveID int
		   ,@PPlateApprove nvarchar(100)
		   ,@Status nvarchar(20)
		   ,@Usage Nvarchar(20)
           
AS
Declare @Active bit
IF @Status = ''Active''
	BEGIN
		SET @Active = 1
	END
ELSE
	BEGIN
		SET @Active = 0
	END
--ENDIF		
Set @PPlateApprove = ''%'' + @PPlateApprove +''%''

IF @Usage =''PopulateDDL''
	BEGIN		
		Select PPlateApprove,PPlateApproveID 
		From PPlateApprove
			Where (Active = @Active OR @Status = ''All'')
			AND (PPlateApproveID = @PPlateApproveID OR @PPlateApproveID =0)
			AND (PPlateApprove = @PPlateApprove OR @PPlateApprove Is Null)
		Union 
		Select '' Please Select PPlateApprove'' PPlateApprove , 0  PPlateApproveID
			Order by PPlateApprove
		Return
	END
--ENDIF
IF @Usage = ''SearchByID''
	BEGIN
		Select PPlateApprove,PPlateApproveID 
		From PPlateApprove			
			WHERE (PPlateApproveID = @PPlateApproveID)			
		Return
	END
--ENDIF

IF @Usage = ''SearchByName''
	BEGIN

		Select PPlateApprove,PPlateApproveID 
		From PPlateApprove			
			WHERE (PPlateApprove like @PPlateApprove)			
		Return
	END
--ENDIF



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PPlateApprove_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[PPlateApprove_Insert]
		   @PPlateApprove nvarchar(100)
           ,@Image nvarchar(100)
           ,@EffectiveDateFrom Datetime
AS
INSERT INTO [dbo].[PPlateApprove]
           ([PPlateApprove]
           ,[Image]           
           ,[EffectiveDateFrom])           
     VALUES
           (
		   @PPlateApprove
           ,@Image
           ,@EffectiveDateFrom)
           


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PPlateApprove_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[PPlateApprove_Update]
@PPlateApproveID int
,@PPlateApprove nvarchar(100)
,@Image nvarchar(100)
,@EffectiveDateFrom datetime
,@EffectiveDateTo DateTime
,@Active bit

AS
UPDATE [dbo].[PPlateApprove]
   SET [PPlateApprove] = @PPlateApprove
      ,[Image] = @Image
      ,[Active] = @Active
      ,[LastModifiedDateTime] = getdate()      
      ,[EffectiveDateFrom] = @EffectiveDateFrom
      ,[EffectiveDateTo] = @EffectiveDateTo
 WHERE PPlateApproveID =@PPlateApproveID


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Price_Get]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[Price_Get]
		   @PriceID int
		   ,@Price nvarchar(100)
		   ,@Status nvarchar(20)
		   ,@Usage Nvarchar(20)
           
AS
Declare @Active bit
IF @Status = ''Active''
	BEGIN
		SET @Active = 1
	END
ELSE
	BEGIN
		SET @Active = 0
	END
--ENDIF		
Set @Price = ''%'' + @Price +''%''

IF @Usage =''PopulateDDL''
	BEGIN		
		Select Price,PriceID 
		From Price
			Where (Active = @Active OR @Status = ''All'')
			AND (PriceID = @PriceID OR @PriceID =0)
			AND (Price = @Price OR @Price Is Null)
		Union 
		Select '' Please Select Price'' Price , 0  PriceID
			Order by Price
		Return
	END
--ENDIF
IF @Usage = ''SearchByID''
	BEGIN
		Select Price,PriceID 
		From Price			
			WHERE (PriceID = @PriceID)			
		Return
	END
--ENDIF

IF @Usage = ''SearchByName''
	BEGIN

		Select Price,PriceID 
		From Price			
			WHERE (Price like @Price)			
		Return
	END
--ENDIF



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Price_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[Price_Insert]
		   @Price nvarchar(100)
           ,@Image nvarchar(100)
           ,@EffectiveDateFrom Datetime
AS
INSERT INTO [dbo].[Price]
           ([Price]
           ,[Image]           
           ,[EffectiveDateFrom])           
     VALUES
           (
		   @Price
           ,@Image
           ,@EffectiveDateFrom)
           


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Price_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[Price_Update]
@PriceID int
,@Price nvarchar(100)
,@Image nvarchar(100)
,@EffectiveDateFrom datetime
,@EffectiveDateTo DateTime
,@Active bit

AS
UPDATE [dbo].[Price]
   SET [Price] = @Price
      ,[Image] = @Image
      ,[Active] = @Active
      ,[LastModifiedDateTime] = getdate()      
      ,[EffectiveDateFrom] = @EffectiveDateFrom
      ,[EffectiveDateTo] = @EffectiveDateTo
 WHERE PriceID =@PriceID


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[product_Get]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[product_Get]
		@ProductID int
		,@WreckID int
		,@PartID int
		,@WreckNo nvarchar(50)
		,@Part nvarchar(50)
		,@Status nvarchar(50)		
		,@Usage nvarchar(50)

AS

Declare @Active bit
IF @Status = ''Active''
	BEGIN
		SET @Active = 1
	END
ELSE
	BEGIN
		SET @Active = 0
	END
--ENDIF		
Set @Part = ''%'' + @Part +''%''

IF @Usage is null
	BEGIN		
		Select *  From vw_productAll			
		Return
	END
--ENDIF

IF @Usage =''PopulateDDL''
	BEGIN		
		Select  Part ,  ProductID 
		From vw_productAll
			Where (Active = @Active OR @Status = ''All'')
			AND (ProductID = @ProductID OR @ProductID=0)
			AND (Part = @Part OR @Part Is Null)
			AND (WreckNo = @WreckNo OR @WreckNo Is Null)
		Union 
		Select '' Please Select Product'' Product , 0  ProductID
			Order by Part
		Return
	END
--ENDIF
IF @Usage = ''SearchByID''
	BEGIN
		Select * 
		from vw_productAll P	
		Where P.ProductID = @ProductID 
	END
--ENDIF

IF @Usage = ''SearchByName''

	BEGIN
		Select * 
		from vw_productAll P		
		Where P.Part like @Part or P.KeyWord Like @Part
		order by Part
		Return
	END
--ENDIF

-- exec Product_Get @ProductID=0,@WreckID=0,@PartID=0,@WreckNo=N'''',@Part=N''12'',@Status=NULL,@Usage=''SearchByName''' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Product_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[Product_Insert]
			@WreckID int
			,@PartID int
			,@Qty int
			,@Comment nvarchar(Max)
			,@onSpecial bit
			,@Soldout bit
			,@Discount bit
			,@SpecialsNote nvarchar(max)
			,@DisplayonHomePage bit
			,@Featured bit
			,@New bit
			,@TopSeller bit
			,@Deffects bit
			,@DeffectNotes nvarchar(max)
			,@CreatedDateTime nvarchar(20)         
			,@Active bit          
			,@Price money
AS 

INSERT INTO Product
			(WreckID
			,PartID 
			,Qty 			
			,Comment 
			,onSpecial
			,Soldout 
			,Discount
			,SpecialsNote 
			,DisplayonHomePage 
			,Featured 
			,New 
			,TopSeller 
			,Deffects 
			,DeffectNotes 
			,CreatedDateTime 
			,Active) 
	 VALUES
           (@WreckID
			,@PartID 
			,@Qty 
			,@Comment 
			,@onSpecial
			,@Soldout 
			,@Discount
			,@SpecialsNote 
			,@DisplayonHomePage 
			,@Featured 
			,@New 
			,@TopSeller 
			,@Deffects 
			,@DeffectNotes 
			,@CreatedDateTime 
			,@Active)
Declare @ProductId int
Set @ProductId = @@Identity
EXEC ProductPrice_Insert  @@Identity,1, @Price
Select convert(int,@ProductId)



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Product_Search]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Product_Search]
       @keyword nvarchar(100) = null,
       @categoryId int = null,
       @priceMin decimal = null,
	   @priceMax decimal = null,
       @makeId int = null,
       @modelId int = null,
       @chassis varchar(100) = null,
       @engineNo varchar(20) = null,
	   @engineSizeId int = null,
	   @fuelTypeId int = null,
	   @bodyTypeId int = null,
	   @wheelBaseId int = null,
	   @yearMin int = null,
	   @yearMax int = null
	   
	   /*
	   exec [NNS_UNIXMO].dbo.Product_Search 
			@keyword = '''',
			@categoryId = null,
			@priceMin = null,
			@chassis = null,
			@engineNo = null,
			@engineSizeId = null,
			@fuelTypeId = null,
			@bodyTypeId = null,
			@wheelBaseId = null
			;
	   */
AS
BEGIN
	SET NOCOUNT ON;
	--if @keyword is not null
	--begin
	--	Set @keyword= ''''''''+ ''%'' + @keyword +  ''%''+''''''''
	--end

	SELECT  *
	FROM	vw_productAll p
	--WHERE	(@keyword IS NULL OR @keyword = '''' OR ( p.Title like @keyword + ''%'' OR p.Keyword like ''%'' + @keyword + ''%'') )
	--WHERE	(P.Title like ''%''+IsNull(@keyword,p.Title)+''%'')
	WHERE	(P.Title like ''%''+IsNull(@keyword,p.Title)+''%'' OR P.Title +''s'' like ''%''+IsNull(@keyword,p.Title)+''%'')
		AND	(p.CategoryID = ISNULL(@categoryId, p.CategoryID) )
		AND (@priceMin IS NULL OR ( p.Price >= @priceMin ) )
		AND	(@priceMax IS NULL OR ( p.Price <= @priceMax ) )
		AND (p.ChassisNo = ISNULL(@chassis, p.ChassisNo) )
		AND (p.EngineNo = ISNULL(@engineNo, p.EngineNo) )
		AND (p.EngineSizeID = ISNULL(@engineSizeId, p.EngineSizeID) )
		AND (p.FuelTypeID = ISNULL(@fuelTypeId, p.FuelTypeID) )
		AND (p.BodyTypeID = ISNULL(@bodyTypeId, p.BodyTypeID) )
		And P.active =1
		-- Todo 
		-- make, model, wheelbase, year
END
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Product_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[Product_Update]
			@ProductID int
			,@WreckID int
			,@PartID int
			,@Qty int
			,@Comment nvarchar(Max)
			,@onSpecial bit
			,@Soldout bit
			,@Discount bit
			,@SpecialsNote nvarchar(max)
			,@DisplayonHomePage bit
			,@Featured bit
			,@New bit
			,@TopSeller bit
			,@Deffects bit
			,@DeffectNotes nvarchar(max)			
			,@Active bit          
			,@Price money
AS 

Update Product SET
			WreckID					=@WreckID
			,PartID 				=@PartID 
			,Qty 					=@Qty 
			,Comment 				=@Comment 
			,onSpecial				=@onSpecial
			,Soldout 				=@Soldout 
			,Discount				=@Discount
			,SpecialsNote 			=@SpecialsNote 
			,DisplayonHomePage 		=@DisplayonHomePage 
			,Featured 				=@Featured 
			,New 					=@New 
			,TopSeller 				=@TopSeller 
			,Deffects 				=@Deffects 
			,DeffectNotes 			=@DeffectNotes 			
			,Active 				=@Active			
WHERe ProductID = @ProductID

Update ProductPrice Set Active = 0, EffectiveDateTo = getdate() where ProductID = @ProductID
EXEC ProductPrice_Insert  @ProductID,1, @Price

			
			
			
			
			
			
			
			
			
			
			
			
			
			





' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductFeature_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure  [dbo].[ProductFeature_Insert]

			@ProductID int,

            @FeatureId int,

            @Active bit

           

AS

INSERT INTO [dbo].[ProductFeature]

           ([ProductID]

           ,[FeatureID]

           ,Active)

     VALUES

           (@ProductID

           ,@FeatureId

           ,@Active)



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductFeature_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


CREATE Procedure   [dbo].[ProductFeature_Update]

	@ProductID int,

	@FeatureID int,

	@Active bit



AS

Declare @ProductFeatureID int 

Set @ProductFeatureID = 0

Select @ProductFeatureID  = ProductFeatureID From ProductFeature where ProductID =@ProductID AND FeatureID=@FeatureID  

print @ProductFeatureID  



IF @ProductFeatureID  > 0

BEGIN

	UPDATE ProductFeature  SET DateTo =getdate(), Active=@Active where ProductFeatureID = @ProductFeatureID

	RETURN 0

END



IF @ProductFeatureID = 0

BEGIN

	EXEC ProductFeature_Insert @ProductID,@FeatureID,@Active

	RETURN 0

END





' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductPartPhotos_get]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
Create Procedure [dbo].[ProductPartPhotos_get]
	@ProductID int
	,@PartID int
AS

 
select ProductPhotoID PhotoID,PhotoName From ProductPhoto  where Productid = @ProductID and Active = 1
Union
select PartPhotoID PhotoID,PhotoName From PartPhoto  where PartID = @PartID and Active = 1

' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductPhoto_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[ProductPhoto_Insert]   
 -- Add the parameters for the stored procedure here  
	 @ProductID int,
	 @PhotoName nvarchar(200)   
	 --@CreatedByUser nvarchar(100), 
	 --@EffectiveDateFrom Datetime
AS  
BEGIN  
 -- SET NOCOUNT ON added to prevent extra result sets from  
 -- interfering with SELECT statements.  
 SET NOCOUNT ON;  
  
    -- Insert statements for procedure here  
 insert into ProductPhoto  
 (ProductID,PhotoName,CreatedDatetime,LastModifiedDateTime,Active)--,CreatedByUser,LastModifiedByUser)  
 values  
 (@ProductID,@PhotoName,GETDATE(),GetDate(),1)--,@CreatedByUser,@CreatedByUser)  
 select @@identity
END






' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductPrice_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure  [dbo].[ProductPrice_Insert]
			@ProductID int,
            @Quantity int,
            @Price money
AS
INSERT INTO [dbo].[ProductPrice]
           ([ProductID]
           ,[Quantity]
           ,[Price]
           ,[EffectiveDateFrom]
           ,[EffectiveDateTo]
           ,Active
           ,[CreatedDateTime]
           )
     VALUES
           (@ProductID
           ,@Quantity
           ,@Price
           ,getdate()
           ,Null
           ,1
           ,getdate()
           )




' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductPrice_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure   [dbo].[ProductPrice_Update]
@ProductPriceID int,
@ProductID int,
@Quantity int,
@Price money,
@Active bit

AS
Declare @@PriceID int
Declare @@Price money

IF @Active = 0
BEGIN
	UPDATE ProductPrice  SET EffectiveDateTo =getdate(), Active=0 where ProductPriceID = @ProductPriceID
	RETURN 0
END

IF @ProductPriceID = 0
BEGIN
	EXEC ProductPrice_Insert @ProductID,@Quantity,@Price	
	RETURN 0
END


Select @@Price= Price  from ProductPrice where Quantity =@Quantity and productID = @productID		
IF @@Price != @Price
BEGIN
	UPDATE ProductPrice  SET EffectiveDateTo =getdate(), Active=0 where Quantity =@Quantity and productID = @productID
	EXEC ProductPrice_Insert @ProductID,@Quantity,@Price
	RETURN 0
END




' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Provider_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[Provider_Insert]
	@ProviderName nvarchar(200),
	@Description nvarchar(max),
	@KeyWord nvarchar(4000),
	@FirstName nvarchar(50),
	@LastName nvarchar(50),
	@LevelNo nvarchar(50),
	@UnitNo nvarchar(50),
	@StreetNo nvarchar(50),
	@Street nvarchar(50),
	@City nvarchar(50),
	@State nvarchar(50),
	@PostCode int,
	@Country nvarchar(50),
	@Longitude nvarchar(200),
	@Latitude nvarchar(200),
	@Mobile nvarchar(50),
	@Phone nvarchar(50),
	@Fax nvarchar(50),
	@EmailAddress nvarchar(50),
	@URL nvarchar(200),
	@Rating int,
	@ContactUsURL nvarchar(200),
	@DisplayOrderID int,
	@Image nvarchar(100),
	@Active bit,
	@CreatedByUser nvarchar(50)

AS

INSERT INTO [dbo].[Provider]
           ([ProviderName]
		   	,Description 
			,KeyWord 
           ,[FirstName]
           ,[LastName]
           ,[LevelNo]
           ,[UnitNo]
           ,[StreetNo]
           ,[Street]
           ,[City]
           ,[State]
           ,[PostCode]
           ,[Country]
           ,[Longitude]
           ,[Latitude]
           ,[Mobile]
           ,[Phone]
           ,[Fax]
           ,[EmailAddress]
           ,[URL]
           ,[Rating]
           ,[ContactUsURL]
           ,[DisplayOrderID]
           ,[Image]
           ,[Active]
           ,[CreatedDateTime]
           ,[CreatedByUser]
           ,[LastModifiedDateTime]
           ,[LastModifiedByUser])
           
     VALUES
           (@ProviderName 
		   	,@Description 
			,@KeyWord 
		   	,@FirstName 
			,@LastName 
			,@LevelNo 
			,@UnitNo 
			,@StreetNo 
			,@Street 
			,@City 
			,@State 
			,@PostCode 
			,@Country 
			,@Longitude 
			,@Latitude 
			,@Mobile 
			,@Phone 
			,@Fax 
			,@EmailAddress 
			,@URL 
			,@Rating 
			,@ContactUsURL 
			,@DisplayOrderID 
			,@Image 
			,@Active 
			,getdate()
			,@CreatedByUser
			,getdate()
			,@CreatedByUser)

			select @@IDENTITY
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProviderProviderType_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[ProviderProviderType_Insert]


@ProviderID int
,@ProviderTypeID int
,@CreatedbyUser nvarchar(50)
,@Active bit

AS
INSERT INTO [dbo].[Provider_ProviderType]
           ([ProviderID]
           ,[ProviderTypeID]           
           ,[Active]
           ,[CreatedDateTime]
           ,[CreatedByUser]
		   ,LastModifiedDateTime
		   ,LastModifiedByUser)
     VALUES
           (@ProviderID
           ,@ProviderTypeID
           ,1
           ,getdate()
           ,@CreatedByUser
           ,getdate()
           ,@CreatedByUser)
           

' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProviderServiceType_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[ProviderServiceType_Insert]


@ProviderID int
,@ServiceTypeID int
,@CreatedbyUser nvarchar(50)
,@Active bit

AS
INSERT INTO [dbo].[ProviderServiceType]
           ([ProviderID]
           ,[ServiceTypeID]           
           ,[Active]
           ,[CreatedDateTime]
           ,[CreatedByUser]
		   ,LastModifiedDateTime
		   ,LastModifiedByUser)
     VALUES
           (@ProviderID
           ,@ServiceTypeID
           ,1
           ,getdate()
           ,@CreatedByUser
           ,getdate()
           ,@CreatedByUser)
           

' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProviderType_Get]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


CREATE Procedure [dbo].[ProviderType_Get]
		   @ProviderTypeID int
		   ,@ProviderType nvarchar(100)
		   ,@Status nvarchar(20)
		   ,@Usage Nvarchar(20)
           
AS
Declare @Active bit
IF @Status = ''Active''
	BEGIN
		SET @Active = 1
	END
ELSE
	BEGIN
		SET @Active = 0
	END
--ENDIF		
Set @ProviderType = ''%'' + @ProviderType +''%''

IF @Usage =''PopulateDDL''
	BEGIN	
			Select '' Select Provider Type'' ProviderType,0 ProviderTypeID 
			Union 
		Select ProviderType,ProviderTypeID 
		From ProviderType
			Where (Active = @Active OR @Status = ''All'')
			AND (ProviderTypeID = @ProviderTypeID OR @ProviderTypeID =0)
			AND (ProviderType = @ProviderType OR @ProviderType Is Null)
		--Union 
		--Select '' Please Select ProviderType'' ProviderType , 0  ProviderTypeID
			Order by ProviderType
		Return
	END
--ENDIF
IF @Usage = ''SearchByID''
	BEGIN
		Select ProviderType,ProviderTypeID 
		From ProviderType			
			WHERE (ProviderTypeID = @ProviderTypeID)			
		Return
	END
--ENDIF

IF @Usage = ''SearchByName''
	BEGIN

		Select ProviderType,ProviderTypeID 
		From ProviderType			
			WHERE (ProviderType like @ProviderType)			
		Return
	END
--ENDIF





' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProviderType_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[ProviderType_Insert]
		   @ProviderType nvarchar(100)
           ,@Image nvarchar(100)
           ,@EffectiveDateFrom Datetime
AS
INSERT INTO [dbo].[ProviderType]
           ([ProviderType]
           ,[Image]           
           ,[EffectiveDateFrom])           
     VALUES
           (
		   @ProviderType
           ,@Image
           ,@EffectiveDateFrom)
           





' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProviderType_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[ProviderType_Update]
@ProviderTypeID int
,@ProviderType nvarchar(100)
,@Image nvarchar(100)
,@EffectiveDateFrom datetime
,@EffectiveDateTo DateTime
,@Active bit

AS
UPDATE [dbo].[ProviderType]
   SET [ProviderType] = @ProviderType
      ,[Image] = @Image
      ,[Active] = @Active
      ,[LastModifiedDateTime] = getdate()      
      ,[EffectiveDateFrom] = @EffectiveDateFrom
      ,[EffectiveDateTo] = @EffectiveDateTo
 WHERE ProviderTypeID =@ProviderTypeID




' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Rack_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[Rack_Insert]
		   @RackNo nvarchar(100)
           ,@Image nvarchar(100)
           ,@EffectiveDateFrom Datetime
AS
INSERT INTO [dbo].[Rack]
           ([RackNo]
           ,[Image]           
           ,[EffectiveDateFrom])           
     VALUES
           (
		   @RackNo
           ,@Image
           ,@EffectiveDateFrom)
           



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Rack_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[Rack_Update]
@RackID int
,@RackNo nvarchar(100)
,@Image nvarchar(100)
,@EffectiveDateFrom datetime
,@EffectiveDateTo DateTime
,@Active bit

AS
UPDATE [dbo].[Rack]
   SET [RackNo] = @RackNo
      ,[Image] = @Image
      ,[Active] = @Active
      ,[LastModifiedDateTime] = getdate()      
      ,[EffectiveDateFrom] = @EffectiveDateFrom
      ,[EffectiveDateTo] = @EffectiveDateTo
 WHERE RackID =@RackID



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Region_Get]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[Region_Get]
		   @RegionID int
		   ,@Region nvarchar(100)
		   ,@Status nvarchar(20)
		   ,@Usage Nvarchar(20)
           
AS
Declare @Active bit
IF @Status = ''Active''
	BEGIN
		SET @Active = 1
	END
ELSE
	BEGIN
		SET @Active = 0
	END
--ENDIF		
Set @Region = ''%'' + @Region +''%''

IF @Usage =''PopulateDDL''
	BEGIN		
		Select Region,RegionID 
		From Region
			Where (Active = @Active OR @Status = ''All'')
			AND (RegionID = @RegionID OR @RegionID =0)
			AND (Region = @Region OR @Region Is Null)
		Union 
		Select '' Please Select Region'' Region , 0  RegionID
			Order by Region
		Return
	END
--ENDIF
IF @Usage = ''SearchByID''
	BEGIN
		Select Region,RegionID 
		From Region			
			WHERE (RegionID = @RegionID)			
		Return
	END
--ENDIF

IF @Usage = ''SearchByName''
	BEGIN

		Select Region,RegionID 
		From Region			
			WHERE (Region like @Region)			
		Return
	END
--ENDIF



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Region_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[Region_Insert]
		   @Region nvarchar(100)
           ,@Image nvarchar(100)
           ,@EffectiveDateFrom Datetime
		   ,@StateID int
		   
AS
INSERT INTO [dbo].[Region]
           ([Region]
           ,[Image]  
		   ,[EffectiveDateFrom]
		   ,StateID		   
           )           
     VALUES
           (
		   @Region
           ,@Image
           ,@EffectiveDateFrom
		   ,@StateID)
           


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Region_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[Region_Update]
@RegionID int
,@Region nvarchar(100)
,@StateID int
,@Image nvarchar(100)
,@EffectiveDateFrom datetime
,@EffectiveDateTo DateTime
,@Active bit

AS
UPDATE [dbo].[Region]
   SET [Region] = @Region
      ,StateID = @StateID
      ,[Image] = @Image
      ,[Active] = @Active
      ,[LastModifiedDateTime] = getdate()      
      ,[EffectiveDateFrom] = @EffectiveDateFrom
      ,[EffectiveDateTo] = @EffectiveDateTo
 WHERE RegionID =@RegionID


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Seat_Get]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[Seat_Get]
		   @SeatID int
		   ,@Seat nvarchar(100)
		   ,@Status nvarchar(20)
		   ,@Usage Nvarchar(20)
           
AS
Declare @Active bit
IF @Status = ''Active''
	BEGIN
		SET @Active = 1
	END
ELSE
	BEGIN
		SET @Active = 0
	END
--ENDIF		
Set @Seat = ''%'' + @Seat +''%''

IF @Usage =''PopulateDDL''
	BEGIN		
		Select Seat,SeatID 
		From Seat
			Where (Active = @Active OR @Status = ''All'')
			AND (SeatID = @SeatID OR @SeatID =0)
			AND (Seat = @Seat OR @Seat Is Null)
		Union 
		Select '' Please Select Seat'' Seat , 0  SeatID
			Order by Seat
		Return
	END
--ENDIF
IF @Usage = ''SearchByID''
	BEGIN
		Select Seat,SeatID 
		From Seat			
			WHERE (SeatID = @SeatID)			
		Return
	END
--ENDIF

IF @Usage = ''SearchByName''
	BEGIN

		Select Seat,SeatID 
		From Seat			
			WHERE (Seat like @Seat)			
		Return
	END
--ENDIF



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Seat_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[Seat_Insert]
		   @Seat nvarchar(100)
           ,@Image nvarchar(100)
           ,@EffectiveDateFrom Datetime
AS
INSERT INTO [dbo].[Seat]
           ([Seat]
           ,[Image]           
           ,[EffectiveDateFrom])           
     VALUES
           (
		   @Seat
           ,@Image
           ,@EffectiveDateFrom)
           


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Seat_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[Seat_Update]
@SeatID int
,@Seat nvarchar(100)
,@Image nvarchar(100)
,@EffectiveDateFrom datetime
,@EffectiveDateTo DateTime
,@Active bit

AS
UPDATE [dbo].[Seat]
   SET [Seat] = @Seat
      ,[Image] = @Image
      ,[Active] = @Active
      ,[LastModifiedDateTime] = getdate()      
      ,[EffectiveDateFrom] = @EffectiveDateFrom
      ,[EffectiveDateTo] = @EffectiveDateTo
 WHERE SeatID =@SeatID


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Series_Get]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[Series_Get]
		   @SeriesID int
		   ,@Series nvarchar(100)
		   ,@Status nvarchar(20)
		   ,@Usage Nvarchar(20)
           
AS
Declare @Active bit
IF @Status = ''Active''
	BEGIN
		SET @Active = 1
	END
ELSE
	BEGIN
		SET @Active = 0
	END
--ENDIF		
Set @Series = ''%'' + @Series +''%''

IF @Usage =''PopulateDDL''
	BEGIN		
		Select Series,SeriesID 
		From Series
			Where (Active = @Active OR @Status = ''All'')
			AND (SeriesID = @SeriesID OR @SeriesID =0)
			AND (Series = @Series OR @Series Is Null)
		Union 
		Select '' Please Select Series'' Series , 0  SeriesID
			Order by Series
		Return
	END
--ENDIF
IF @Usage = ''SearchByID''
	BEGIN
		Select Series,SeriesID 
		From Series			
			WHERE (SeriesID = @SeriesID)			
		Return
	END
--ENDIF

IF @Usage = ''SearchByName''
	BEGIN

		Select Series,SeriesID 
		From Series			
			WHERE (Series like @Series)			
		Return
	END
--ENDIF



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Series_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[Series_Insert]
		   @Series nvarchar(100)
           ,@Image nvarchar(100)
           ,@EffectiveDateFrom Datetime
AS
INSERT INTO [dbo].[Series]
           ([Series]
           ,[Image]           
           ,[EffectiveDateFrom])           
     VALUES
           (
		   @Series
           ,@Image
           ,@EffectiveDateFrom)
           


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Series_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[Series_Update]
@SeriesID int
,@Series nvarchar(100)
,@Image nvarchar(100)
,@EffectiveDateFrom datetime
,@EffectiveDateTo DateTime
,@Active bit

AS
UPDATE [dbo].[Series]
   SET [Series] = @Series
      ,[Image] = @Image
      ,[Active] = @Active
      ,[LastModifiedDateTime] = getdate()      
      ,[EffectiveDateFrom] = @EffectiveDateFrom
      ,[EffectiveDateTo] = @EffectiveDateTo
 WHERE SeriesID =@SeriesID


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ServiceType_Get]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


CREATE Procedure [dbo].[ServiceType_Get]
		   @ServiceTypeID int
		   ,@ServiceType nvarchar(100)
		   ,@Status nvarchar(20)
		   ,@Usage Nvarchar(20)
           
AS
Declare @Active bit
IF @Status = ''Active''
	BEGIN
		SET @Active = 1
	END
ELSE
	BEGIN
		SET @Active = 0
	END
--ENDIF		
Set @ServiceType = ''%'' + @ServiceType +''%''

IF @Usage =''PopulateDDL''
	BEGIN		
		Select '' Select service Type'' ServiceType,0 ServiceTypeID 
		Union 
		Select ServiceType,ServiceTypeID 
		From ServiceType
			Where (Active = @Active OR @Status = ''All'')
			AND (ServiceTypeID = @ServiceTypeID OR @ServiceTypeID =0)
			AND (ServiceType = @ServiceType OR @ServiceType Is Null)
		--Union 
		--Select '' Please Select ServiceType'' ServiceType , 0  ServiceTypeID
			Order by ServiceType
		Return
	END
--ENDIF
IF @Usage = ''SearchByID''
	BEGIN
		Select ServiceType,ServiceTypeID 
		From ServiceType			
			WHERE (ServiceTypeID = @ServiceTypeID)			
		Return
	END
--ENDIF

IF @Usage = ''SearchByName''
	BEGIN

		Select ServiceType,ServiceTypeID 
		From ServiceType			
			WHERE (ServiceType like @ServiceType)			
		Return
	END
--ENDIF





' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ServiceType_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[ServiceType_Insert]
		   @ServiceType nvarchar(100)
           ,@Image nvarchar(100)
           ,@EffectiveDateFrom Datetime
AS
INSERT INTO [dbo].[ServiceType]
           ([ServiceType]
           ,[Image]           
           ,[EffectiveDateFrom])           
     VALUES
           (
		   @ServiceType
           ,@Image
           ,@EffectiveDateFrom)
           





' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ServiceType_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[ServiceType_Update]
@ServiceTypeID int
,@ServiceType nvarchar(100)
,@Image nvarchar(100)
,@EffectiveDateFrom datetime
,@EffectiveDateTo DateTime
,@Active bit

AS
UPDATE [dbo].[ServiceType]
   SET [ServiceType] = @ServiceType
      ,[Image] = @Image
      ,[Active] = @Active
      ,[LastModifiedDateTime] = getdate()      
      ,[EffectiveDateFrom] = @EffectiveDateFrom
      ,[EffectiveDateTo] = @EffectiveDateTo
 WHERE ServiceTypeID =@ServiceTypeID




' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Side_Get]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


CREATE Procedure [dbo].[Side_Get]
		   @SideID int
		   ,@Side nvarchar(100)
		   ,@Status nvarchar(20)
		   ,@Usage Nvarchar(20)
           
AS
Declare @Active bit
IF @Status = ''Active''
	BEGIN
		SET @Active = 1
	END
ELSE
	BEGIN
		SET @Active = 0
	END
--ENDIF		
Set @Side = ''%'' + @Side +''%''

IF @Usage =''PopulateDDL''
	BEGIN		
		Select Side,SideID 
		From Side
			Where (Active = @Active OR @Status = ''All'')
			AND (SideID = @SideID OR @SideID =0)
			AND (Side = @Side OR @Side Is Null)
		--Union 
		--Select '' Please Select Side'' Side , 0  SideID
			Order by Side
		Return
	END
--ENDIF
IF @Usage = ''SearchByID''
	BEGIN
		Select Side,SideID 
		From Side			
			WHERE (SideID = @SideID)			
		Return
	END
--ENDIF

IF @Usage = ''SearchByName''
	BEGIN

		Select Side,SideID 
		From Side			
			WHERE (Side like @Side)			
		Return
	END
--ENDIF




' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Side_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[Side_Insert]
		   @Side nvarchar(100)
           ,@Image nvarchar(100)
           ,@EffectiveDateFrom Datetime
AS
INSERT INTO [dbo].[Side]
           ([Side]
           ,[Image]           
           ,[EffectiveDateFrom])           
     VALUES
           (
		   @Side
           ,@Image
           ,@EffectiveDateFrom)
           




' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Side_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[Side_Update]
@SideID int
,@Side nvarchar(100)
,@Image nvarchar(100)
,@EffectiveDateFrom datetime
,@EffectiveDateTo DateTime
,@Active bit

AS
UPDATE [dbo].[Side]
   SET [Side] = @Side
      ,[Image] = @Image
      ,[Active] = @Active
      ,[LastModifiedDateTime] = getdate()      
      ,[EffectiveDateFrom] = @EffectiveDateFrom
      ,[EffectiveDateTo] = @EffectiveDateTo
 WHERE SideID =@SideID



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_searchPart_All]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[sp_searchPart_All]

@CategoryID int,
@Part nvarchar(100)

AS
SELECT Distinct Part, CategoryID,PartNo,Min(Price)Price,PartID,DefaultPartPhotoID,Active,Category FROM Vw_PartDetails_ALL
where (@CategoryID != 0 and CategoryID = @CategoryID or @CategoryID = 0)
AND (@Part != '''' AND Part Like ''%''+ @Part +''%'' OR @Part='''') 
Group By PartID,Part, CategoryID,PartNo,DefaultPartPhotoID,Active,Category


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_searchProvider_All]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE  Procedure [dbo].[sp_searchProvider_All]
@ProviderID int
,@ProviderTypeID int
,@ServiceTypeID int
,@ProviderName nvarchar(200)
,@Street nvarchar(200)
,@City nvarchar(200)
,@State nvarchar(200)

AS

Select Distinct P.* From Provider P
Left  outer Join Provider_providerType PPT on P.ProviderID = PPT.ProviderID 
left outer join ProviderServiceType PST on P.ProviderID = PST.ProviderID 

WHERE (P.ProviderID = @ProviderID or @ProviderID = 0)
AND  (ProviderTypeID = @ProviderTypeID or @ProviderTypeID = 0)
AND  (ServiceTypeID = @ServiceTypeID or @ServiceTypeID = 0)
AND  (ProviderName = @ProviderName or @ProviderName = '''' Or @ProviderName is null)
AND  (street = @Street or @Street= '''' Or @Street is null)
AND  (City = @City or @City= '''' Or @City is null)
AND  (State = @State or @State= '''' Or @State is null)

--exec sp_searchProvider_All @ProviderID=0,@ProviderTypeID=0,@ServiceTypeID=0,@ProviderName=0,@Street=0,@City=0,@State=0
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[State_Get]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[State_Get]
		   @StateID int
		   ,@State nvarchar(100)
		   ,@Status nvarchar(20)
		   ,@Usage Nvarchar(20)
           
AS
Declare @Active bit
IF @Status = ''Active''
	BEGIN
		SET @Active = 1
	END
ELSE
	BEGIN
		SET @Active = 0
	END
--ENDIF		
Set @State = ''%'' + @State +''%''

IF @Usage =''PopulateDDL''
	BEGIN		
		Select State,StateID 
		From State
			Where (Active = @Active OR @Status = ''All'')
			AND (StateID = @StateID OR @StateID =0)
			AND (State = @State OR @State Is Null)
		Union 
		Select '' Please Select State'' State , 0  StateID
			Order by State
		Return
	END
--ENDIF
IF @Usage = ''SearchByID''
	BEGIN
		Select State,StateID 
		From State			
			WHERE (StateID = @StateID)			
		Return
	END
--ENDIF

IF @Usage = ''SearchByName''
	BEGIN

		Select State,StateID 
		From State			
			WHERE (State like @State)			
		Return
	END
--ENDIF



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[State_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[State_Insert]
		   @State nvarchar(100)
           ,@Image nvarchar(100)
           ,@EffectiveDateFrom Datetime
AS
INSERT INTO [dbo].[State]
           ([State]
           ,[Image]           
           ,[EffectiveDateFrom])           
     VALUES
           (
		   @State
           ,@Image
           ,@EffectiveDateFrom)
           


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[State_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[State_Update]
@StateID int
,@State nvarchar(100)
,@Image nvarchar(100)
,@EffectiveDateFrom datetime
,@EffectiveDateTo DateTime
,@Active bit

AS
UPDATE [dbo].[State]
   SET [State] = @State
      ,[Image] = @Image
      ,[Active] = @Active
      ,[LastModifiedDateTime] = getdate()      
      ,[EffectiveDateFrom] = @EffectiveDateFrom
      ,[EffectiveDateTo] = @EffectiveDateTo
 WHERE StateID =@StateID


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Suburb_Get]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[Suburb_Get]
		   @SuburbID int
		   ,@Suburb nvarchar(100)
		   ,@Status nvarchar(20)
		   ,@Usage Nvarchar(20)
           
AS
Declare @Active bit
IF @Status = ''Active''
	BEGIN
		SET @Active = 1
	END
ELSE
	BEGIN
		SET @Active = 0
	END
--ENDIF		
Set @Suburb = ''%'' + @Suburb +''%''

IF @Usage =''PopulateDDL''
	BEGIN		
		Select Suburb,SuburbID 
		From Suburb
			Where (Active = @Active OR @Status = ''All'')
			AND (SuburbID = @SuburbID OR @SuburbID =0)
			AND (Suburb = @Suburb OR @Suburb Is Null)
		Union 
		Select '' Please Select Suburb'' Suburb , 0  SuburbID
			Order by Suburb
		Return
	END
--ENDIF
IF @Usage = ''SearchByID''
	BEGIN
		Select Suburb,SuburbID 
		From Suburb			
			WHERE (SuburbID = @SuburbID)			
		Return
	END
--ENDIF

IF @Usage = ''SearchByName''
	BEGIN

		Select Suburb,SuburbID 
		From Suburb			
			WHERE (Suburb like @Suburb)			
		Return
	END
--ENDIF



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Suburb_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[Suburb_Insert]
		   @Suburb nvarchar(100)
           ,@Image nvarchar(100)
           ,@EffectiveDateFrom Datetime
		   ,@RegionID int
		   ,@PostCode nvarchar(10)
AS
INSERT INTO [dbo].[Suburb]
           ([Suburb]
           ,[Image]  
		   ,[EffectiveDateFrom]
		   ,RegionID
		   ,PostCode         
           )           
     VALUES
           (
		   @Suburb
           ,@Image
           ,@EffectiveDateFrom
		   ,@RegionID
		   ,@PostCode)
           


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Suburb_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[Suburb_Update]
@SuburbID int
,@Suburb nvarchar(100)
,@RegionID int
,@Image nvarchar(100)
,@EffectiveDateFrom datetime
,@EffectiveDateTo DateTime
,@Active bit

AS
UPDATE [dbo].[Suburb]
   SET [Suburb] = @Suburb
      ,RegionID = @RegionID
      ,[Image] = @Image
      ,[Active] = @Active
      ,[LastModifiedDateTime] = getdate()      
      ,[EffectiveDateFrom] = @EffectiveDateFrom
      ,[EffectiveDateTo] = @EffectiveDateTo
 WHERE SuburbID =@SuburbID


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Towing_Get]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[Towing_Get]
		   @TowingID int
		   ,@Towing nvarchar(100)
		   ,@Status nvarchar(20)
		   ,@Usage Nvarchar(20)
           
AS
Declare @Active bit
IF @Status = ''Active''
	BEGIN
		SET @Active = 1
	END
ELSE
	BEGIN
		SET @Active = 0
	END
--ENDIF		
Set @Towing = ''%'' + @Towing +''%''

IF @Usage =''PopulateDDL''
	BEGIN		
		Select Towing,TowingID 
		From Towing
			Where (Active = @Active OR @Status = ''All'')
			AND (TowingID = @TowingID OR @TowingID =0)
			AND (Towing = @Towing OR @Towing Is Null)
		Union 
		Select '' Please Select Towing'' Towing , 0  TowingID
			Order by Towing
		Return
	END
--ENDIF
IF @Usage = ''SearchByID''
	BEGIN
		Select Towing,TowingID 
		From Towing			
			WHERE (TowingID = @TowingID)			
		Return
	END
--ENDIF

IF @Usage = ''SearchByName''
	BEGIN

		Select Towing,TowingID 
		From Towing			
			WHERE (Towing like @Towing)			
		Return
	END
--ENDIF



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Towing_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[Towing_Insert]
		   @Towing nvarchar(100)
           ,@Image nvarchar(100)
           ,@EffectiveDateFrom Datetime
AS
INSERT INTO [dbo].[Towing]
           ([Towing]
           ,[Image]           
           ,[EffectiveDateFrom])           
     VALUES
           (
		   @Towing
           ,@Image
           ,@EffectiveDateFrom)
           


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Towing_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[Towing_Update]
@TowingID int
,@Towing nvarchar(100)
,@Image nvarchar(100)
,@EffectiveDateFrom datetime
,@EffectiveDateTo DateTime
,@Active bit

AS
UPDATE [dbo].[Towing]
   SET [Towing] = @Towing
      ,[Image] = @Image
      ,[Active] = @Active
      ,[LastModifiedDateTime] = getdate()      
      ,[EffectiveDateFrom] = @EffectiveDateFrom
      ,[EffectiveDateTo] = @EffectiveDateTo
 WHERE TowingID =@TowingID


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Transmission_Get]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[Transmission_Get]
		   @TransmissionID int
		   ,@Transmission nvarchar(100)
		   ,@Status nvarchar(20)
		   ,@Usage Nvarchar(20)
           
AS
Declare @Active bit
IF @Status = ''Active''
	BEGIN
		SET @Active = 1
	END
ELSE
	BEGIN
		SET @Active = 0
	END
--ENDIF		
Set @Transmission = ''%'' + @Transmission +''%''

IF @Usage =''PopulateDDL''
	BEGIN		
		Select Transmission,TransmissionID 
		From Transmission
			Where (Active = @Active OR @Status = ''All'')
			AND (TransmissionID = @TransmissionID OR @TransmissionID =0)
			AND (Transmission = @Transmission OR @Transmission Is Null)
		Union 
		Select '' Please Select Transmission'' Transmission , 0  TransmissionID
			Order by Transmission
		Return
	END
--ENDIF
IF @Usage = ''SearchByID''
	BEGIN
		Select Transmission,TransmissionID 
		From Transmission			
			WHERE (TransmissionID = @TransmissionID)			
		Return
	END
--ENDIF

IF @Usage = ''SearchByName''
	BEGIN

		Select Transmission,TransmissionID 
		From Transmission			
			WHERE (Transmission like @Transmission)			
		Return
	END
--ENDIF



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Transmission_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[Transmission_Insert]
		   @Transmission nvarchar(100)
           ,@Image nvarchar(100)
           ,@EffectiveDateFrom Datetime
AS
INSERT INTO [dbo].[Transmission]
           ([Transmission]
           ,[Image]           
           ,[EffectiveDateFrom])           
     VALUES
           (
		   @Transmission
           ,@Image
           ,@EffectiveDateFrom)
           


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Transmission_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[Transmission_Update]
@TransmissionID int
,@Transmission nvarchar(100)
,@Image nvarchar(100)
,@EffectiveDateFrom datetime
,@EffectiveDateTo DateTime
,@Active bit

AS
UPDATE [dbo].[Transmission]
   SET [Transmission] = @Transmission
      ,[Image] = @Image
      ,[Active] = @Active
      ,[LastModifiedDateTime] = getdate()      
      ,[EffectiveDateFrom] = @EffectiveDateFrom
      ,[EffectiveDateTo] = @EffectiveDateTo
 WHERE TransmissionID =@TransmissionID


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateActive_ImageList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[UpdateActive_ImageList] 
	-- Add the parameters for the stored procedure here
	@PartID int,
	@Active bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update PartPhoto
	set
	Active = @Active
	where 
	PartID = @PartID
END





' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateActive_ProductImageList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[UpdateActive_ProductImageList] 
	-- Add the parameters for the stored procedure here
	@ProductID int,
	@Active bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update ProductPhoto
	set
	Active = 0
	where 
	ProductID = @ProductID
END






' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Vehicle_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[Vehicle_Insert]
		   @MakeID int,
           @ModelID int,
		   @BadgeID int,
		   @SeriesID int,
		   @Image nvarchar(100),		
		   @EffectiveDateFrom Datetime	   
AS
INSERT INTO [dbo].[Vehicle]
           ([MakeID]
           ,[ModelID]           
           ,[BadgeID]
		   ,[SeriesID]
		   ,[Image]		   
		   ,[EffectiveDateFrom])
		     
     VALUES
           (
		   @MakeID
           ,@ModelID
           ,@BadgeID
		   ,@SeriesID
		   ,@Image		   
           ,@EffectiveDateFrom)
		  


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Vehicle_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[Vehicle_Update]
		   @MakeID int,
           @ModelID int,
		   @BadgeID int,
		   @SeriesID int,
		   @Image nvarchar(100),			   	
		   @EffectiveDateFrom datetime,
		   @EffectiveDateTo DateTime,
		   @Active bit
AS
UPDATE [dbo].[Vehicle]
set
		    [MakeID] = @MakeID
           ,[ModelID] = @ModelID
           ,[BadgeID] = @BadgeID
		   ,[SeriesID] = @SeriesID
		   ,[Image] = @Image
		   ,[Active] = @Active
		   ,[LastModifiedDateTime] = getdate()      
		   ,[EffectiveDateFrom] = @EffectiveDateFrom
  WHERE MakeID =@MakeID

' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WheelBase_Get]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[WheelBase_Get]
		   @WheelBaseID int
		   ,@WheelBase nvarchar(100)
		   ,@Status nvarchar(20)
		   ,@Usage Nvarchar(20)
           
AS
Declare @Active bit
IF @Status = ''Active''
	BEGIN
		SET @Active = 1
	END
ELSE
	BEGIN
		SET @Active = 0
	END
--ENDIF		
Set @WheelBase = ''%'' + @WheelBase +''%''

IF @Usage =''PopulateDDL''
	BEGIN		
		Select WheelBase,WheelBaseID 
		From WheelBase
			Where (Active = @Active OR @Status = ''All'')
			AND (WheelBaseID = @WheelBaseID OR @WheelBaseID =0)
			AND (WheelBase = @WheelBase OR @WheelBase Is Null)
		--Union 
		--Select '' Please Select WheelBase'' WheelBase , 0  WheelBaseID
			Order by WheelBase
		Return
	END
--ENDIF
IF @Usage = ''SearchByID''
	BEGIN
		Select WheelBase,WheelBaseID 
		From WheelBase			
			WHERE (WheelBaseID = @WheelBaseID)			
		Return
	END
--ENDIF

IF @Usage = ''SearchByName''
	BEGIN

		Select WheelBase,WheelBaseID 
		From WheelBase			
			WHERE (WheelBase like @WheelBase)			
		Return
	END
--ENDIF



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WheelBase_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[WheelBase_Insert]
		   @WheelBase nvarchar(100)
           ,@Image nvarchar(100)
           ,@EffectiveDateFrom Datetime
AS
INSERT INTO [dbo].[WheelBase]
           ([WheelBase]
           ,[Image]           
           ,[EffectiveDateFrom])           
     VALUES
           (
		   @WheelBase
           ,@Image
           ,@EffectiveDateFrom)
           


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WheelBase_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[WheelBase_Update]
@WheelBaseID int
,@WheelBase nvarchar(100)
,@Image nvarchar(100)
,@EffectiveDateFrom datetime
,@EffectiveDateTo DateTime
,@Active bit

AS
UPDATE [dbo].[WheelBase]
   SET [WheelBase] = @WheelBase
      ,[Image] = @Image
      ,[Active] = @Active
      ,[LastModifiedDateTime] = getdate()      
      ,[EffectiveDateFrom] = @EffectiveDateFrom
      ,[EffectiveDateTo] = @EffectiveDateTo
 WHERE WheelBaseID =@WheelBaseID


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Wreck_Get]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[Wreck_Get]
		   @WreckID int
		   ,@WreckNo nvarchar(100)
		   ,@Status nvarchar(20)
		   ,@Usage Nvarchar(20)
           
AS
Declare @Active bit
IF @Status = ''Active''
	BEGIN
		SET @Active = 1
	END
ELSE
	BEGIN
		SET @Active = 0
	END
--ENDIF		
Set @WreckNo = ''%'' + @WreckNo +''%''

IF @Usage =''PopulateDDL''
	BEGIN		
		Select WreckNo,WreckID 
		From Wreck
			Where (Active = @Active OR @Status = ''All'')
			AND (WreckID = @WreckID OR @WreckID =0)
			AND (WreckNo = @WreckNo OR @WreckNo Is Null)
		Union 
		Select '' Please Select Wreck'' WreckNo , 0  WreckID
			Order by WreckNo
		Return
	END
--ENDIF
IF @Usage = ''SearchByID''
	BEGIN
		Select W.*,Make,Model,ChassisNo,EngineNo,EngineSize,FuelType,BodyType,WheelBase,[Year],CCRating
		From Wreck	W
		Inner Join Make MK on W.MakeID = MK.MakeID
		Inner Join Model MD on W.ModelID  = MD.ModelID
		Inner Join Chassis C on W.ChassisID= C.ChassisID
		Inner Join Engine ENO on W.EngineID= ENO.EngineID
		Inner Join EngineSize ES on W.EngineSizeID= ES.EngineSizeID
		Inner Join FuelType FT on W.FuelTypeID= FT.FuelTypeID
		Inner Join BodyType BT on W.BodyTypeID= BT.BodyTypeID
		Inner Join WheelBase WB on W.WheelBaseID= WB.WheelBaseID
		Inner Join CCRating CR on W.CCRatingID= CR.CCRatingID
		Inner Join [Year] y on W.YearID= y.YearID
		
			WHERE (WreckID = @WreckID)			
		Return
	END
--ENDIF

IF @Usage = ''SearchByName''
	BEGIN
		Select W.*,Make,Model,ChassisNo,EngineNo,EngineSize,FuelType,BodyType,WheelBase,[Year],CCRating
		From Wreck	W
			Inner Join Make MK on W.MakeID = MK.MakeID
			Inner Join Model MD on W.ModelID  = MD.ModelID
			Inner Join Chassis C on W.ChassisID= C.ChassisID
			Inner Join Engine ENO on W.EngineID= ENO.EngineID
			Inner Join EngineSize ES on W.EngineSizeID= ES.EngineSizeID
			Inner Join FuelType FT on W.FuelTypeID= FT.FuelTypeID
			Inner Join BodyType BT on W.BodyTypeID= BT.BodyTypeID
			Inner Join WheelBase WB on W.WheelBaseID= WB.WheelBaseID
			Inner Join CCRating CR on W.CCRatingID= CR.CCRatingID
			Inner Join [Year] y on W.YearID= y.YearID		
		WHERE (WreckNo like @WreckNo)			
		Return
	END
--ENDIF


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Wreck_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [dbo].[Wreck_Insert]

			@WreckNo nvarchar(100)
           ,@KeyWord nvarchar(100)
           ,@MakeID int
           ,@ModelID int
           ,@ChassisID int
           ,@EngineID int
           ,@EngineSizeID int
           ,@FuelTypeID int
           ,@BodyTypeID int
           ,@WheelBaseID int
           ,@YearID int
           ,@CCRatingID int
           ,@Image nvarchar(100)
           ,@Active bit
           ,@CreatedDateTime datetime
           ,@CreatedByUser nvarchar(50)
           ,@LastModifiedDateTime datetime
           ,@LastModifiedByUser nvarchar(50)           
AS

INSERT INTO [dbo].[Wreck]
           ([WreckNo]
           ,[KeyWord]
           ,[MakeID]
           ,[ModelID]
           ,[ChassisID]
           ,[EngineID]
           ,[EngineSizeID]
           ,[FuelTypeID]
           ,[BodyTypeID]
           ,[WheelBaseID]
           ,[YearID]
           ,CCRatingID
           ,[Image]
           ,[Active]
           ,[CreatedDateTime]
           ,[CreatedByUser]
           ,[LastModifiedDateTime]
           ,[LastModifiedByUser] )         
     VALUES
           (@WreckNo
		   ,@KeyWord           
		   ,@MakeID 
           ,@ModelID 
           ,@ChassisID
           ,@EngineID 
           ,@EngineSizeID 
           ,@FuelTypeID 
           ,@BodyTypeID 
           ,@WheelBaseID 
           ,@YearID 
           ,@CCRatingID 
           ,@Image
           ,@Active
           ,@CreatedDateTime
           ,@CreatedByUser
           ,@LastModifiedDateTime
           ,@LastModifiedByUser)           


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Wreck_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[Wreck_Update]
			@WreckID int
		    ,@WreckNo nvarchar(100)
           ,@KeyWord nvarchar(100)
           ,@MakeID int
           ,@ModelID int
           ,@ChassisID int
           ,@EngineID int
           ,@EngineSizeID int
           ,@FuelTypeID int
           ,@BodyTypeID int
           ,@WheelBaseID int
           ,@YearID int
           ,@CCRatingID int
           ,@Image nvarchar(100)
           ,@Active bit
           ,@LastModifiedDateTime datetime
           ,@LastModifiedByUser nvarchar(50)           
		   ,@DeletedDateTime datetime
           ,@DeletedByUser nvarchar(50)          
AS

Update [dbo].[Wreck] SET            
		 WreckNo=@WreckNo
		,KeyWord=@KeyWord           
		,MakeID=@MakeID 
		,ModelID=@ModelID 
		,ChassisID=	@ChassisID
		,EngineID=@EngineID 
		,EngineSizeID=@EngineSizeID 
		,FuelTypeID=@FuelTypeID 
		,BodyTypeID=@BodyTypeID 
		,WheelBaseID=@WheelBaseID 
		,YearID=@YearID 
		,CCRatingID=@CCRatingID 
		,[Image]=@Image
		,Active	=@Active
		,LastModifiedDateTime=@LastModifiedDateTime
		,LastModifiedByUser=@LastModifiedByUser
WHERE WreckID =@WreckID


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Year_Get]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE Procedure [dbo].[Year_Get]
		   @YearID int
		   ,@Year nvarchar(100)
		   ,@Status nvarchar(20)
		   ,@Usage Nvarchar(20)
           
AS
Declare @Active bit
IF @Status = ''Active''
	BEGIN
		SET @Active = 1
	END
ELSE
	BEGIN
		SET @Active = 0
	END
--ENDIF		
Set @Year = ''%'' + @Year +''%''

IF @Usage =''PopulateDDL''
	BEGIN		
		Select Year,YearID 
		From Year
			Where (Active = @Active OR @Status = ''All'')
			AND (YearID = @YearID OR @YearID =0)
			AND (Year = @Year OR @Year Is Null)
		--Union 
		--Select '' Please Select Year'' Year , 0  YearID
			Order by Year
		Return
	END
--ENDIF
IF @Usage = ''SearchByID''
	BEGIN
		Select Year,YearID 
		From Year			
			WHERE (YearID = @YearID)			
		Return
	END
--ENDIF

IF @Usage = ''SearchByName''
	BEGIN

		Select Year,YearID 
		From Year			
			WHERE (Year like @Year)			
		Return
	END
--ENDIF



' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Year_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[Year_Insert]
		   @Year nvarchar(100)
           ,@Image nvarchar(100)
           ,@EffectiveDateFrom Datetime
AS
INSERT INTO [dbo].[Year]
           ([Year]
           ,[Image]           
           ,[EffectiveDateFrom])           
     VALUES
           (
		   @Year
           ,@Image
           ,@EffectiveDateFrom)
           


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Year_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[Year_Update]
@YearID int
,@Year nvarchar(100)
,@Image nvarchar(100)
,@EffectiveDateFrom datetime
,@EffectiveDateTo DateTime
,@Active bit

AS
UPDATE [dbo].[Year]
   SET [Year] = @Year
      ,[Image] = @Image
      ,[Active] = @Active
      ,[LastModifiedDateTime] = getdate()      
      ,[EffectiveDateFrom] = @EffectiveDateFrom
      ,[EffectiveDateTo] = @EffectiveDateTo
 WHERE YearID =@YearID


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[NNS_SQLADMIN].[get_Category]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
create Procedure [NNS_SQLADMIN].[get_Category]

AS
Select distinct * From Category
	Where Active =1' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[NNS_SQLADMIN].[get_NewProducts]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Procedure [NNS_SQLADMIN].[get_NewProducts]

AS
Select distinct P.ProductID,Price,Photoname,Part from Product P 
	Inner Join Part PT on P.PartID = PT.PartID
	Left Join PartPhoto PTP on PT.DefaultPartPhotoID= PTP.PartPhotoID
	Inner Join ProductPrice PP on P.ProductID = PP.ProductID
	Where P.new = 1 and P.Active =1' 
END
GO
