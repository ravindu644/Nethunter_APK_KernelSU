.class public final Lcom/google/common/primitives/UnsignedInteger;
.super Ljava/lang/Number;
.source "UnsignedInteger.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation runtime Lcom/google/common/primitives/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lcom/google/common/primitives/UnsignedInteger;",
        ">;"
    }
.end annotation


# static fields
.field public static final MAX_VALUE:Lcom/google/common/primitives/UnsignedInteger;

.field public static final ONE:Lcom/google/common/primitives/UnsignedInteger;

.field public static final ZERO:Lcom/google/common/primitives/UnsignedInteger;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInteger;->fromIntBits(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object v0

    sput-object v0, Lcom/google/common/primitives/UnsignedInteger;->ZERO:Lcom/google/common/primitives/UnsignedInteger;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInteger;->fromIntBits(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object v0

    sput-object v0, Lcom/google/common/primitives/UnsignedInteger;->ONE:Lcom/google/common/primitives/UnsignedInteger;

    const/4 v0, -0x1

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInteger;->fromIntBits(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object v0

    sput-object v0, Lcom/google/common/primitives/UnsignedInteger;->MAX_VALUE:Lcom/google/common/primitives/UnsignedInteger;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    and-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    return-void
.end method

.method public static fromIntBits(I)Lcom/google/common/primitives/UnsignedInteger;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bits"
        }
    .end annotation

    new-instance v0, Lcom/google/common/primitives/UnsignedInteger;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/UnsignedInteger;-><init>(I)V

    return-object v0
.end method

.method public static valueOf(J)Lcom/google/common/primitives/UnsignedInteger;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    cmp-long v2, v0, p0

    if-nez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "value (%s) is outside the range for an unsigned integer value"

    invoke-static {v0, v1, p0, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    long-to-int p1, p0

    invoke-static {p1}, Lcom/google/common/primitives/UnsignedInteger;->fromIntBits(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/primitives/UnsignedInteger;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string"
        }
    .end annotation

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/google/common/primitives/UnsignedInteger;->valueOf(Ljava/lang/String;I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;I)Lcom/google/common/primitives/UnsignedInteger;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "string",
            "radix"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/primitives/UnsignedInts;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Lcom/google/common/primitives/UnsignedInteger;->fromIntBits(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/math/BigInteger;)Lcom/google/common/primitives/UnsignedInteger;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "value (%s) is outside the range for an unsigned integer value"

    invoke-static {v0, v1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/common/primitives/UnsignedInteger;->fromIntBits(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bigIntegerValue()Ljava/math/BigInteger;
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/primitives/UnsignedInteger;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lcom/google/common/primitives/UnsignedInteger;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    iget p1, p1, Lcom/google/common/primitives/UnsignedInteger;->value:I

    invoke-static {v0, p1}, Lcom/google/common/primitives/UnsignedInts;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "other"
        }
    .end annotation

    check-cast p1, Lcom/google/common/primitives/UnsignedInteger;

    invoke-virtual {p0, p1}, Lcom/google/common/primitives/UnsignedInteger;->compareTo(Lcom/google/common/primitives/UnsignedInteger;)I

    move-result p1

    return p1
.end method

.method public dividedBy(Lcom/google/common/primitives/UnsignedInteger;)Lcom/google/common/primitives/UnsignedInteger;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/primitives/UnsignedInteger;

    iget p1, p1, Lcom/google/common/primitives/UnsignedInteger;->value:I

    invoke-static {v0, p1}, Lcom/google/common/primitives/UnsignedInts;->divide(II)I

    move-result p1

    invoke-static {p1}, Lcom/google/common/primitives/UnsignedInteger;->fromIntBits(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object p1

    return-object p1
.end method

.method public doubleValue()D
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/primitives/UnsignedInteger;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/common/primitives/UnsignedInteger;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/primitives/UnsignedInteger;

    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    iget p1, p1, Lcom/google/common/primitives/UnsignedInteger;->value:I

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public floatValue()F
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/primitives/UnsignedInteger;->longValue()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    return v0
.end method

.method public intValue()I
    .locals 1

    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    return v0
.end method

.method public longValue()J
    .locals 2

    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInts;->toLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public minus(Lcom/google/common/primitives/UnsignedInteger;)Lcom/google/common/primitives/UnsignedInteger;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/primitives/UnsignedInteger;

    iget p1, p1, Lcom/google/common/primitives/UnsignedInteger;->value:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInteger;->fromIntBits(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object p1

    return-object p1
.end method

.method public mod(Lcom/google/common/primitives/UnsignedInteger;)Lcom/google/common/primitives/UnsignedInteger;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/primitives/UnsignedInteger;

    iget p1, p1, Lcom/google/common/primitives/UnsignedInteger;->value:I

    invoke-static {v0, p1}, Lcom/google/common/primitives/UnsignedInts;->remainder(II)I

    move-result p1

    invoke-static {p1}, Lcom/google/common/primitives/UnsignedInteger;->fromIntBits(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lcom/google/common/primitives/UnsignedInteger;)Lcom/google/common/primitives/UnsignedInteger;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/primitives/UnsignedInteger;

    iget p1, p1, Lcom/google/common/primitives/UnsignedInteger;->value:I

    add-int/2addr v0, p1

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInteger;->fromIntBits(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object p1

    return-object p1
.end method

.method public times(Lcom/google/common/primitives/UnsignedInteger;)Lcom/google/common/primitives/UnsignedInteger;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/primitives/UnsignedInteger;

    iget p1, p1, Lcom/google/common/primitives/UnsignedInteger;->value:I

    mul-int v0, v0, p1

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInteger;->fromIntBits(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/common/primitives/UnsignedInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "radix"
        }
    .end annotation

    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    invoke-static {v0, p1}, Lcom/google/common/primitives/UnsignedInts;->toString(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
