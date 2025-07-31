.class public final Lcom/jetradarmobile/snowfall/Snowflake$Params;
.super Ljava/lang/Object;
.source "Snowflake.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jetradarmobile/snowfall/Snowflake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Params"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0012\u0008\u0000\u0018\u00002\u00020\u0001Bg\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\u000c\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0002\u0010\u0011R\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0013R\u0011\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0013R\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0016R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0013R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0013R\u0011\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0013R\u0011\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0013R\u0011\u0010\r\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0013R\u0011\u0010\u000c\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u0013\u00a8\u0006!"
    }
    d2 = {
        "Lcom/jetradarmobile/snowfall/Snowflake$Params;",
        "",
        "parentWidth",
        "",
        "parentHeight",
        "image",
        "Landroid/graphics/Bitmap;",
        "alphaMin",
        "alphaMax",
        "angleMax",
        "sizeMinInPx",
        "sizeMaxInPx",
        "speedMin",
        "speedMax",
        "fadingEnabled",
        "",
        "alreadyFalling",
        "(IILandroid/graphics/Bitmap;IIIIIIIZZ)V",
        "getAlphaMax",
        "()I",
        "getAlphaMin",
        "getAlreadyFalling",
        "()Z",
        "getAngleMax",
        "getFadingEnabled",
        "getImage",
        "()Landroid/graphics/Bitmap;",
        "getParentHeight",
        "getParentWidth",
        "getSizeMaxInPx",
        "getSizeMinInPx",
        "getSpeedMax",
        "getSpeedMin",
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
.field private final alphaMax:I

.field private final alphaMin:I

.field private final alreadyFalling:Z

.field private final angleMax:I

.field private final fadingEnabled:Z

.field private final image:Landroid/graphics/Bitmap;

.field private final parentHeight:I

.field private final parentWidth:I

.field private final sizeMaxInPx:I

.field private final sizeMinInPx:I

.field private final speedMax:I

.field private final speedMin:I


# direct methods
.method public constructor <init>(IILandroid/graphics/Bitmap;IIIIIIIZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/jetradarmobile/snowfall/Snowflake$Params;->parentWidth:I

    iput p2, p0, Lcom/jetradarmobile/snowfall/Snowflake$Params;->parentHeight:I

    iput-object p3, p0, Lcom/jetradarmobile/snowfall/Snowflake$Params;->image:Landroid/graphics/Bitmap;

    iput p4, p0, Lcom/jetradarmobile/snowfall/Snowflake$Params;->alphaMin:I

    iput p5, p0, Lcom/jetradarmobile/snowfall/Snowflake$Params;->alphaMax:I

    iput p6, p0, Lcom/jetradarmobile/snowfall/Snowflake$Params;->angleMax:I

    iput p7, p0, Lcom/jetradarmobile/snowfall/Snowflake$Params;->sizeMinInPx:I

    iput p8, p0, Lcom/jetradarmobile/snowfall/Snowflake$Params;->sizeMaxInPx:I

    iput p9, p0, Lcom/jetradarmobile/snowfall/Snowflake$Params;->speedMin:I

    iput p10, p0, Lcom/jetradarmobile/snowfall/Snowflake$Params;->speedMax:I

    iput-boolean p11, p0, Lcom/jetradarmobile/snowfall/Snowflake$Params;->fadingEnabled:Z

    iput-boolean p12, p0, Lcom/jetradarmobile/snowfall/Snowflake$Params;->alreadyFalling:Z

    return-void
.end method


# virtual methods
.method public final getAlphaMax()I
    .locals 1

    iget v0, p0, Lcom/jetradarmobile/snowfall/Snowflake$Params;->alphaMax:I

    return v0
.end method

.method public final getAlphaMin()I
    .locals 1

    iget v0, p0, Lcom/jetradarmobile/snowfall/Snowflake$Params;->alphaMin:I

    return v0
.end method

.method public final getAlreadyFalling()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jetradarmobile/snowfall/Snowflake$Params;->alreadyFalling:Z

    return v0
.end method

.method public final getAngleMax()I
    .locals 1

    iget v0, p0, Lcom/jetradarmobile/snowfall/Snowflake$Params;->angleMax:I

    return v0
.end method

.method public final getFadingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jetradarmobile/snowfall/Snowflake$Params;->fadingEnabled:Z

    return v0
.end method

.method public final getImage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/jetradarmobile/snowfall/Snowflake$Params;->image:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getParentHeight()I
    .locals 1

    iget v0, p0, Lcom/jetradarmobile/snowfall/Snowflake$Params;->parentHeight:I

    return v0
.end method

.method public final getParentWidth()I
    .locals 1

    iget v0, p0, Lcom/jetradarmobile/snowfall/Snowflake$Params;->parentWidth:I

    return v0
.end method

.method public final getSizeMaxInPx()I
    .locals 1

    iget v0, p0, Lcom/jetradarmobile/snowfall/Snowflake$Params;->sizeMaxInPx:I

    return v0
.end method

.method public final getSizeMinInPx()I
    .locals 1

    iget v0, p0, Lcom/jetradarmobile/snowfall/Snowflake$Params;->sizeMinInPx:I

    return v0
.end method

.method public final getSpeedMax()I
    .locals 1

    iget v0, p0, Lcom/jetradarmobile/snowfall/Snowflake$Params;->speedMax:I

    return v0
.end method

.method public final getSpeedMin()I
    .locals 1

    iget v0, p0, Lcom/jetradarmobile/snowfall/Snowflake$Params;->speedMin:I

    return v0
.end method
