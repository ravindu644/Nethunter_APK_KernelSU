.class public Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;
.super Landroid/graphics/drawable/Drawable;
.source "DrawableContainerCompat.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$Api21Impl;,
        Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$BlockInvalidateCallback;,
        Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_DITHER:Z = true

.field private static final TAG:Ljava/lang/String; = "DrawableContainerCompat"


# instance fields
.field private mAlpha:I

.field private mAnimationRunnable:Ljava/lang/Runnable;

.field private mBlockInvalidateCallback:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$BlockInvalidateCallback;

.field private mCurIndex:I

.field private mCurrDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

.field private mEnterAnimationEnd:J

.field private mExitAnimationEnd:J

.field private mHasAlpha:Z

.field private mHotspotBounds:Landroid/graphics/Rect;

.field private mLastDrawable:Landroid/graphics/drawable/Drawable;

.field private mMutated:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xff

    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mAlpha:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurIndex:I

    return-void
.end method

.method private initializeDrawableForDisplay(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mBlockInvalidateCallback:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$BlockInvalidateCallback;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$BlockInvalidateCallback;

    invoke-direct {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$BlockInvalidateCallback;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mBlockInvalidateCallback:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$BlockInvalidateCallback;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mBlockInvalidateCallback:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$BlockInvalidateCallback;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$BlockInvalidateCallback;->wrap(Landroid/graphics/drawable/Drawable$Callback;)Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$BlockInvalidateCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mEnterFadeDuration:I

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mHasAlpha:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mAlpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget-boolean v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mHasColorFilter:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget-object v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget-boolean v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mHasTintList:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget-object v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_3
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget-boolean v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mHasTintMode:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget-object v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget-boolean v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mDither:Z

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->getState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_5

    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    :cond_5
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget-boolean v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mAutoMirrored:Z

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mHotspotBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_6

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1, v1, v2, v3, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mBlockInvalidateCallback:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$BlockInvalidateCallback;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$BlockInvalidateCallback;->unwrap()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mBlockInvalidateCallback:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$BlockInvalidateCallback;

    invoke-virtual {v1}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$BlockInvalidateCallback;->unwrap()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    throw v0
.end method

.method private needsMirroring()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->isAutoMirrored()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static resolveDensity(Landroid/content/res/Resources;I)I
    .locals 0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    :goto_0
    if-nez p1, :cond_1

    const/16 p1, 0xa0

    :cond_1
    return p1
.end method


# virtual methods
.method animate(Z)V
    .locals 13

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mHasAlpha:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    const-wide/16 v4, 0xff

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    if-eqz v3, :cond_1

    iget-wide v9, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mEnterAnimationEnd:J

    cmp-long v11, v9, v6

    if-eqz v11, :cond_2

    cmp-long v11, v9, v1

    if-gtz v11, :cond_0

    iget v9, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mAlpha:I

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iput-wide v6, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mEnterAnimationEnd:J

    goto :goto_0

    :cond_0
    sub-long/2addr v9, v1

    mul-long v9, v9, v4

    long-to-int v3, v9

    iget-object v9, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget v9, v9, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mEnterFadeDuration:I

    div-int/2addr v3, v9

    iget-object v9, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    rsub-int v3, v3, 0xff

    iget v10, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mAlpha:I

    mul-int v3, v3, v10

    div-int/lit16 v3, v3, 0xff

    invoke-virtual {v9, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    iput-wide v6, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mEnterAnimationEnd:J

    :cond_2
    :goto_0
    const/4 v3, 0x0

    :goto_1
    iget-object v9, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_4

    iget-wide v10, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mExitAnimationEnd:J

    cmp-long v12, v10, v6

    if-eqz v12, :cond_5

    cmp-long v12, v10, v1

    if-gtz v12, :cond_3

    invoke-virtual {v9, v8, v8}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    iput-wide v6, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mExitAnimationEnd:J

    goto :goto_2

    :cond_3
    sub-long/2addr v10, v1

    mul-long v10, v10, v4

    long-to-int v3, v10

    iget-object v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget v4, v4, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mExitFadeDuration:I

    div-int/2addr v3, v4

    iget-object v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mAlpha:I

    mul-int v3, v3, v5

    div-int/lit16 v3, v3, 0xff

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_3

    :cond_4
    iput-wide v6, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mExitAnimationEnd:J

    :cond_5
    :goto_2
    move v0, v3

    :goto_3
    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    iget-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, p1, v1, v2}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_6
    return-void
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    invoke-virtual {v0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->applyTheme(Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method clearMutated()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->clearMutated()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mMutated:Z

    return-void
.end method

.method cloneConstantState()Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mAlpha:I

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    invoke-virtual {v1}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mChangingConfigurations:I

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getCurrentIndex()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurIndex:I

    return v0
.end method

.method public getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mHotspotBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->getConstantHeight()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->getConstantWidth()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->getConstantMinimumHeight()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->getConstantMinimumWidth()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getOpacity()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->getOpacity()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x2

    :goto_1
    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$Api21Impl;->getOutline(Landroid/graphics/drawable/Drawable;Landroid/graphics/Outline;)V

    :cond_0
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->getConstantPadding()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    or-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    or-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    :goto_0
    invoke-direct {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->needsMirroring()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iput v2, p1, Landroid/graphics/Rect;->left:I

    iput v1, p1, Landroid/graphics/Rect;->right:I

    :cond_3
    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->invalidateCache()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget-boolean v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mAutoMirrored:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->isStateful()Z

    move-result v0

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 7

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    iget-boolean v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mHasAlpha:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    iget-wide v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mExitAnimationEnd:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    iput-wide v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mExitAnimationEnd:J

    const/4 v0, 0x1

    :cond_2
    iget-wide v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mEnterAnimationEnd:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    iput-wide v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mEnterAnimationEnd:J

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->invalidateSelf()V

    :cond_4
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->cloneConstantState()Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mutate()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->setConstantState(Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mMutated:Z

    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->getCurrentIndex()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->setLayoutDirection(II)Z

    move-result p1

    return p1
.end method

.method protected onLevelChange(I)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected onStateChange([I)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method selectDrawable(I)Z
    .locals 9

    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurIndex:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mExitFadeDuration:I

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    if-lez v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mExitFadeDuration:I

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mExitAnimationEnd:J

    goto :goto_0

    :cond_2
    iput-object v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    iput-wide v5, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mExitAnimationEnd:J

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_4
    :goto_0
    if-ltz p1, :cond_6

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mNumChildren:I

    if-ge p1, v0, :cond_6

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    invoke-virtual {v0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurIndex:I

    if-eqz v0, :cond_7

    iget-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget p1, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mEnterFadeDuration:I

    if-lez p1, :cond_5

    iget-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget p1, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mEnterFadeDuration:I

    int-to-long v7, p1

    add-long/2addr v2, v7

    iput-wide v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mEnterAnimationEnd:J

    :cond_5
    invoke-direct {p0, v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->initializeDrawableForDisplay(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_6
    iput-object v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurIndex:I

    :cond_7
    :goto_1
    iget-wide v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mEnterAnimationEnd:J

    const/4 p1, 0x1

    cmp-long v2, v0, v5

    if-nez v2, :cond_8

    iget-wide v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mExitAnimationEnd:J

    cmp-long v2, v0, v5

    if-eqz v2, :cond_a

    :cond_8
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mAnimationRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_9

    new-instance v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$1;-><init>(Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;)V

    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mAnimationRunnable:Ljava/lang/Runnable;

    goto :goto_2

    :cond_9
    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->unscheduleSelf(Ljava/lang/Runnable;)V

    :goto_2
    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->animate(Z)V

    :cond_a
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->invalidateSelf()V

    return p1
.end method

.method public setAlpha(I)V
    .locals 6

    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mHasAlpha:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mAlpha:I

    if-eq v0, p1, :cond_2

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mHasAlpha:Z

    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mAlpha:I

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-wide v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mEnterAnimationEnd:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->animate(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget-boolean v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mAutoMirrored:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iput-boolean p1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mAutoMirrored:Z

    iget-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget-boolean v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mAutoMirrored:Z

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mHasColorFilter:Z

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget-object v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iput-object p1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method setConstantState(Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;)V
    .locals 1

    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurIndex:I

    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->initializeDrawableForDisplay(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method setCurrentIndex(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->selectDrawable(I)Z

    return-void
.end method

.method public setDither(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget-boolean v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mDither:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iput-boolean p1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mDither:Z

    iget-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget-boolean v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mDither:Z

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    :cond_0
    return-void
.end method

.method public setEnterFadeDuration(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iput p1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mEnterFadeDuration:I

    return-void
.end method

.method public setExitFadeDuration(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iput p1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mExitFadeDuration:I

    return-void
.end method

.method public setHotspot(FF)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    :cond_0
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mHotspotBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mHotspotBounds:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-static {v0, p1, p2, p3, p4}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_1
    return-void
.end method

.method public setTint(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mHasTintList:Z

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget-object v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iput-object p1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mHasTintMode:Z

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iget-object v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    iput-object p1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method final updateDensity(Landroid/content/res/Resources;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    invoke-virtual {v0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;->updateDensity(Landroid/content/res/Resources;)V

    return-void
.end method
