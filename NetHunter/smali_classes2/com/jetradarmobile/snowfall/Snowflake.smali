.class public final Lcom/jetradarmobile/snowfall/Snowflake;
.super Ljava/lang/Object;
.source "Snowflake.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jetradarmobile/snowfall/Snowflake$Params;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001:\u0001&B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 J\u0006\u0010!\u001a\u00020\u0014J\u001b\u0010\"\u001a\u00020\u001e2\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0000\u00a2\u0006\u0004\u0008#\u0010$J\u0006\u0010%\u001a\u00020\u001eR\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u00020\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u000e\u0010\u0019\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/jetradarmobile/snowfall/Snowflake;",
        "",
        "randomizer",
        "Lcom/jetradarmobile/snowfall/Randomizer;",
        "params",
        "Lcom/jetradarmobile/snowfall/Snowflake$Params;",
        "(Lcom/jetradarmobile/snowfall/Randomizer;Lcom/jetradarmobile/snowfall/Snowflake$Params;)V",
        "_paint",
        "Landroid/graphics/Paint;",
        "alpha",
        "",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "paint",
        "getPaint",
        "()Landroid/graphics/Paint;",
        "positionX",
        "",
        "positionY",
        "shouldRecycleFalling",
        "",
        "getShouldRecycleFalling",
        "()Z",
        "setShouldRecycleFalling",
        "(Z)V",
        "size",
        "speedX",
        "speedY",
        "stopped",
        "draw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "isStillFalling",
        "reset",
        "reset$snowfall_release",
        "(Ljava/lang/Double;)V",
        "update",
        "Params",
        "snowfall_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private _paint:Landroid/graphics/Paint;

.field private alpha:I

.field private bitmap:Landroid/graphics/Bitmap;

.field private final params:Lcom/jetradarmobile/snowfall/Snowflake$Params;

.field private positionX:D

.field private positionY:D

.field private final randomizer:Lcom/jetradarmobile/snowfall/Randomizer;

.field private shouldRecycleFalling:Z

.field private size:I

.field private speedX:D

.field private speedY:D

.field private stopped:Z


# direct methods
.method public constructor <init>(Lcom/jetradarmobile/snowfall/Randomizer;Lcom/jetradarmobile/snowfall/Snowflake$Params;)V
    .locals 1

    const-string v0, "randomizer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jetradarmobile/snowfall/Snowflake;->randomizer:Lcom/jetradarmobile/snowfall/Randomizer;

    iput-object p2, p0, Lcom/jetradarmobile/snowfall/Snowflake;->params:Lcom/jetradarmobile/snowfall/Snowflake$Params;

    const/16 p1, 0xff

    iput p1, p0, Lcom/jetradarmobile/snowfall/Snowflake;->alpha:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jetradarmobile/snowfall/Snowflake;->shouldRecycleFalling:Z

    const/4 p2, 0x0

    invoke-static {p0, p2, p1, p2}, Lcom/jetradarmobile/snowfall/Snowflake;->reset$snowfall_release$default(Lcom/jetradarmobile/snowfall/Snowflake;Ljava/lang/Double;ILjava/lang/Object;)V

    return-void
.end method

.method private final getPaint()Landroid/graphics/Paint;
    .locals 2

    iget-object v0, p0, Lcom/jetradarmobile/snowfall/Snowflake;->_paint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput-object v0, p0, Lcom/jetradarmobile/snowfall/Snowflake;->_paint:Landroid/graphics/Paint;

    :cond_0
    iget-object v0, p0, Lcom/jetradarmobile/snowfall/Snowflake;->_paint:Landroid/graphics/Paint;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static synthetic reset$snowfall_release$default(Lcom/jetradarmobile/snowfall/Snowflake;Ljava/lang/Double;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    move-object p2, p1

    check-cast p2, Ljava/lang/Double;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/jetradarmobile/snowfall/Snowflake;->reset$snowfall_release(Ljava/lang/Double;)V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 4

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jetradarmobile/snowfall/Snowflake;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/jetradarmobile/snowfall/Snowflake;->positionX:D

    double-to-float v1, v1

    iget-wide v2, p0, Lcom/jetradarmobile/snowfall/Snowflake;->positionY:D

    double-to-float v2, v2

    invoke-direct {p0}, Lcom/jetradarmobile/snowfall/Snowflake;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/jetradarmobile/snowfall/Snowflake;->positionX:D

    double-to-float v0, v0

    iget-wide v1, p0, Lcom/jetradarmobile/snowfall/Snowflake;->positionY:D

    double-to-float v1, v1

    iget v2, p0, Lcom/jetradarmobile/snowfall/Snowflake;->size:I

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/jetradarmobile/snowfall/Snowflake;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public final getShouldRecycleFalling()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jetradarmobile/snowfall/Snowflake;->shouldRecycleFalling:Z

    return v0
.end method

.method public final isStillFalling()Z
    .locals 6

    iget-boolean v0, p0, Lcom/jetradarmobile/snowfall/Snowflake;->shouldRecycleFalling:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/jetradarmobile/snowfall/Snowflake;->positionY:D

    const/4 v2, 0x0

    int-to-double v3, v2

    cmpl-double v5, v0, v3

    if-lez v5, :cond_1

    iget-object v3, p0, Lcom/jetradarmobile/snowfall/Snowflake;->params:Lcom/jetradarmobile/snowfall/Snowflake$Params;

    invoke-virtual {v3}, Lcom/jetradarmobile/snowfall/Snowflake$Params;->getParentHeight()I

    move-result v3

    int-to-double v3, v3

    cmpg-double v5, v0, v3

    if-gez v5, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public final reset$snowfall_release(Ljava/lang/Double;)V
    .locals 11

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jetradarmobile/snowfall/Snowflake;->shouldRecycleFalling:Z

    iget-object v1, p0, Lcom/jetradarmobile/snowfall/Snowflake;->randomizer:Lcom/jetradarmobile/snowfall/Randomizer;

    iget-object v2, p0, Lcom/jetradarmobile/snowfall/Snowflake;->params:Lcom/jetradarmobile/snowfall/Snowflake$Params;

    invoke-virtual {v2}, Lcom/jetradarmobile/snowfall/Snowflake$Params;->getSizeMinInPx()I

    move-result v2

    iget-object v3, p0, Lcom/jetradarmobile/snowfall/Snowflake;->params:Lcom/jetradarmobile/snowfall/Snowflake$Params;

    invoke-virtual {v3}, Lcom/jetradarmobile/snowfall/Snowflake$Params;->getSizeMaxInPx()I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/jetradarmobile/snowfall/Randomizer;->randomInt(IIZ)I

    move-result v0

    iput v0, p0, Lcom/jetradarmobile/snowfall/Snowflake;->size:I

    iget-object v0, p0, Lcom/jetradarmobile/snowfall/Snowflake;->params:Lcom/jetradarmobile/snowfall/Snowflake$Params;

    invoke-virtual {v0}, Lcom/jetradarmobile/snowfall/Snowflake$Params;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jetradarmobile/snowfall/Snowflake;->params:Lcom/jetradarmobile/snowfall/Snowflake$Params;

    invoke-virtual {v0}, Lcom/jetradarmobile/snowfall/Snowflake$Params;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lcom/jetradarmobile/snowfall/Snowflake;->size:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jetradarmobile/snowfall/Snowflake;->bitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget v0, p0, Lcom/jetradarmobile/snowfall/Snowflake;->size:I

    iget-object v1, p0, Lcom/jetradarmobile/snowfall/Snowflake;->params:Lcom/jetradarmobile/snowfall/Snowflake$Params;

    invoke-virtual {v1}, Lcom/jetradarmobile/snowfall/Snowflake$Params;->getSizeMinInPx()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/jetradarmobile/snowfall/Snowflake;->params:Lcom/jetradarmobile/snowfall/Snowflake$Params;

    invoke-virtual {v1}, Lcom/jetradarmobile/snowfall/Snowflake$Params;->getSizeMaxInPx()I

    move-result v1

    iget-object v2, p0, Lcom/jetradarmobile/snowfall/Snowflake;->params:Lcom/jetradarmobile/snowfall/Snowflake$Params;

    invoke-virtual {v2}, Lcom/jetradarmobile/snowfall/Snowflake$Params;->getSizeMinInPx()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/jetradarmobile/snowfall/Snowflake;->params:Lcom/jetradarmobile/snowfall/Snowflake$Params;

    invoke-virtual {v1}, Lcom/jetradarmobile/snowfall/Snowflake$Params;->getSpeedMax()I

    move-result v1

    iget-object v2, p0, Lcom/jetradarmobile/snowfall/Snowflake;->params:Lcom/jetradarmobile/snowfall/Snowflake$Params;

    invoke-virtual {v2}, Lcom/jetradarmobile/snowfall/Snowflake$Params;->getSpeedMin()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v0, v0, v1

    iget-object v1, p0, Lcom/jetradarmobile/snowfall/Snowflake;->params:Lcom/jetradarmobile/snowfall/Snowflake$Params;

    invoke-virtual {v1}, Lcom/jetradarmobile/snowfall/Snowflake$Params;->getSpeedMin()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/jetradarmobile/snowfall/Snowflake;->randomizer:Lcom/jetradarmobile/snowfall/Randomizer;

    iget-object v2, p0, Lcom/jetradarmobile/snowfall/Snowflake;->params:Lcom/jetradarmobile/snowfall/Snowflake$Params;

    invoke-virtual {v2}, Lcom/jetradarmobile/snowfall/Snowflake$Params;->getAngleMax()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jetradarmobile/snowfall/Randomizer;->randomDouble(I)D

    move-result-wide v1

    iget-object v3, p0, Lcom/jetradarmobile/snowfall/Snowflake;->randomizer:Lcom/jetradarmobile/snowfall/Randomizer;

    invoke-virtual {v3}, Lcom/jetradarmobile/snowfall/Randomizer;->randomSignum()I

    move-result v3

    int-to-double v3, v3

    mul-double v1, v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    float-to-double v3, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double v5, v5, v3

    iput-wide v5, p0, Lcom/jetradarmobile/snowfall/Snowflake;->speedX:D

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v3, v3, v0

    iput-wide v3, p0, Lcom/jetradarmobile/snowfall/Snowflake;->speedY:D

    iget-object v5, p0, Lcom/jetradarmobile/snowfall/Snowflake;->randomizer:Lcom/jetradarmobile/snowfall/Randomizer;

    iget-object v0, p0, Lcom/jetradarmobile/snowfall/Snowflake;->params:Lcom/jetradarmobile/snowfall/Snowflake$Params;

    invoke-virtual {v0}, Lcom/jetradarmobile/snowfall/Snowflake$Params;->getAlphaMin()I

    move-result v6

    iget-object v0, p0, Lcom/jetradarmobile/snowfall/Snowflake;->params:Lcom/jetradarmobile/snowfall/Snowflake$Params;

    invoke-virtual {v0}, Lcom/jetradarmobile/snowfall/Snowflake$Params;->getAlphaMax()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/jetradarmobile/snowfall/Randomizer;->randomInt$default(Lcom/jetradarmobile/snowfall/Randomizer;IIZILjava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/jetradarmobile/snowfall/Snowflake;->alpha:I

    invoke-direct {p0}, Lcom/jetradarmobile/snowfall/Snowflake;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/jetradarmobile/snowfall/Snowflake;->alpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/jetradarmobile/snowfall/Snowflake;->randomizer:Lcom/jetradarmobile/snowfall/Randomizer;

    iget-object v1, p0, Lcom/jetradarmobile/snowfall/Snowflake;->params:Lcom/jetradarmobile/snowfall/Snowflake$Params;

    invoke-virtual {v1}, Lcom/jetradarmobile/snowfall/Snowflake$Params;->getParentWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jetradarmobile/snowfall/Randomizer;->randomDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/jetradarmobile/snowfall/Snowflake;->positionX:D

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/jetradarmobile/snowfall/Snowflake;->positionY:D

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/jetradarmobile/snowfall/Snowflake;->randomizer:Lcom/jetradarmobile/snowfall/Randomizer;

    iget-object v0, p0, Lcom/jetradarmobile/snowfall/Snowflake;->params:Lcom/jetradarmobile/snowfall/Snowflake$Params;

    invoke-virtual {v0}, Lcom/jetradarmobile/snowfall/Snowflake$Params;->getParentHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jetradarmobile/snowfall/Randomizer;->randomDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/jetradarmobile/snowfall/Snowflake;->positionY:D

    iget-object p1, p0, Lcom/jetradarmobile/snowfall/Snowflake;->params:Lcom/jetradarmobile/snowfall/Snowflake$Params;

    invoke-virtual {p1}, Lcom/jetradarmobile/snowfall/Snowflake$Params;->getAlreadyFalling()Z

    move-result p1

    if-nez p1, :cond_2

    iget-wide v0, p0, Lcom/jetradarmobile/snowfall/Snowflake;->positionY:D

    iget-object p1, p0, Lcom/jetradarmobile/snowfall/Snowflake;->params:Lcom/jetradarmobile/snowfall/Snowflake$Params;

    invoke-virtual {p1}, Lcom/jetradarmobile/snowfall/Snowflake$Params;->getParentHeight()I

    move-result p1

    int-to-double v2, p1

    sub-double/2addr v0, v2

    iget p1, p0, Lcom/jetradarmobile/snowfall/Snowflake;->size:I

    int-to-double v2, p1

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/jetradarmobile/snowfall/Snowflake;->positionY:D

    :cond_2
    :goto_0
    return-void
.end method

.method public final setShouldRecycleFalling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jetradarmobile/snowfall/Snowflake;->shouldRecycleFalling:Z

    return-void
.end method

.method public final update()V
    .locals 6

    iget-wide v0, p0, Lcom/jetradarmobile/snowfall/Snowflake;->positionX:D

    iget-wide v2, p0, Lcom/jetradarmobile/snowfall/Snowflake;->speedX:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/jetradarmobile/snowfall/Snowflake;->positionX:D

    iget-wide v0, p0, Lcom/jetradarmobile/snowfall/Snowflake;->positionY:D

    iget-wide v2, p0, Lcom/jetradarmobile/snowfall/Snowflake;->speedY:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/jetradarmobile/snowfall/Snowflake;->positionY:D

    iget-object v2, p0, Lcom/jetradarmobile/snowfall/Snowflake;->params:Lcom/jetradarmobile/snowfall/Snowflake$Params;

    invoke-virtual {v2}, Lcom/jetradarmobile/snowfall/Snowflake$Params;->getParentHeight()I

    move-result v2

    int-to-double v2, v2

    cmpl-double v4, v0, v2

    if-lez v4, :cond_2

    iget-boolean v0, p0, Lcom/jetradarmobile/snowfall/Snowflake;->shouldRecycleFalling:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/jetradarmobile/snowfall/Snowflake;->stopped:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jetradarmobile/snowfall/Snowflake;->stopped:Z

    const/4 v0, 0x0

    invoke-static {p0, v0, v1, v0}, Lcom/jetradarmobile/snowfall/Snowflake;->reset$snowfall_release$default(Lcom/jetradarmobile/snowfall/Snowflake;Ljava/lang/Double;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/jetradarmobile/snowfall/Snowflake;->size:I

    int-to-double v0, v0

    neg-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jetradarmobile/snowfall/Snowflake;->reset$snowfall_release(Ljava/lang/Double;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jetradarmobile/snowfall/Snowflake;->params:Lcom/jetradarmobile/snowfall/Snowflake$Params;

    invoke-virtual {v0}, Lcom/jetradarmobile/snowfall/Snowflake$Params;->getParentHeight()I

    move-result v0

    int-to-double v2, v0

    iget v0, p0, Lcom/jetradarmobile/snowfall/Snowflake;->size:I

    int-to-double v4, v0

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/jetradarmobile/snowfall/Snowflake;->positionY:D

    iput-boolean v1, p0, Lcom/jetradarmobile/snowfall/Snowflake;->stopped:Z

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/jetradarmobile/snowfall/Snowflake;->params:Lcom/jetradarmobile/snowfall/Snowflake$Params;

    invoke-virtual {v0}, Lcom/jetradarmobile/snowfall/Snowflake$Params;->getFadingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/jetradarmobile/snowfall/Snowflake;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/jetradarmobile/snowfall/Snowflake;->alpha:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/jetradarmobile/snowfall/Snowflake;->params:Lcom/jetradarmobile/snowfall/Snowflake$Params;

    invoke-virtual {v2}, Lcom/jetradarmobile/snowfall/Snowflake$Params;->getParentHeight()I

    move-result v2

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/jetradarmobile/snowfall/Snowflake;->positionY:D

    sub-double/2addr v2, v4

    double-to-float v2, v2

    iget-object v3, p0, Lcom/jetradarmobile/snowfall/Snowflake;->params:Lcom/jetradarmobile/snowfall/Snowflake$Params;

    invoke-virtual {v3}, Lcom/jetradarmobile/snowfall/Snowflake$Params;->getParentHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_3
    return-void
.end method
