.class public final Landroidx/core/view/ScaleGestureDetectorCompat;
.super Ljava/lang/Object;
.source "ScaleGestureDetectorCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isQuickScaleEnabled(Landroid/view/ScaleGestureDetector;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scaleGestureDetector"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/ScaleGestureDetector;->isQuickScaleEnabled()Z

    move-result p0

    return p0
.end method

.method public static isQuickScaleEnabled(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scaleGestureDetector"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    check-cast p0, Landroid/view/ScaleGestureDetector;

    invoke-static {p0}, Landroidx/core/view/ScaleGestureDetectorCompat;->isQuickScaleEnabled(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public static setQuickScaleEnabled(Landroid/view/ScaleGestureDetector;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scaleGestureDetector",
            "enabled"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    return-void
.end method

.method public static setQuickScaleEnabled(Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scaleGestureDetector",
            "enabled"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    check-cast p0, Landroid/view/ScaleGestureDetector;

    invoke-static {p0, p1}, Landroidx/core/view/ScaleGestureDetectorCompat;->setQuickScaleEnabled(Landroid/view/ScaleGestureDetector;Z)V

    return-void
.end method
