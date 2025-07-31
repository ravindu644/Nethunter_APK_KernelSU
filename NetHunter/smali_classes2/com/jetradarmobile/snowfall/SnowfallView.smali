.class public final Lcom/jetradarmobile/snowfall/SnowfallView;
.super Landroid/view/View;
.source "SnowfallView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jetradarmobile/snowfall/SnowfallView$UpdateSnowflakesThread;,
        Lcom/jetradarmobile/snowfall/SnowfallView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSnowfallView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnowfallView.kt\ncom/jetradarmobile/snowfall/SnowfallView\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,197:1\n13506#2,2:198\n3755#2:200\n4270#2,2:201\n13506#2,2:205\n13506#2,2:207\n1819#3,2:203\n*E\n*S KotlinDebug\n*F\n+ 1 SnowfallView.kt\ncom/jetradarmobile/snowfall/SnowfallView\n*L\n89#1,2:198\n118#1:200\n118#1,2:201\n129#1,2:205\n133#1,2:207\n120#1,2:203\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u0000 02\u00020\u0001:\u000201B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0013\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012H\u0002\u00a2\u0006\u0002\u0010\u001cJ\u0010\u0010\u001d\u001a\u00020\u00082\u0006\u0010\u001e\u001a\u00020\u0008H\u0002J\u0008\u0010\u001f\u001a\u00020 H\u0014J\u0008\u0010!\u001a\u00020 H\u0014J\u0010\u0010\"\u001a\u00020 2\u0006\u0010#\u001a\u00020$H\u0014J(\u0010%\u001a\u00020 2\u0006\u0010&\u001a\u00020\u00082\u0006\u0010\'\u001a\u00020\u00082\u0006\u0010(\u001a\u00020\u00082\u0006\u0010)\u001a\u00020\u0008H\u0014J\u0018\u0010*\u001a\u00020 2\u0006\u0010+\u001a\u00020\u00012\u0006\u0010,\u001a\u00020\u0008H\u0014J\u0006\u0010-\u001a\u00020 J\u0006\u0010.\u001a\u00020 J\u0008\u0010/\u001a\u00020 H\u0002R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u00062"
    }
    d2 = {
        "Lcom/jetradarmobile/snowfall/SnowfallView;",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "snowflakeAlphaMax",
        "",
        "snowflakeAlphaMin",
        "snowflakeAngleMax",
        "snowflakeImage",
        "Landroid/graphics/Bitmap;",
        "snowflakeSizeMaxInPx",
        "snowflakeSizeMinInPx",
        "snowflakeSpeedMax",
        "snowflakeSpeedMin",
        "snowflakes",
        "",
        "Lcom/jetradarmobile/snowfall/Snowflake;",
        "[Lcom/jetradarmobile/snowfall/Snowflake;",
        "snowflakesAlreadyFalling",
        "",
        "snowflakesFadingEnabled",
        "snowflakesNum",
        "updateSnowflakesThread",
        "Lcom/jetradarmobile/snowfall/SnowfallView$UpdateSnowflakesThread;",
        "createSnowflakes",
        "()[Lcom/jetradarmobile/snowfall/Snowflake;",
        "dpToPx",
        "dp",
        "onAttachedToWindow",
        "",
        "onDetachedFromWindow",
        "onDraw",
        "canvas",
        "Landroid/graphics/Canvas;",
        "onSizeChanged",
        "w",
        "h",
        "oldw",
        "oldh",
        "onVisibilityChanged",
        "changedView",
        "visibility",
        "restartFalling",
        "stopFalling",
        "updateSnowflakes",
        "Companion",
        "UpdateSnowflakesThread",
        "snowfall_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/jetradarmobile/snowfall/SnowfallView$Companion;

.field private static final DEFAULT_SNOWFLAKES_ALREADY_FALLING:Z = false

.field private static final DEFAULT_SNOWFLAKES_FADING_ENABLED:Z = false

.field private static final DEFAULT_SNOWFLAKES_NUM:I = 0xc8

.field private static final DEFAULT_SNOWFLAKE_ALPHA_MAX:I = 0xfa

.field private static final DEFAULT_SNOWFLAKE_ALPHA_MIN:I = 0x96

.field private static final DEFAULT_SNOWFLAKE_ANGLE_MAX:I = 0xa

.field private static final DEFAULT_SNOWFLAKE_SIZE_MAX_IN_DP:I = 0x8

.field private static final DEFAULT_SNOWFLAKE_SIZE_MIN_IN_DP:I = 0x2

.field private static final DEFAULT_SNOWFLAKE_SPEED_MAX:I = 0x8

.field private static final DEFAULT_SNOWFLAKE_SPEED_MIN:I = 0x2


# instance fields
.field private final snowflakeAlphaMax:I

.field private final snowflakeAlphaMin:I

.field private final snowflakeAngleMax:I

.field private final snowflakeImage:Landroid/graphics/Bitmap;

.field private final snowflakeSizeMaxInPx:I

.field private final snowflakeSizeMinInPx:I

.field private final snowflakeSpeedMax:I

.field private final snowflakeSpeedMin:I

.field private snowflakes:[Lcom/jetradarmobile/snowfall/Snowflake;

.field private final snowflakesAlreadyFalling:Z

.field private final snowflakesFadingEnabled:Z

.field private final snowflakesNum:I

.field private updateSnowflakesThread:Lcom/jetradarmobile/snowfall/SnowfallView$UpdateSnowflakesThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/jetradarmobile/snowfall/SnowfallView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jetradarmobile/snowfall/SnowfallView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/jetradarmobile/snowfall/SnowfallView;->Companion:Lcom/jetradarmobile/snowfall/SnowfallView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/jetradarmobile/snowfall/R$styleable;->SnowfallView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "context.obtainStyledAttr\u2026R.styleable.SnowfallView)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget p2, Lcom/jetradarmobile/snowfall/R$styleable;->SnowfallView_snowflakesNum:I

    const/16 v0, 0xc8

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakesNum:I

    sget p2, Lcom/jetradarmobile/snowfall/R$styleable;->SnowfallView_snowflakeImage:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/jetradarmobile/snowfall/DrawablesKt;->toBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    iput-object p2, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakeImage:Landroid/graphics/Bitmap;

    sget p2, Lcom/jetradarmobile/snowfall/R$styleable;->SnowfallView_snowflakeAlphaMin:I

    const/16 v1, 0x96

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakeAlphaMin:I

    sget p2, Lcom/jetradarmobile/snowfall/R$styleable;->SnowfallView_snowflakeAlphaMax:I

    const/16 v1, 0xfa

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakeAlphaMax:I

    sget p2, Lcom/jetradarmobile/snowfall/R$styleable;->SnowfallView_snowflakeAngleMax:I

    const/16 v1, 0xa

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakeAngleMax:I

    sget p2, Lcom/jetradarmobile/snowfall/R$styleable;->SnowfallView_snowflakeSizeMin:I

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/jetradarmobile/snowfall/SnowfallView;->dpToPx(I)I

    move-result v2

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakeSizeMinInPx:I

    sget p2, Lcom/jetradarmobile/snowfall/R$styleable;->SnowfallView_snowflakeSizeMax:I

    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/jetradarmobile/snowfall/SnowfallView;->dpToPx(I)I

    move-result v3

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakeSizeMaxInPx:I

    sget p2, Lcom/jetradarmobile/snowfall/R$styleable;->SnowfallView_snowflakeSpeedMin:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakeSpeedMin:I

    sget p2, Lcom/jetradarmobile/snowfall/R$styleable;->SnowfallView_snowflakeSpeedMax:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakeSpeedMax:I

    sget p2, Lcom/jetradarmobile/snowfall/R$styleable;->SnowfallView_snowflakesFadingEnabled:I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakesFadingEnabled:Z

    sget p2, Lcom/jetradarmobile/snowfall/R$styleable;->SnowfallView_snowflakesAlreadyFalling:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakesAlreadyFalling:Z

    invoke-virtual {p0, v1, v0}, Lcom/jetradarmobile/snowfall/SnowfallView;->setLayerType(ILandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method public static final synthetic access$getSnowflakes$p(Lcom/jetradarmobile/snowfall/SnowfallView;)[Lcom/jetradarmobile/snowfall/Snowflake;
    .locals 0

    iget-object p0, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakes:[Lcom/jetradarmobile/snowfall/Snowflake;

    return-object p0
.end method

.method public static final synthetic access$setSnowflakes$p(Lcom/jetradarmobile/snowfall/SnowfallView;[Lcom/jetradarmobile/snowfall/Snowflake;)V
    .locals 0

    iput-object p1, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakes:[Lcom/jetradarmobile/snowfall/Snowflake;

    return-void
.end method

.method private final createSnowflakes()[Lcom/jetradarmobile/snowfall/Snowflake;
    .locals 15

    new-instance v0, Lcom/jetradarmobile/snowfall/Randomizer;

    invoke-direct {v0}, Lcom/jetradarmobile/snowfall/Randomizer;-><init>()V

    new-instance v14, Lcom/jetradarmobile/snowfall/Snowflake$Params;

    invoke-virtual {p0}, Lcom/jetradarmobile/snowfall/SnowfallView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/jetradarmobile/snowfall/SnowfallView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakeImage:Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakeAlphaMin:I

    iget v6, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakeAlphaMax:I

    iget v7, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakeAngleMax:I

    iget v8, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakeSizeMinInPx:I

    iget v9, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakeSizeMaxInPx:I

    iget v10, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakeSpeedMin:I

    iget v11, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakeSpeedMax:I

    iget-boolean v12, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakesFadingEnabled:Z

    iget-boolean v13, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakesAlreadyFalling:Z

    move-object v1, v14

    invoke-direct/range {v1 .. v13}, Lcom/jetradarmobile/snowfall/Snowflake$Params;-><init>(IILandroid/graphics/Bitmap;IIIIIIIZZ)V

    iget v1, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakesNum:I

    new-array v2, v1, [Lcom/jetradarmobile/snowfall/Snowflake;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    new-instance v4, Lcom/jetradarmobile/snowfall/Snowflake;

    invoke-direct {v4, v0, v14}, Lcom/jetradarmobile/snowfall/Snowflake;-><init>(Lcom/jetradarmobile/snowfall/Randomizer;Lcom/jetradarmobile/snowfall/Snowflake$Params;)V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private final dpToPx(I)I
    .locals 2

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/jetradarmobile/snowfall/SnowfallView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private final updateSnowflakes()V
    .locals 2

    iget-object v0, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->updateSnowflakesThread:Lcom/jetradarmobile/snowfall/SnowfallView$UpdateSnowflakesThread;

    if-nez v0, :cond_0

    const-string v1, "updateSnowflakesThread"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/jetradarmobile/snowfall/SnowfallView$UpdateSnowflakesThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/jetradarmobile/snowfall/SnowfallView$updateSnowflakes$1;

    invoke-direct {v1, p0}, Lcom/jetradarmobile/snowfall/SnowfallView$updateSnowflakes$1;-><init>(Lcom/jetradarmobile/snowfall/SnowfallView;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    new-instance v0, Lcom/jetradarmobile/snowfall/SnowfallView$UpdateSnowflakesThread;

    invoke-direct {v0}, Lcom/jetradarmobile/snowfall/SnowfallView$UpdateSnowflakesThread;-><init>()V

    iput-object v0, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->updateSnowflakesThread:Lcom/jetradarmobile/snowfall/SnowfallView$UpdateSnowflakesThread;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->updateSnowflakesThread:Lcom/jetradarmobile/snowfall/SnowfallView$UpdateSnowflakesThread;

    if-nez v0, :cond_0

    const-string v1, "updateSnowflakesThread"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/jetradarmobile/snowfall/SnowfallView$UpdateSnowflakesThread;->quit()Z

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/jetradarmobile/snowfall/SnowfallView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakes:[Lcom/jetradarmobile/snowfall/Snowflake;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v6, v0, v4

    invoke-virtual {v6}, Lcom/jetradarmobile/snowfall/Snowflake;->isStillFalling()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6, p1}, Lcom/jetradarmobile/snowfall/Snowflake;->draw(Landroid/graphics/Canvas;)V

    const/4 v5, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :cond_3
    const/16 v0, 0x8

    if-eqz v5, :cond_4

    invoke-direct {p0}, Lcom/jetradarmobile/snowfall/SnowfallView;->updateSnowflakes()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0}, Lcom/jetradarmobile/snowfall/SnowfallView;->setVisibility(I)V

    :goto_1
    iget-object v3, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakes:[Lcom/jetradarmobile/snowfall/Snowflake;

    if-eqz v3, :cond_7

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    array-length v5, v3

    :goto_2
    if-ge v1, v5, :cond_6

    aget-object v6, v3, v1

    invoke-virtual {v6}, Lcom/jetradarmobile/snowfall/Snowflake;->isStillFalling()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    check-cast v4, Ljava/util/List;

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_9

    move-object v1, v4

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v2

    if-ne v1, v2, :cond_9

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jetradarmobile/snowfall/Snowflake;

    invoke-virtual {v1, p1}, Lcom/jetradarmobile/snowfall/Snowflake;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4

    :cond_8
    invoke-direct {p0}, Lcom/jetradarmobile/snowfall/SnowfallView;->updateSnowflakes()V

    goto :goto_5

    :cond_9
    invoke-virtual {p0, v0}, Lcom/jetradarmobile/snowfall/SnowfallView;->setVisibility(I)V

    :goto_5
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/jetradarmobile/snowfall/SnowfallView;->createSnowflakes()[Lcom/jetradarmobile/snowfall/Snowflake;

    move-result-object p1

    iput-object p1, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakes:[Lcom/jetradarmobile/snowfall/Snowflake;

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 4

    const-string v0, "changedView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    move-object v0, p0

    check-cast v0, Lcom/jetradarmobile/snowfall/SnowfallView;

    if-ne p1, p0, :cond_0

    const/16 p1, 0x8

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakes:[Lcom/jetradarmobile/snowfall/Snowflake;

    if-eqz p1, :cond_0

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lcom/jetradarmobile/snowfall/Snowflake;->reset$snowfall_release$default(Lcom/jetradarmobile/snowfall/Snowflake;Ljava/lang/Double;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final restartFalling()V
    .locals 5

    iget-object v0, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakes:[Lcom/jetradarmobile/snowfall/Snowflake;

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/jetradarmobile/snowfall/Snowflake;->setShouldRecycleFalling(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final stopFalling()V
    .locals 5

    iget-object v0, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakes:[Lcom/jetradarmobile/snowfall/Snowflake;

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4, v2}, Lcom/jetradarmobile/snowfall/Snowflake;->setShouldRecycleFalling(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
