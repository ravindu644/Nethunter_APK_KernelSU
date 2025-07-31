.class public final Lorg/joda/time/tz/FixedDateTimeZone;
.super Lorg/joda/time/DateTimeZone;
.source "FixedDateTimeZone.java"


# static fields
.field private static final serialVersionUID:J = -0x30c0b99837523604L


# instance fields
.field private final iNameKey:Ljava/lang/String;

.field private final iStandardOffset:I

.field private final iWallOffset:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/joda/time/DateTimeZone;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/joda/time/tz/FixedDateTimeZone;->iNameKey:Ljava/lang/String;

    iput p3, p0, Lorg/joda/time/tz/FixedDateTimeZone;->iWallOffset:I

    iput p4, p0, Lorg/joda/time/tz/FixedDateTimeZone;->iStandardOffset:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/joda/time/tz/FixedDateTimeZone;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lorg/joda/time/tz/FixedDateTimeZone;

    invoke-virtual {p0}, Lorg/joda/time/tz/FixedDateTimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/joda/time/tz/FixedDateTimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/joda/time/tz/FixedDateTimeZone;->iStandardOffset:I

    iget v3, p1, Lorg/joda/time/tz/FixedDateTimeZone;->iStandardOffset:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lorg/joda/time/tz/FixedDateTimeZone;->iWallOffset:I

    iget p1, p1, Lorg/joda/time/tz/FixedDateTimeZone;->iWallOffset:I

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getNameKey(J)Ljava/lang/String;
    .locals 0

    iget-object p1, p0, Lorg/joda/time/tz/FixedDateTimeZone;->iNameKey:Ljava/lang/String;

    return-object p1
.end method

.method public getOffset(J)I
    .locals 0

    iget p1, p0, Lorg/joda/time/tz/FixedDateTimeZone;->iWallOffset:I

    return p1
.end method

.method public getOffsetFromLocal(J)I
    .locals 0

    iget p1, p0, Lorg/joda/time/tz/FixedDateTimeZone;->iWallOffset:I

    return p1
.end method

.method public getStandardOffset(J)I
    .locals 0

    iget p1, p0, Lorg/joda/time/tz/FixedDateTimeZone;->iStandardOffset:I

    return p1
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/joda/time/tz/FixedDateTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/joda/time/tz/FixedDateTimeZone;->iStandardOffset:I

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    iget v1, p0, Lorg/joda/time/tz/FixedDateTimeZone;->iWallOffset:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public isFixed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public nextTransition(J)J
    .locals 0

    return-wide p1
.end method

.method public previousTransition(J)J
    .locals 0

    return-wide p1
.end method

.method public toTimeZone()Ljava/util/TimeZone;
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/tz/FixedDateTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GMT"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/joda/time/tz/FixedDateTimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/SimpleTimeZone;

    iget v1, p0, Lorg/joda/time/tz/FixedDateTimeZone;->iWallOffset:I

    invoke-virtual {p0}, Lorg/joda/time/tz/FixedDateTimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    return-object v0
.end method
