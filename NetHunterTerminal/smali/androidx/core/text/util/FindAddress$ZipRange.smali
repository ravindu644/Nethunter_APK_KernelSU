.class Landroidx/core/text/util/FindAddress$ZipRange;
.super Ljava/lang/Object;
.source "FindAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/util/FindAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZipRange"
.end annotation


# instance fields
.field mException1:I

.field mException2:I

.field mHigh:I

.field mLow:I


# direct methods
.method constructor <init>(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "low",
            "high",
            "exception1",
            "exception2"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/core/text/util/FindAddress$ZipRange;->mLow:I

    iput p2, p0, Landroidx/core/text/util/FindAddress$ZipRange;->mHigh:I

    iput p3, p0, Landroidx/core/text/util/FindAddress$ZipRange;->mException1:I

    iput p4, p0, Landroidx/core/text/util/FindAddress$ZipRange;->mException2:I

    return-void
.end method


# virtual methods
.method matches(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zipCode"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget v0, p0, Landroidx/core/text/util/FindAddress$ZipRange;->mLow:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Landroidx/core/text/util/FindAddress$ZipRange;->mHigh:I

    if-le p1, v0, :cond_1

    :cond_0
    iget v0, p0, Landroidx/core/text/util/FindAddress$ZipRange;->mException1:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Landroidx/core/text/util/FindAddress$ZipRange;->mException2:I

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method
