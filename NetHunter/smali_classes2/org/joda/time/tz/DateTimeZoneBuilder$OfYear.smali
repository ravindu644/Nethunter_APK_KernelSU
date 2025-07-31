.class final Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;
.super Ljava/lang/Object;
.source "DateTimeZoneBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/tz/DateTimeZoneBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfYear"
.end annotation


# instance fields
.field final iAdvance:Z

.field final iDayOfMonth:I

.field final iDayOfWeek:I

.field final iMillisOfDay:I

.field final iMode:C

.field final iMonthOfYear:I


# direct methods
.method constructor <init>(CIIIZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x75

    if-eq p1, v0, :cond_1

    const/16 v0, 0x77

    if-eq p1, v0, :cond_1

    const/16 v0, 0x73

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Unknown mode: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    iput-char p1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMode:C

    iput p2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMonthOfYear:I

    iput p3, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iDayOfMonth:I

    iput p4, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iDayOfWeek:I

    iput-boolean p5, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iAdvance:Z

    iput p6, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMillisOfDay:I

    return-void
.end method

.method static readFrom(Ljava/io/DataInput;)Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v7, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    int-to-char v1, v0

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v3

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v4

    invoke-interface {p0}, Ljava/io/DataInput;->readBoolean()Z

    move-result v5

    invoke-static {p0}, Lorg/joda/time/tz/DateTimeZoneBuilder;->readMillis(Ljava/io/DataInput;)J

    move-result-wide v8

    long-to-int v6, v8

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;-><init>(CIIIZI)V

    return-object v7
.end method

.method private setDayOfMonth(Lorg/joda/time/Chronology;J)J
    .locals 2

    iget v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iDayOfMonth:I

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object p1

    iget v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iDayOfMonth:I

    invoke-virtual {p1, p2, p3, v0}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p3, v1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide p2

    invoke-virtual {p1}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p2, p3, v1}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide p2

    invoke-virtual {p1}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object p1

    iget v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iDayOfMonth:I

    invoke-virtual {p1, p2, p3, v0}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide p1

    :goto_0
    return-wide p1
.end method

.method private setDayOfMonthNext(Lorg/joda/time/Chronology;J)J
    .locals 3

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->setDayOfMonth(Lorg/joda/time/Chronology;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMonthOfYear:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iDayOfMonth:I

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_1

    :goto_0
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/joda/time/DateTimeField;->isLeap(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p3, v1}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide p2

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->setDayOfMonth(Lorg/joda/time/Chronology;J)J

    move-result-wide p1

    :goto_1
    return-wide p1

    :cond_1
    throw v0
.end method

.method private setDayOfMonthPrevious(Lorg/joda/time/Chronology;J)J
    .locals 3

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->setDayOfMonth(Lorg/joda/time/Chronology;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMonthOfYear:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iDayOfMonth:I

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_1

    :goto_0
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/joda/time/DateTimeField;->isLeap(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, p2, p3, v1}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide p2

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->setDayOfMonth(Lorg/joda/time/Chronology;J)J

    move-result-wide p1

    :goto_1
    return-wide p1

    :cond_1
    throw v0
.end method

.method private setDayOfWeek(Lorg/joda/time/Chronology;J)J
    .locals 2

    invoke-virtual {p1}, Lorg/joda/time/Chronology;->dayOfWeek()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iDayOfWeek:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_2

    iget-boolean v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iAdvance:Z

    if-eqz v0, :cond_0

    if-gez v1, :cond_1

    add-int/lit8 v1, v1, 0x7

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x7

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->dayOfWeek()Lorg/joda/time/DateTimeField;

    move-result-object p1

    invoke-virtual {p1, p2, p3, v1}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide p2

    :cond_2
    return-wide p2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;

    iget-char v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMode:C

    iget-char v3, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMode:C

    if-ne v1, v3, :cond_1

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMonthOfYear:I

    iget v3, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMonthOfYear:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iDayOfMonth:I

    iget v3, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iDayOfMonth:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iDayOfWeek:I

    iget v3, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iDayOfWeek:I

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iAdvance:Z

    iget-boolean v3, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iAdvance:Z

    if-ne v1, v3, :cond_1

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMillisOfDay:I

    iget p1, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMillisOfDay:I

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-char v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMode:C

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMonthOfYear:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iDayOfMonth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iDayOfWeek:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iAdvance:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMillisOfDay:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public next(JII)J
    .locals 7

    iget-char v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMode:C

    const/16 v1, 0x77

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    add-int/2addr p3, p4

    goto :goto_0

    :cond_0
    const/16 p4, 0x73

    if-ne v0, p4, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    int-to-long p3, p3

    add-long/2addr p1, p3

    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    iget v3, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMonthOfYear:I

    invoke-virtual {v1, p1, p2, v3}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v3

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-virtual {v1, v3, v4, v2}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v3

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v1

    iget v5, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMillisOfDay:I

    const v6, 0x5265bff

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v1, v3, v4, v5}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide v3

    invoke-direct {p0, v0, v3, v4}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->setDayOfMonthNext(Lorg/joda/time/Chronology;J)J

    move-result-wide v3

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iDayOfWeek:I

    const/4 v5, 0x1

    if-nez v1, :cond_2

    cmp-long v1, v3, p1

    if-gtz v1, :cond_3

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object p1

    invoke-virtual {p1, v3, v4, v5}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide p1

    invoke-direct {p0, v0, p1, p2}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->setDayOfMonthNext(Lorg/joda/time/Chronology;J)J

    move-result-wide v3

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0, v3, v4}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->setDayOfWeek(Lorg/joda/time/Chronology;J)J

    move-result-wide v3

    cmp-long v1, v3, p1

    if-gtz v1, :cond_3

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object p1

    invoke-virtual {p1, v3, v4, v5}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide p1

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    iget v3, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMonthOfYear:I

    invoke-virtual {v1, p1, p2, v3}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide p1

    invoke-direct {p0, v0, p1, p2}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->setDayOfMonthNext(Lorg/joda/time/Chronology;J)J

    move-result-wide p1

    invoke-direct {p0, v0, p1, p2}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->setDayOfWeek(Lorg/joda/time/Chronology;J)J

    move-result-wide v3

    :cond_3
    :goto_1
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object p1

    invoke-virtual {p1, v3, v4, v2}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide p1

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v0

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMillisOfDay:I

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide p1

    sub-long/2addr p1, p3

    return-wide p1
.end method

.method public previous(JII)J
    .locals 6

    iget-char v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMode:C

    const/16 v1, 0x77

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    add-int/2addr p3, p4

    goto :goto_0

    :cond_0
    const/16 p4, 0x73

    if-ne v0, p4, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    int-to-long p3, p3

    add-long/2addr p1, p3

    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    iget v3, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMonthOfYear:I

    invoke-virtual {v1, p1, p2, v3}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v3

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-virtual {v1, v3, v4, v2}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v3

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v1

    iget v5, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMillisOfDay:I

    invoke-virtual {v1, v3, v4, v5}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide v3

    invoke-direct {p0, v0, v3, v4}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->setDayOfMonthPrevious(Lorg/joda/time/Chronology;J)J

    move-result-wide v3

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iDayOfWeek:I

    const/4 v5, -0x1

    if-nez v1, :cond_2

    cmp-long v1, v3, p1

    if-ltz v1, :cond_3

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object p1

    invoke-virtual {p1, v3, v4, v5}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide p1

    invoke-direct {p0, v0, p1, p2}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->setDayOfMonthPrevious(Lorg/joda/time/Chronology;J)J

    move-result-wide v3

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0, v3, v4}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->setDayOfWeek(Lorg/joda/time/Chronology;J)J

    move-result-wide v3

    cmp-long v1, v3, p1

    if-ltz v1, :cond_3

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object p1

    invoke-virtual {p1, v3, v4, v5}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide p1

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    iget v3, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMonthOfYear:I

    invoke-virtual {v1, p1, p2, v3}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide p1

    invoke-direct {p0, v0, p1, p2}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->setDayOfMonthPrevious(Lorg/joda/time/Chronology;J)J

    move-result-wide p1

    invoke-direct {p0, v0, p1, p2}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->setDayOfWeek(Lorg/joda/time/Chronology;J)J

    move-result-wide v3

    :cond_3
    :goto_1
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object p1

    invoke-virtual {p1, v3, v4, v2}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide p1

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v0

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMillisOfDay:I

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide p1

    sub-long/2addr p1, p3

    return-wide p1
.end method

.method public setInstant(III)J
    .locals 3

    iget-char v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMode:C

    const/16 v1, 0x77

    if-ne v0, v1, :cond_0

    add-int/2addr p2, p3

    goto :goto_0

    :cond_0
    const/16 p3, 0x73

    if-ne v0, p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object p3

    invoke-virtual {p3}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p3}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object p1

    iget v2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMonthOfYear:I

    invoke-virtual {p1, v0, v1, v2}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p3}, Lorg/joda/time/Chronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object p1

    iget v2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMillisOfDay:I

    invoke-virtual {p1, v0, v1, v2}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-direct {p0, p3, v0, v1}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->setDayOfMonth(Lorg/joda/time/Chronology;J)J

    move-result-wide v0

    iget p1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iDayOfWeek:I

    if-eqz p1, :cond_2

    invoke-direct {p0, p3, v0, v1}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->setDayOfWeek(Lorg/joda/time/Chronology;J)J

    move-result-wide v0

    :cond_2
    int-to-long p1, p2

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[OfYear]\nMode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMode:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\nMonthOfYear: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMonthOfYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nDayOfMonth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iDayOfMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nDayOfWeek: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iDayOfWeek:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nAdvanceDayOfWeek: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iAdvance:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nMillisOfDay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMillisOfDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/DataOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-char v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMode:C

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMonthOfYear:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iDayOfMonth:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iDayOfWeek:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget-boolean v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iAdvance:Z

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    iget v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMillisOfDay:I

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lorg/joda/time/tz/DateTimeZoneBuilder;->writeMillis(Ljava/io/DataOutput;J)V

    return-void
.end method
