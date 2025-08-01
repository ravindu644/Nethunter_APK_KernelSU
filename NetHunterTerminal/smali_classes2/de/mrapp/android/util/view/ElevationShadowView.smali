.class public Lde/mrapp/android/util/view/ElevationShadowView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "ElevationShadowView.java"


# instance fields
.field private elevation:I

.field private emulateParallelLight:Z

.field private orientation:Lde/mrapp/android/util/ElevationUtil$Orientation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lde/mrapp/android/util/view/ElevationShadowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, p1}, Lde/mrapp/android/util/view/ElevationShadowView;->initialize(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1}, Lde/mrapp/android/util/view/ElevationShadowView;->initialize(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private adaptElevationShadow()V
    .locals 4

    invoke-virtual {p0}, Lde/mrapp/android/util/view/ElevationShadowView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lde/mrapp/android/util/view/ElevationShadowView;->elevation:I

    iget-object v2, p0, Lde/mrapp/android/util/view/ElevationShadowView;->orientation:Lde/mrapp/android/util/ElevationUtil$Orientation;

    iget-boolean v3, p0, Lde/mrapp/android/util/view/ElevationShadowView;->emulateParallelLight:Z

    invoke-static {v0, v1, v2, v3}, Lde/mrapp/android/util/ElevationUtil;->createElevationShadow(Landroid/content/Context;ILde/mrapp/android/util/ElevationUtil$Orientation;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/util/view/ElevationShadowView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lde/mrapp/android/util/view/ElevationShadowView;->orientation:Lde/mrapp/android/util/ElevationUtil$Orientation;

    sget-object v1, Lde/mrapp/android/util/ElevationUtil$Orientation;->LEFT:Lde/mrapp/android/util/ElevationUtil$Orientation;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lde/mrapp/android/util/view/ElevationShadowView;->orientation:Lde/mrapp/android/util/ElevationUtil$Orientation;

    sget-object v1, Lde/mrapp/android/util/ElevationUtil$Orientation;->TOP:Lde/mrapp/android/util/ElevationUtil$Orientation;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lde/mrapp/android/util/view/ElevationShadowView;->orientation:Lde/mrapp/android/util/ElevationUtil$Orientation;

    sget-object v1, Lde/mrapp/android/util/ElevationUtil$Orientation;->RIGHT:Lde/mrapp/android/util/ElevationUtil$Orientation;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lde/mrapp/android/util/view/ElevationShadowView;->orientation:Lde/mrapp/android/util/ElevationUtil$Orientation;

    sget-object v1, Lde/mrapp/android/util/ElevationUtil$Orientation;->BOTTOM:Lde/mrapp/android/util/ElevationUtil$Orientation;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    :goto_1
    invoke-virtual {p0, v0}, Lde/mrapp/android/util/view/ElevationShadowView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method private initialize(Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/util/view/ElevationShadowView;->obtainStyledAttributes(Landroid/util/AttributeSet;II)V

    invoke-direct {p0}, Lde/mrapp/android/util/view/ElevationShadowView;->adaptElevationShadow()V

    return-void
.end method

.method private obtainEmulateParallelLight(Landroid/content/res/TypedArray;)V
    .locals 2

    invoke-virtual {p0}, Lde/mrapp/android/util/view/ElevationShadowView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lde/mrapp/android/util/R$bool;->elevation_shadow_view_emulate_parallel_light_default_value:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sget v1, Lde/mrapp/android/util/R$styleable;->ElevationShadowView_emulateParallelLight:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lde/mrapp/android/util/view/ElevationShadowView;->emulateParallelLight:Z

    return-void
.end method

.method private obtainShadowElevation(Landroid/content/res/TypedArray;)V
    .locals 3

    invoke-virtual {p0}, Lde/mrapp/android/util/view/ElevationShadowView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lde/mrapp/android/util/R$dimen;->elevation_shadow_view_shadow_elevation_default_value:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lde/mrapp/android/util/view/ElevationShadowView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lde/mrapp/android/util/R$styleable;->ElevationShadowView_shadowElevation:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-static {v1, p1}, Lde/mrapp/android/util/DisplayUtil;->pixelsToDp(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lde/mrapp/android/util/view/ElevationShadowView;->elevation:I

    return-void
.end method

.method private obtainShadowOrientation(Landroid/content/res/TypedArray;)V
    .locals 2

    invoke-virtual {p0}, Lde/mrapp/android/util/view/ElevationShadowView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lde/mrapp/android/util/R$integer;->elevation_shadow_view_shadow_orientation_default_value:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sget v1, Lde/mrapp/android/util/R$styleable;->ElevationShadowView_shadowOrientation:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    invoke-static {p1}, Lde/mrapp/android/util/ElevationUtil$Orientation;->fromValue(I)Lde/mrapp/android/util/ElevationUtil$Orientation;

    move-result-object p1

    iput-object p1, p0, Lde/mrapp/android/util/view/ElevationShadowView;->orientation:Lde/mrapp/android/util/ElevationUtil$Orientation;

    return-void
.end method

.method private obtainStyledAttributes(Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-virtual {p0}, Lde/mrapp/android/util/view/ElevationShadowView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/util/R$styleable;->ElevationShadowView:[I

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    invoke-direct {p0, p1}, Lde/mrapp/android/util/view/ElevationShadowView;->obtainShadowElevation(Landroid/content/res/TypedArray;)V

    invoke-direct {p0, p1}, Lde/mrapp/android/util/view/ElevationShadowView;->obtainShadowOrientation(Landroid/content/res/TypedArray;)V

    invoke-direct {p0, p1}, Lde/mrapp/android/util/view/ElevationShadowView;->obtainEmulateParallelLight(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method


# virtual methods
.method public final emulateParallelLight(Z)V
    .locals 0

    iput-boolean p1, p0, Lde/mrapp/android/util/view/ElevationShadowView;->emulateParallelLight:Z

    invoke-direct {p0}, Lde/mrapp/android/util/view/ElevationShadowView;->adaptElevationShadow()V

    return-void
.end method

.method public final getShadowElevation()I
    .locals 1

    iget v0, p0, Lde/mrapp/android/util/view/ElevationShadowView;->elevation:I

    return v0
.end method

.method public final getShadowOrientation()Lde/mrapp/android/util/ElevationUtil$Orientation;
    .locals 1

    iget-object v0, p0, Lde/mrapp/android/util/view/ElevationShadowView;->orientation:Lde/mrapp/android/util/ElevationUtil$Orientation;

    return-object v0
.end method

.method public final isParallelLightEmulated()Z
    .locals 1

    iget-boolean v0, p0, Lde/mrapp/android/util/view/ElevationShadowView;->emulateParallelLight:Z

    return v0
.end method

.method public final setShadowElevation(I)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "The elevation must be at least 0"

    invoke-static {p1, v0, v1}, Lde/mrapp/android/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    const/16 v0, 0x10

    const-string v1, "The elevation must be at maximum 16"

    invoke-static {p1, v0, v1}, Lde/mrapp/android/util/Condition;->ensureAtMaximum(IILjava/lang/String;)V

    iput p1, p0, Lde/mrapp/android/util/view/ElevationShadowView;->elevation:I

    invoke-direct {p0}, Lde/mrapp/android/util/view/ElevationShadowView;->adaptElevationShadow()V

    return-void
.end method

.method public final setShadowOrientation(Lde/mrapp/android/util/ElevationUtil$Orientation;)V
    .locals 1

    const-string v0, "The orientation may not be null"

    invoke-static {p1, v0}, Lde/mrapp/android/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lde/mrapp/android/util/view/ElevationShadowView;->orientation:Lde/mrapp/android/util/ElevationUtil$Orientation;

    invoke-direct {p0}, Lde/mrapp/android/util/view/ElevationShadowView;->adaptElevationShadow()V

    return-void
.end method
