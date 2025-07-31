.class public final Lorg/joda/time/Interval;
.super Lorg/joda/time/base/BaseInterval;
.source "Interval.java"

# interfaces
.implements Lorg/joda/time/ReadableInterval;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x44500feba8e6e200L


# direct methods
.method public constructor <init>(JJ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/base/BaseInterval;-><init>(JJLorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(JJLorg/joda/time/Chronology;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/joda/time/base/BaseInterval;-><init>(JJLorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(JJLorg/joda/time/DateTimeZone;)V
    .locals 6

    invoke-static {p5}, Lorg/joda/time/chrono/ISOChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/ISOChronology;

    move-result-object v5

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/base/BaseInterval;-><init>(JJLorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/joda/time/base/BaseInterval;-><init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BaseInterval;-><init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/ReadableDuration;Lorg/joda/time/ReadableInstant;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BaseInterval;-><init>(Lorg/joda/time/ReadableDuration;Lorg/joda/time/ReadableInstant;)V

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableDuration;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BaseInterval;-><init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableDuration;)V

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BaseInterval;-><init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)V

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadablePeriod;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BaseInterval;-><init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadablePeriod;)V

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/ReadablePeriod;Lorg/joda/time/ReadableInstant;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BaseInterval;-><init>(Lorg/joda/time/ReadablePeriod;Lorg/joda/time/ReadableInstant;)V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lorg/joda/time/Interval;
    .locals 1

    new-instance v0, Lorg/joda/time/Interval;

    invoke-direct {v0, p0}, Lorg/joda/time/Interval;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static parseWithOffset(Ljava/lang/String;)Lorg/joda/time/Interval;
    .locals 10

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "Format invalid: "

    if-lez v3, :cond_7

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateTimeParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/time/format/DateTimeFormatter;->withOffsetParsed()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v3

    invoke-static {}, Lorg/joda/time/format/ISOPeriodFormat;->standard()Lorg/joda/time/format/PeriodFormatter;

    move-result-object v4

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x70

    const/16 v7, 0x50

    const/4 v8, 0x0

    if-eq v5, v7, :cond_1

    if-ne v5, v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v2}, Lorg/joda/time/format/DateTimeFormatter;->parseDateTime(Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object v2

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lorg/joda/time/PeriodType;->standard()Lorg/joda/time/PeriodType;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/joda/time/format/PeriodFormatter;->withParseType(Lorg/joda/time/PeriodType;)Lorg/joda/time/format/PeriodFormatter;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/joda/time/format/PeriodFormatter;->parsePeriod(Ljava/lang/String;)Lorg/joda/time/Period;

    move-result-object v2

    move-object v9, v8

    move-object v8, v2

    move-object v2, v9

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v7, :cond_4

    if-ne v1, v6, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3, v0}, Lorg/joda/time/format/DateTimeFormatter;->parseDateTime(Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object p0

    if-eqz v8, :cond_3

    new-instance v0, Lorg/joda/time/Interval;

    invoke-direct {v0, v8, p0}, Lorg/joda/time/Interval;-><init>(Lorg/joda/time/ReadablePeriod;Lorg/joda/time/ReadableInstant;)V

    return-object v0

    :cond_3
    new-instance v0, Lorg/joda/time/Interval;

    invoke-direct {v0, v2, p0}, Lorg/joda/time/Interval;-><init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)V

    return-object v0

    :cond_4
    :goto_2
    if-nez v8, :cond_5

    invoke-static {}, Lorg/joda/time/PeriodType;->standard()Lorg/joda/time/PeriodType;

    move-result-object p0

    invoke-virtual {v4, p0}, Lorg/joda/time/format/PeriodFormatter;->withParseType(Lorg/joda/time/PeriodType;)Lorg/joda/time/format/PeriodFormatter;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/joda/time/format/PeriodFormatter;->parsePeriod(Ljava/lang/String;)Lorg/joda/time/Period;

    move-result-object p0

    new-instance v0, Lorg/joda/time/Interval;

    invoke-direct {v0, v2, p0}, Lorg/joda/time/Interval;-><init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadablePeriod;)V

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Interval composed of two durations: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Format requires a \'/\' separator: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abuts(Lorg/joda/time/ReadableInterval;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_2

    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/joda/time/Interval;->getStartMillis()J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/joda/time/Interval;->getEndMillis()J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getEndMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/joda/time/Interval;->getStartMillis()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lorg/joda/time/Interval;->getEndMillis()J

    move-result-wide v2

    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getStartMillis()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method public gap(Lorg/joda/time/ReadableInterval;)Lorg/joda/time/Interval;
    .locals 11

    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getReadableInterval(Lorg/joda/time/ReadableInterval;)Lorg/joda/time/ReadableInterval;

    move-result-object p1

    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getStartMillis()J

    move-result-wide v3

    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getEndMillis()J

    move-result-wide v6

    invoke-virtual {p0}, Lorg/joda/time/Interval;->getStartMillis()J

    move-result-wide v8

    invoke-virtual {p0}, Lorg/joda/time/Interval;->getEndMillis()J

    move-result-wide v1

    cmp-long p1, v8, v6

    if-lez p1, :cond_0

    new-instance p1, Lorg/joda/time/Interval;

    invoke-virtual {p0}, Lorg/joda/time/Interval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v10

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Lorg/joda/time/Interval;-><init>(JJLorg/joda/time/Chronology;)V

    return-object p1

    :cond_0
    cmp-long p1, v3, v1

    if-lez p1, :cond_1

    new-instance p1, Lorg/joda/time/Interval;

    invoke-virtual {p0}, Lorg/joda/time/Interval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v5

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/Interval;-><init>(JJLorg/joda/time/Chronology;)V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public overlap(Lorg/joda/time/ReadableInterval;)Lorg/joda/time/Interval;
    .locals 10

    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getReadableInterval(Lorg/joda/time/ReadableInterval;)Lorg/joda/time/ReadableInterval;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/joda/time/Interval;->overlaps(Lorg/joda/time/ReadableInterval;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/Interval;->getStartMillis()J

    move-result-wide v0

    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getStartMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    invoke-virtual {p0}, Lorg/joda/time/Interval;->getEndMillis()J

    move-result-wide v0

    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getEndMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    new-instance p1, Lorg/joda/time/Interval;

    invoke-virtual {p0}, Lorg/joda/time/Interval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v9

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lorg/joda/time/Interval;-><init>(JJLorg/joda/time/Chronology;)V

    return-object p1
.end method

.method public toInterval()Lorg/joda/time/Interval;
    .locals 0

    return-object p0
.end method

.method public withChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Interval;
    .locals 7

    invoke-virtual {p0}, Lorg/joda/time/Interval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lorg/joda/time/Interval;

    invoke-virtual {p0}, Lorg/joda/time/Interval;->getStartMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/joda/time/Interval;->getEndMillis()J

    move-result-wide v4

    move-object v1, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/joda/time/Interval;-><init>(JJLorg/joda/time/Chronology;)V

    return-object v0
.end method

.method public withDurationAfterStart(Lorg/joda/time/ReadableDuration;)Lorg/joda/time/Interval;
    .locals 11

    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getDurationMillis(Lorg/joda/time/ReadableDuration;)J

    move-result-wide v3

    invoke-virtual {p0}, Lorg/joda/time/Interval;->toDurationMillis()J

    move-result-wide v0

    cmp-long p1, v3, v0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/Interval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v10

    invoke-virtual {p0}, Lorg/joda/time/Interval;->getStartMillis()J

    move-result-wide v6

    const/4 v5, 0x1

    move-object v0, v10

    move-wide v1, v6

    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/Chronology;->add(JJI)J

    move-result-wide v8

    new-instance p1, Lorg/joda/time/Interval;

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Lorg/joda/time/Interval;-><init>(JJLorg/joda/time/Chronology;)V

    return-object p1
.end method

.method public withDurationBeforeEnd(Lorg/joda/time/ReadableDuration;)Lorg/joda/time/Interval;
    .locals 11

    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getDurationMillis(Lorg/joda/time/ReadableDuration;)J

    move-result-wide v3

    invoke-virtual {p0}, Lorg/joda/time/Interval;->toDurationMillis()J

    move-result-wide v0

    cmp-long p1, v3, v0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/Interval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v10

    invoke-virtual {p0}, Lorg/joda/time/Interval;->getEndMillis()J

    move-result-wide v8

    const/4 v5, -0x1

    move-object v0, v10

    move-wide v1, v8

    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/Chronology;->add(JJI)J

    move-result-wide v6

    new-instance p1, Lorg/joda/time/Interval;

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Lorg/joda/time/Interval;-><init>(JJLorg/joda/time/Chronology;)V

    return-object p1
.end method

.method public withEnd(Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Interval;
    .locals 2

    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/Interval;->withEndMillis(J)Lorg/joda/time/Interval;

    move-result-object p1

    return-object p1
.end method

.method public withEndMillis(J)Lorg/joda/time/Interval;
    .locals 9

    invoke-virtual {p0}, Lorg/joda/time/Interval;->getEndMillis()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lorg/joda/time/Interval;

    invoke-virtual {p0}, Lorg/joda/time/Interval;->getStartMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lorg/joda/time/Interval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v8

    move-object v3, v0

    move-wide v6, p1

    invoke-direct/range {v3 .. v8}, Lorg/joda/time/Interval;-><init>(JJLorg/joda/time/Chronology;)V

    return-object v0
.end method

.method public withPeriodAfterStart(Lorg/joda/time/ReadablePeriod;)Lorg/joda/time/Interval;
    .locals 6

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/joda/time/Interval;->withDurationAfterStart(Lorg/joda/time/ReadableDuration;)Lorg/joda/time/Interval;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/Interval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v5

    invoke-virtual {p0}, Lorg/joda/time/Interval;->getStartMillis()J

    move-result-wide v1

    const/4 v0, 0x1

    invoke-virtual {v5, p1, v1, v2, v0}, Lorg/joda/time/Chronology;->add(Lorg/joda/time/ReadablePeriod;JI)J

    move-result-wide v3

    new-instance p1, Lorg/joda/time/Interval;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/Interval;-><init>(JJLorg/joda/time/Chronology;)V

    return-object p1
.end method

.method public withPeriodBeforeEnd(Lorg/joda/time/ReadablePeriod;)Lorg/joda/time/Interval;
    .locals 6

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/joda/time/Interval;->withDurationBeforeEnd(Lorg/joda/time/ReadableDuration;)Lorg/joda/time/Interval;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/Interval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v5

    invoke-virtual {p0}, Lorg/joda/time/Interval;->getEndMillis()J

    move-result-wide v3

    const/4 v0, -0x1

    invoke-virtual {v5, p1, v3, v4, v0}, Lorg/joda/time/Chronology;->add(Lorg/joda/time/ReadablePeriod;JI)J

    move-result-wide v1

    new-instance p1, Lorg/joda/time/Interval;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/Interval;-><init>(JJLorg/joda/time/Chronology;)V

    return-object p1
.end method

.method public withStart(Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Interval;
    .locals 2

    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/Interval;->withStartMillis(J)Lorg/joda/time/Interval;

    move-result-object p1

    return-object p1
.end method

.method public withStartMillis(J)Lorg/joda/time/Interval;
    .locals 9

    invoke-virtual {p0}, Lorg/joda/time/Interval;->getStartMillis()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lorg/joda/time/Interval;

    invoke-virtual {p0}, Lorg/joda/time/Interval;->getEndMillis()J

    move-result-wide v6

    invoke-virtual {p0}, Lorg/joda/time/Interval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v8

    move-object v3, v0

    move-wide v4, p1

    invoke-direct/range {v3 .. v8}, Lorg/joda/time/Interval;-><init>(JJLorg/joda/time/Chronology;)V

    return-object v0
.end method
