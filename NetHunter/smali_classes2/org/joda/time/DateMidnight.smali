.class public final Lorg/joda/time/DateMidnight;
.super Lorg/joda/time/base/BaseDateTime;
.source "DateMidnight.java"

# interfaces
.implements Lorg/joda/time/ReadableDateTime;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/DateMidnight$Property;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x8e382f5e4032L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/joda/time/base/BaseDateTime;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lorg/joda/time/base/BaseDateTime;-><init>(IIIIIII)V

    return-void
.end method

.method public constructor <init>(IIILorg/joda/time/Chronology;)V
    .locals 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lorg/joda/time/base/BaseDateTime;-><init>(IIIIIIILorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(IIILorg/joda/time/DateTimeZone;)V
    .locals 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lorg/joda/time/base/BaseDateTime;-><init>(IIIIIIILorg/joda/time/DateTimeZone;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BaseDateTime;-><init>(J)V

    return-void
.end method

.method public constructor <init>(JLorg/joda/time/Chronology;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/base/BaseDateTime;-><init>(JLorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(JLorg/joda/time/DateTimeZone;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/base/BaseDateTime;-><init>(JLorg/joda/time/DateTimeZone;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lorg/joda/time/Chronology;

    invoke-direct {p0, p1, v0}, Lorg/joda/time/base/BaseDateTime;-><init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V
    .locals 0

    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BaseDateTime;-><init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/joda/time/DateTimeZone;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BaseDateTime;-><init>(Ljava/lang/Object;Lorg/joda/time/DateTimeZone;)V

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/Chronology;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/joda/time/base/BaseDateTime;-><init>(Lorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/DateTimeZone;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/joda/time/base/BaseDateTime;-><init>(Lorg/joda/time/DateTimeZone;)V

    return-void
.end method

.method public static now()Lorg/joda/time/DateMidnight;
    .locals 1

    new-instance v0, Lorg/joda/time/DateMidnight;

    invoke-direct {v0}, Lorg/joda/time/DateMidnight;-><init>()V

    return-object v0
.end method

.method public static now(Lorg/joda/time/Chronology;)Lorg/joda/time/DateMidnight;
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Lorg/joda/time/DateMidnight;

    invoke-direct {v0, p0}, Lorg/joda/time/DateMidnight;-><init>(Lorg/joda/time/Chronology;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Chronology must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static now(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateMidnight;
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Lorg/joda/time/DateMidnight;

    invoke-direct {v0, p0}, Lorg/joda/time/DateMidnight;-><init>(Lorg/joda/time/DateTimeZone;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Zone must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parse(Ljava/lang/String;)Lorg/joda/time/DateMidnight;
    .locals 1
    .annotation runtime Lorg/joda/convert/FromString;
    .end annotation

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateTimeParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatter;->withOffsetParsed()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/joda/time/DateMidnight;->parse(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/DateMidnight;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/DateMidnight;
    .locals 0

    invoke-virtual {p1, p0}, Lorg/joda/time/format/DateTimeFormatter;->parseDateTime(Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object p0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->toDateMidnight()Lorg/joda/time/DateMidnight;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public centuryOfEra()Lorg/joda/time/DateMidnight$Property;
    .locals 2

    new-instance v0, Lorg/joda/time/DateMidnight$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->centuryOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateMidnight$Property;-><init>(Lorg/joda/time/DateMidnight;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method protected checkInstant(JLorg/joda/time/Chronology;)J
    .locals 0

    invoke-virtual {p3}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lorg/joda/time/DateTimeField;->roundFloor(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public dayOfMonth()Lorg/joda/time/DateMidnight$Property;
    .locals 2

    new-instance v0, Lorg/joda/time/DateMidnight$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateMidnight$Property;-><init>(Lorg/joda/time/DateMidnight;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public dayOfWeek()Lorg/joda/time/DateMidnight$Property;
    .locals 2

    new-instance v0, Lorg/joda/time/DateMidnight$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->dayOfWeek()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateMidnight$Property;-><init>(Lorg/joda/time/DateMidnight;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public dayOfYear()Lorg/joda/time/DateMidnight$Property;
    .locals 2

    new-instance v0, Lorg/joda/time/DateMidnight$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->dayOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateMidnight$Property;-><init>(Lorg/joda/time/DateMidnight;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public era()Lorg/joda/time/DateMidnight$Property;
    .locals 2

    new-instance v0, Lorg/joda/time/DateMidnight$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->era()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateMidnight$Property;-><init>(Lorg/joda/time/DateMidnight;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public minus(J)Lorg/joda/time/DateMidnight;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/DateMidnight;->withDurationAdded(JI)Lorg/joda/time/DateMidnight;

    move-result-object p1

    return-object p1
.end method

.method public minus(Lorg/joda/time/ReadableDuration;)Lorg/joda/time/DateMidnight;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/DateMidnight;->withDurationAdded(Lorg/joda/time/ReadableDuration;I)Lorg/joda/time/DateMidnight;

    move-result-object p1

    return-object p1
.end method

.method public minus(Lorg/joda/time/ReadablePeriod;)Lorg/joda/time/DateMidnight;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/DateMidnight;->withPeriodAdded(Lorg/joda/time/ReadablePeriod;I)Lorg/joda/time/DateMidnight;

    move-result-object p1

    return-object p1
.end method

.method public minusDays(I)Lorg/joda/time/DateMidnight;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->days()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->subtract(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object p1

    return-object p1
.end method

.method public minusMonths(I)Lorg/joda/time/DateMidnight;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->months()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->subtract(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object p1

    return-object p1
.end method

.method public minusWeeks(I)Lorg/joda/time/DateMidnight;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->weeks()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->subtract(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object p1

    return-object p1
.end method

.method public minusYears(I)Lorg/joda/time/DateMidnight;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->years()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->subtract(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object p1

    return-object p1
.end method

.method public monthOfYear()Lorg/joda/time/DateMidnight$Property;
    .locals 2

    new-instance v0, Lorg/joda/time/DateMidnight$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateMidnight$Property;-><init>(Lorg/joda/time/DateMidnight;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public plus(J)Lorg/joda/time/DateMidnight;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/DateMidnight;->withDurationAdded(JI)Lorg/joda/time/DateMidnight;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lorg/joda/time/ReadableDuration;)Lorg/joda/time/DateMidnight;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/DateMidnight;->withDurationAdded(Lorg/joda/time/ReadableDuration;I)Lorg/joda/time/DateMidnight;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lorg/joda/time/ReadablePeriod;)Lorg/joda/time/DateMidnight;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/DateMidnight;->withPeriodAdded(Lorg/joda/time/ReadablePeriod;I)Lorg/joda/time/DateMidnight;

    move-result-object p1

    return-object p1
.end method

.method public plusDays(I)Lorg/joda/time/DateMidnight;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->days()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object p1

    return-object p1
.end method

.method public plusMonths(I)Lorg/joda/time/DateMidnight;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->months()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object p1

    return-object p1
.end method

.method public plusWeeks(I)Lorg/joda/time/DateMidnight;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->weeks()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object p1

    return-object p1
.end method

.method public plusYears(I)Lorg/joda/time/DateMidnight;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->years()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object p1

    return-object p1
.end method

.method public property(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/DateMidnight$Property;
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Lorg/joda/time/DateMidnight$Property;

    invoke-direct {p1, p0, v0}, Lorg/joda/time/DateMidnight$Property;-><init>(Lorg/joda/time/DateMidnight;Lorg/joda/time/DateTimeField;)V

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Field \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not supported"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The DateTimeFieldType must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toInterval()Lorg/joda/time/Interval;
    .locals 7

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v5

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/joda/time/DurationFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DurationField;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v3

    new-instance v6, Lorg/joda/time/Interval;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/Interval;-><init>(JJLorg/joda/time/Chronology;)V

    return-object v6
.end method

.method public toLocalDate()Lorg/joda/time/LocalDate;
    .locals 4

    new-instance v0, Lorg/joda/time/LocalDate;

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/LocalDate;-><init>(JLorg/joda/time/Chronology;)V

    return-object v0
.end method

.method public toYearMonthDay()Lorg/joda/time/YearMonthDay;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lorg/joda/time/YearMonthDay;

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/YearMonthDay;-><init>(JLorg/joda/time/Chronology;)V

    return-object v0
.end method

.method public weekOfWeekyear()Lorg/joda/time/DateMidnight$Property;
    .locals 2

    new-instance v0, Lorg/joda/time/DateMidnight$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->weekOfWeekyear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateMidnight$Property;-><init>(Lorg/joda/time/DateMidnight;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public weekyear()Lorg/joda/time/DateMidnight$Property;
    .locals 2

    new-instance v0, Lorg/joda/time/DateMidnight$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->weekyear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateMidnight$Property;-><init>(Lorg/joda/time/DateMidnight;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public withCenturyOfEra(I)Lorg/joda/time/DateMidnight;
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->centuryOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object p1

    return-object p1
.end method

.method public withChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/DateMidnight;
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/joda/time/DateMidnight;

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p1}, Lorg/joda/time/DateMidnight;-><init>(JLorg/joda/time/Chronology;)V

    :goto_0
    return-object v0
.end method

.method public withDayOfMonth(I)Lorg/joda/time/DateMidnight;
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object p1

    return-object p1
.end method

.method public withDayOfWeek(I)Lorg/joda/time/DateMidnight;
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfWeek()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object p1

    return-object p1
.end method

.method public withDayOfYear(I)Lorg/joda/time/DateMidnight;
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object p1

    return-object p1
.end method

.method public withDurationAdded(JI)Lorg/joda/time/DateMidnight;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v3

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v4

    move-wide v6, p1

    move v8, p3

    invoke-virtual/range {v3 .. v8}, Lorg/joda/time/Chronology;->add(JJI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method public withDurationAdded(Lorg/joda/time/ReadableDuration;I)Lorg/joda/time/DateMidnight;
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/joda/time/ReadableDuration;->getMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lorg/joda/time/DateMidnight;->withDurationAdded(JI)Lorg/joda/time/DateMidnight;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method public withEra(I)Lorg/joda/time/DateMidnight;
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->era()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object p1

    return-object p1
.end method

.method public withField(Lorg/joda/time/DateTimeFieldType;I)Lorg/joda/time/DateMidnight;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object p1

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1, p2}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/DateMidnight;
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/DurationFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DurationField;

    move-result-object p1

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1, p2}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withFields(Lorg/joda/time/ReadablePartial;)Lorg/joda/time/DateMidnight;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lorg/joda/time/Chronology;->set(Lorg/joda/time/ReadablePartial;J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object p1

    return-object p1
.end method

.method public withMillis(J)Lorg/joda/time/DateMidnight;
    .locals 4

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/DateMidnight;->checkInstant(JLorg/joda/time/Chronology;)J

    move-result-wide p1

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/joda/time/DateMidnight;

    invoke-direct {v1, p1, p2, v0}, Lorg/joda/time/DateMidnight;-><init>(JLorg/joda/time/Chronology;)V

    :goto_0
    return-object v1
.end method

.method public withMonthOfYear(I)Lorg/joda/time/DateMidnight;
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object p1

    return-object p1
.end method

.method public withPeriodAdded(Lorg/joda/time/ReadablePeriod;I)Lorg/joda/time/DateMidnight;
    .locals 3

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2, p2}, Lorg/joda/time/Chronology;->add(Lorg/joda/time/ReadablePeriod;JI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method public withWeekOfWeekyear(I)Lorg/joda/time/DateMidnight;
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->weekOfWeekyear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object p1

    return-object p1
.end method

.method public withWeekyear(I)Lorg/joda/time/DateMidnight;
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->weekyear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object p1

    return-object p1
.end method

.method public withYear(I)Lorg/joda/time/DateMidnight;
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object p1

    return-object p1
.end method

.method public withYearOfCentury(I)Lorg/joda/time/DateMidnight;
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->yearOfCentury()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object p1

    return-object p1
.end method

.method public withYearOfEra(I)Lorg/joda/time/DateMidnight;
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->yearOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object p1

    return-object p1
.end method

.method public withZoneRetainFields(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateMidnight;
    .locals 4

    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object p1

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/DateTimeUtils;->getZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lorg/joda/time/DateTimeZone;->getMillisKeepLocal(Lorg/joda/time/DateTimeZone;J)J

    move-result-wide v0

    new-instance v2, Lorg/joda/time/DateMidnight;

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/joda/time/Chronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object p1

    invoke-direct {v2, v0, v1, p1}, Lorg/joda/time/DateMidnight;-><init>(JLorg/joda/time/Chronology;)V

    return-object v2
.end method

.method public year()Lorg/joda/time/DateMidnight$Property;
    .locals 2

    new-instance v0, Lorg/joda/time/DateMidnight$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateMidnight$Property;-><init>(Lorg/joda/time/DateMidnight;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public yearOfCentury()Lorg/joda/time/DateMidnight$Property;
    .locals 2

    new-instance v0, Lorg/joda/time/DateMidnight$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->yearOfCentury()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateMidnight$Property;-><init>(Lorg/joda/time/DateMidnight;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public yearOfEra()Lorg/joda/time/DateMidnight$Property;
    .locals 2

    new-instance v0, Lorg/joda/time/DateMidnight$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->yearOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateMidnight$Property;-><init>(Lorg/joda/time/DateMidnight;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method
