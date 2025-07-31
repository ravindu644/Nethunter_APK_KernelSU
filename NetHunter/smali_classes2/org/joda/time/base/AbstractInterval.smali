.class public abstract Lorg/joda/time/base/AbstractInterval;
.super Ljava/lang/Object;
.source "AbstractInterval.java"

# interfaces
.implements Lorg/joda/time/ReadableInterval;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkInterval(JJ)V
    .locals 1

    cmp-long v0, p3, p1

    if-ltz v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The end instant must be greater than the start instant"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public contains(J)Z
    .locals 5

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getStartMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getEndMillis()J

    move-result-wide v2

    cmp-long v4, p1, v0

    if-ltz v4, :cond_0

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public contains(Lorg/joda/time/ReadableInstant;)Z
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->containsNow()Z

    move-result p1

    return p1

    :cond_0
    invoke-interface {p1}, Lorg/joda/time/ReadableInstant;->getMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/base/AbstractInterval;->contains(J)Z

    move-result p1

    return p1
.end method

.method public contains(Lorg/joda/time/ReadableInterval;)Z
    .locals 8

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->containsNow()Z

    move-result p1

    return p1

    :cond_0
    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getStartMillis()J

    move-result-wide v0

    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getEndMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getStartMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getEndMillis()J

    move-result-wide v6

    cmp-long p1, v4, v0

    if-gtz p1, :cond_1

    cmp-long p1, v0, v6

    if-gez p1, :cond_1

    cmp-long p1, v2, v6

    if-gtz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsNow()Z
    .locals 2

    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/base/AbstractInterval;->contains(J)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/joda/time/ReadableInterval;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/joda/time/ReadableInterval;

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getStartMillis()J

    move-result-wide v3

    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getStartMillis()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getEndMillis()J

    move-result-wide v3

    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getEndMillis()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/joda/time/field/FieldUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getEnd()Lorg/joda/time/DateTime;
    .locals 4

    new-instance v0, Lorg/joda/time/DateTime;

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getEndMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/Chronology;)V

    return-object v0
.end method

.method public getStart()Lorg/joda/time/DateTime;
    .locals 4

    new-instance v0, Lorg/joda/time/DateTime;

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getStartMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/Chronology;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getStartMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getEndMillis()J

    move-result-wide v2

    const/16 v4, 0x20

    ushr-long v5, v0, v4

    xor-long/2addr v0, v5

    long-to-int v1, v0

    const/16 v0, 0xbbf

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v4

    xor-long v1, v2, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isAfter(J)Z
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getStartMillis()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isAfter(Lorg/joda/time/ReadableInstant;)Z
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->isAfterNow()Z

    move-result p1

    return p1

    :cond_0
    invoke-interface {p1}, Lorg/joda/time/ReadableInstant;->getMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/base/AbstractInterval;->isAfter(J)Z

    move-result p1

    return p1
.end method

.method public isAfter(Lorg/joda/time/ReadableInterval;)Z
    .locals 4

    if-nez p1, :cond_0

    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getEndMillis()J

    move-result-wide v0

    :goto_0
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getStartMillis()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public isAfterNow()Z
    .locals 2

    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/base/AbstractInterval;->isAfter(J)Z

    move-result v0

    return v0
.end method

.method public isBefore(J)Z
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getEndMillis()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-gtz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isBefore(Lorg/joda/time/ReadableInstant;)Z
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->isBeforeNow()Z

    move-result p1

    return p1

    :cond_0
    invoke-interface {p1}, Lorg/joda/time/ReadableInstant;->getMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/base/AbstractInterval;->isBefore(J)Z

    move-result p1

    return p1
.end method

.method public isBefore(Lorg/joda/time/ReadableInterval;)Z
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->isBeforeNow()Z

    move-result p1

    return p1

    :cond_0
    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getStartMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/base/AbstractInterval;->isBefore(J)Z

    move-result p1

    return p1
.end method

.method public isBeforeNow()Z
    .locals 2

    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/base/AbstractInterval;->isBefore(J)Z

    move-result v0

    return v0
.end method

.method public isEqual(Lorg/joda/time/ReadableInterval;)Z
    .locals 5

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getStartMillis()J

    move-result-wide v0

    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getStartMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getEndMillis()J

    move-result-wide v0

    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getEndMillis()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public overlaps(Lorg/joda/time/ReadableInterval;)Z
    .locals 10

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getStartMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getEndMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_1

    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v6

    cmp-long p1, v0, v6

    if-gez p1, :cond_0

    cmp-long p1, v6, v2

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_1
    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getStartMillis()J

    move-result-wide v6

    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getEndMillis()J

    move-result-wide v8

    cmp-long p1, v0, v8

    if-gez p1, :cond_2

    cmp-long p1, v6, v2

    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    return v4
.end method

.method public toDuration()Lorg/joda/time/Duration;
    .locals 5

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->toDurationMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    sget-object v0, Lorg/joda/time/Duration;->ZERO:Lorg/joda/time/Duration;

    return-object v0

    :cond_0
    new-instance v2, Lorg/joda/time/Duration;

    invoke-direct {v2, v0, v1}, Lorg/joda/time/Duration;-><init>(J)V

    return-object v2
.end method

.method public toDurationMillis()J
    .locals 4

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getEndMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getStartMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/joda/time/field/FieldUtils;->safeSubtract(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toInterval()Lorg/joda/time/Interval;
    .locals 7

    new-instance v6, Lorg/joda/time/Interval;

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getStartMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getEndMillis()J

    move-result-wide v3

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/Interval;-><init>(JJLorg/joda/time/Chronology;)V

    return-object v6
.end method

.method public toMutableInterval()Lorg/joda/time/MutableInterval;
    .locals 7

    new-instance v6, Lorg/joda/time/MutableInterval;

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getStartMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getEndMillis()J

    move-result-wide v3

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/MutableInterval;-><init>(JJLorg/joda/time/Chronology;)V

    return-object v6
.end method

.method public toPeriod()Lorg/joda/time/Period;
    .locals 7

    new-instance v6, Lorg/joda/time/Period;

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getStartMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getEndMillis()J

    move-result-wide v3

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/Period;-><init>(JJLorg/joda/time/Chronology;)V

    return-object v6
.end method

.method public toPeriod(Lorg/joda/time/PeriodType;)Lorg/joda/time/Period;
    .locals 8

    new-instance v7, Lorg/joda/time/Period;

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getStartMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getEndMillis()J

    move-result-wide v3

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v6

    move-object v0, v7

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lorg/joda/time/Period;-><init>(JJLorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    return-object v7
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateTime()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatter;->withChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x30

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getStartMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/joda/time/format/DateTimeFormatter;->printTo(Ljava/lang/StringBuffer;J)V

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getEndMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/joda/time/format/DateTimeFormatter;->printTo(Ljava/lang/StringBuffer;J)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
