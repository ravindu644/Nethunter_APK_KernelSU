.class public final Lorg/joda/time/TimeOfDay;
.super Lorg/joda/time/base/BasePartial;
.source "TimeOfDay.java"

# interfaces
.implements Lorg/joda/time/ReadablePartial;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/TimeOfDay$Property;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final FIELD_TYPES:[Lorg/joda/time/DateTimeFieldType;

.field public static final HOUR_OF_DAY:I = 0x0

.field public static final MIDNIGHT:Lorg/joda/time/TimeOfDay;

.field public static final MILLIS_OF_SECOND:I = 0x3

.field public static final MINUTE_OF_HOUR:I = 0x1

.field public static final SECOND_OF_MINUTE:I = 0x2

.field private static final serialVersionUID:J = 0x326c43ac185ccd84L


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/joda/time/DateTimeFieldType;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->hourOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->minuteOfHour()Lorg/joda/time/DateTimeFieldType;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x2

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->secondOfMinute()Lorg/joda/time/DateTimeFieldType;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x3

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->millisOfSecond()Lorg/joda/time/DateTimeFieldType;

    move-result-object v3

    aput-object v3, v0, v1

    sput-object v0, Lorg/joda/time/TimeOfDay;->FIELD_TYPES:[Lorg/joda/time/DateTimeFieldType;

    new-instance v0, Lorg/joda/time/TimeOfDay;

    invoke-direct {v0, v2, v2, v2, v2}, Lorg/joda/time/TimeOfDay;-><init>(IIII)V

    sput-object v0, Lorg/joda/time/TimeOfDay;->MIDNIGHT:Lorg/joda/time/TimeOfDay;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/joda/time/base/BasePartial;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/TimeOfDay;-><init>(IIIILorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/TimeOfDay;-><init>(IIIILorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/TimeOfDay;-><init>(IIIILorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(IIIILorg/joda/time/Chronology;)V
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    const/4 p1, 0x3

    aput p4, v0, p1

    invoke-direct {p0, v0, p5}, Lorg/joda/time/base/BasePartial;-><init>([ILorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(IIILorg/joda/time/Chronology;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/TimeOfDay;-><init>(IIIILorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(IILorg/joda/time/Chronology;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/TimeOfDay;-><init>(IIIILorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BasePartial;-><init>(J)V

    return-void
.end method

.method public constructor <init>(JLorg/joda/time/Chronology;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/base/BasePartial;-><init>(JLorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->timeParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/joda/time/base/BasePartial;-><init>(Ljava/lang/Object;Lorg/joda/time/Chronology;Lorg/joda/time/format/DateTimeFormatter;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V
    .locals 1

    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object p2

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->timeParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/joda/time/base/BasePartial;-><init>(Ljava/lang/Object;Lorg/joda/time/Chronology;Lorg/joda/time/format/DateTimeFormatter;)V

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/Chronology;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/joda/time/base/BasePartial;-><init>(Lorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/DateTimeZone;)V
    .locals 0

    invoke-static {p1}, Lorg/joda/time/chrono/ISOChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/ISOChronology;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/joda/time/base/BasePartial;-><init>(Lorg/joda/time/Chronology;)V

    return-void
.end method

.method constructor <init>(Lorg/joda/time/TimeOfDay;Lorg/joda/time/Chronology;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BasePartial;-><init>(Lorg/joda/time/base/BasePartial;Lorg/joda/time/Chronology;)V

    return-void
.end method

.method constructor <init>(Lorg/joda/time/TimeOfDay;[I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BasePartial;-><init>(Lorg/joda/time/base/BasePartial;[I)V

    return-void
.end method

.method public static fromCalendarFields(Ljava/util/Calendar;)Lorg/joda/time/TimeOfDay;
    .locals 5

    if-eqz p0, :cond_0

    new-instance v0, Lorg/joda/time/TimeOfDay;

    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xd

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xe

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/joda/time/TimeOfDay;-><init>(IIII)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The calendar must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromDateFields(Ljava/util/Date;)Lorg/joda/time/TimeOfDay;
    .locals 8

    if-eqz p0, :cond_0

    new-instance v0, Lorg/joda/time/TimeOfDay;

    invoke-virtual {p0}, Ljava/util/Date;->getHours()I

    move-result v1

    invoke-virtual {p0}, Ljava/util/Date;->getMinutes()I

    move-result v2

    invoke-virtual {p0}, Ljava/util/Date;->getSeconds()I

    move-result v3

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    rem-long/2addr v4, v6

    long-to-int p0, v4

    add-int/lit16 p0, p0, 0x3e8

    rem-int/lit16 p0, p0, 0x3e8

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/joda/time/TimeOfDay;-><init>(IIII)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The date must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromMillisOfDay(J)Lorg/joda/time/TimeOfDay;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/joda/time/TimeOfDay;->fromMillisOfDay(JLorg/joda/time/Chronology;)Lorg/joda/time/TimeOfDay;

    move-result-object p0

    return-object p0
.end method

.method public static fromMillisOfDay(JLorg/joda/time/Chronology;)Lorg/joda/time/TimeOfDay;
    .locals 1

    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object p2

    invoke-virtual {p2}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object p2

    new-instance v0, Lorg/joda/time/TimeOfDay;

    invoke-direct {v0, p0, p1, p2}, Lorg/joda/time/TimeOfDay;-><init>(JLorg/joda/time/Chronology;)V

    return-object v0
.end method


# virtual methods
.method protected getField(ILorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;
    .locals 2

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Lorg/joda/time/Chronology;->millisOfSecond()Lorg/joda/time/DateTimeField;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    invoke-virtual {p2}, Lorg/joda/time/Chronology;->secondOfMinute()Lorg/joda/time/DateTimeField;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p2}, Lorg/joda/time/Chronology;->minuteOfHour()Lorg/joda/time/DateTimeField;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {p2}, Lorg/joda/time/Chronology;->hourOfDay()Lorg/joda/time/DateTimeField;

    move-result-object p1

    return-object p1
.end method

.method public getFieldType(I)Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/TimeOfDay;->FIELD_TYPES:[Lorg/joda/time/DateTimeFieldType;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getFieldTypes()[Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/TimeOfDay;->FIELD_TYPES:[Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v0}, [Lorg/joda/time/DateTimeFieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/joda/time/DateTimeFieldType;

    check-cast v0, [Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public getHourOfDay()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/joda/time/TimeOfDay;->getValue(I)I

    move-result v0

    return v0
.end method

.method public getMillisOfSecond()I
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/joda/time/TimeOfDay;->getValue(I)I

    move-result v0

    return v0
.end method

.method public getMinuteOfHour()I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/joda/time/TimeOfDay;->getValue(I)I

    move-result v0

    return v0
.end method

.method public getSecondOfMinute()I
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/joda/time/TimeOfDay;->getValue(I)I

    move-result v0

    return v0
.end method

.method public hourOfDay()Lorg/joda/time/TimeOfDay$Property;
    .locals 2

    new-instance v0, Lorg/joda/time/TimeOfDay$Property;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/joda/time/TimeOfDay$Property;-><init>(Lorg/joda/time/TimeOfDay;I)V

    return-object v0
.end method

.method public millisOfSecond()Lorg/joda/time/TimeOfDay$Property;
    .locals 2

    new-instance v0, Lorg/joda/time/TimeOfDay$Property;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lorg/joda/time/TimeOfDay$Property;-><init>(Lorg/joda/time/TimeOfDay;I)V

    return-object v0
.end method

.method public minus(Lorg/joda/time/ReadablePeriod;)Lorg/joda/time/TimeOfDay;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/TimeOfDay;->withPeriodAdded(Lorg/joda/time/ReadablePeriod;I)Lorg/joda/time/TimeOfDay;

    move-result-object p1

    return-object p1
.end method

.method public minusHours(I)Lorg/joda/time/TimeOfDay;
    .locals 1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-static {p1}, Lorg/joda/time/field/FieldUtils;->safeNegate(I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/joda/time/TimeOfDay;->withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/TimeOfDay;

    move-result-object p1

    return-object p1
.end method

.method public minusMillis(I)Lorg/joda/time/TimeOfDay;
    .locals 1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->millis()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-static {p1}, Lorg/joda/time/field/FieldUtils;->safeNegate(I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/joda/time/TimeOfDay;->withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/TimeOfDay;

    move-result-object p1

    return-object p1
.end method

.method public minusMinutes(I)Lorg/joda/time/TimeOfDay;
    .locals 1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-static {p1}, Lorg/joda/time/field/FieldUtils;->safeNegate(I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/joda/time/TimeOfDay;->withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/TimeOfDay;

    move-result-object p1

    return-object p1
.end method

.method public minusSeconds(I)Lorg/joda/time/TimeOfDay;
    .locals 1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-static {p1}, Lorg/joda/time/field/FieldUtils;->safeNegate(I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/joda/time/TimeOfDay;->withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/TimeOfDay;

    move-result-object p1

    return-object p1
.end method

.method public minuteOfHour()Lorg/joda/time/TimeOfDay$Property;
    .locals 2

    new-instance v0, Lorg/joda/time/TimeOfDay$Property;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/TimeOfDay$Property;-><init>(Lorg/joda/time/TimeOfDay;I)V

    return-object v0
.end method

.method public plus(Lorg/joda/time/ReadablePeriod;)Lorg/joda/time/TimeOfDay;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/TimeOfDay;->withPeriodAdded(Lorg/joda/time/ReadablePeriod;I)Lorg/joda/time/TimeOfDay;

    move-result-object p1

    return-object p1
.end method

.method public plusHours(I)Lorg/joda/time/TimeOfDay;
    .locals 1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/joda/time/TimeOfDay;->withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/TimeOfDay;

    move-result-object p1

    return-object p1
.end method

.method public plusMillis(I)Lorg/joda/time/TimeOfDay;
    .locals 1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->millis()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/joda/time/TimeOfDay;->withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/TimeOfDay;

    move-result-object p1

    return-object p1
.end method

.method public plusMinutes(I)Lorg/joda/time/TimeOfDay;
    .locals 1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/joda/time/TimeOfDay;->withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/TimeOfDay;

    move-result-object p1

    return-object p1
.end method

.method public plusSeconds(I)Lorg/joda/time/TimeOfDay;
    .locals 1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/joda/time/TimeOfDay;->withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/TimeOfDay;

    move-result-object p1

    return-object p1
.end method

.method public property(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/TimeOfDay$Property;
    .locals 1

    new-instance v0, Lorg/joda/time/TimeOfDay$Property;

    invoke-virtual {p0, p1}, Lorg/joda/time/TimeOfDay;->indexOfSupported(Lorg/joda/time/DateTimeFieldType;)I

    move-result p1

    invoke-direct {v0, p0, p1}, Lorg/joda/time/TimeOfDay$Property;-><init>(Lorg/joda/time/TimeOfDay;I)V

    return-object v0
.end method

.method public secondOfMinute()Lorg/joda/time/TimeOfDay$Property;
    .locals 2

    new-instance v0, Lorg/joda/time/TimeOfDay$Property;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lorg/joda/time/TimeOfDay$Property;-><init>(Lorg/joda/time/TimeOfDay;I)V

    return-object v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public toDateTimeToday()Lorg/joda/time/DateTime;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/joda/time/TimeOfDay;->toDateTimeToday(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public toDateTimeToday(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/TimeOfDay;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/Chronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object p1

    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, p0, v0, v1}, Lorg/joda/time/Chronology;->set(Lorg/joda/time/ReadablePartial;J)J

    move-result-wide v0

    new-instance v2, Lorg/joda/time/DateTime;

    invoke-direct {v2, v0, v1, p1}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/Chronology;)V

    return-object v2
.end method

.method public toLocalTime()Lorg/joda/time/LocalTime;
    .locals 7

    new-instance v6, Lorg/joda/time/LocalTime;

    invoke-virtual {p0}, Lorg/joda/time/TimeOfDay;->getHourOfDay()I

    move-result v1

    invoke-virtual {p0}, Lorg/joda/time/TimeOfDay;->getMinuteOfHour()I

    move-result v2

    invoke-virtual {p0}, Lorg/joda/time/TimeOfDay;->getSecondOfMinute()I

    move-result v3

    invoke-virtual {p0}, Lorg/joda/time/TimeOfDay;->getMillisOfSecond()I

    move-result v4

    invoke-virtual {p0}, Lorg/joda/time/TimeOfDay;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/LocalTime;-><init>(IIIILorg/joda/time/Chronology;)V

    return-object v6
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->tTime()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadablePartial;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withChronologyRetainFields(Lorg/joda/time/Chronology;)Lorg/joda/time/TimeOfDay;
    .locals 2

    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object p1

    invoke-virtual {p1}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object p1

    invoke-virtual {p0}, Lorg/joda/time/TimeOfDay;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lorg/joda/time/TimeOfDay;

    invoke-direct {v0, p0, p1}, Lorg/joda/time/TimeOfDay;-><init>(Lorg/joda/time/TimeOfDay;Lorg/joda/time/Chronology;)V

    invoke-virtual {p0}, Lorg/joda/time/TimeOfDay;->getValues()[I

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/joda/time/Chronology;->validate(Lorg/joda/time/ReadablePartial;[I)V

    return-object v0
.end method

.method public withField(Lorg/joda/time/DateTimeFieldType;I)Lorg/joda/time/TimeOfDay;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/joda/time/TimeOfDay;->indexOfSupported(Lorg/joda/time/DateTimeFieldType;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/joda/time/TimeOfDay;->getValue(I)I

    move-result v0

    if-ne p2, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/TimeOfDay;->getValues()[I

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/joda/time/TimeOfDay;->getField(I)Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-virtual {v1, p0, p1, v0, p2}, Lorg/joda/time/DateTimeField;->set(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object p1

    new-instance p2, Lorg/joda/time/TimeOfDay;

    invoke-direct {p2, p0, p1}, Lorg/joda/time/TimeOfDay;-><init>(Lorg/joda/time/TimeOfDay;[I)V

    return-object p2
.end method

.method public withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/TimeOfDay;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/joda/time/TimeOfDay;->indexOfSupported(Lorg/joda/time/DurationFieldType;)I

    move-result p1

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/TimeOfDay;->getValues()[I

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/joda/time/TimeOfDay;->getField(I)Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-virtual {v1, p0, p1, v0, p2}, Lorg/joda/time/DateTimeField;->addWrapPartial(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object p1

    new-instance p2, Lorg/joda/time/TimeOfDay;

    invoke-direct {p2, p0, p1}, Lorg/joda/time/TimeOfDay;-><init>(Lorg/joda/time/TimeOfDay;[I)V

    return-object p2
.end method

.method public withHourOfDay(I)Lorg/joda/time/TimeOfDay;
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/TimeOfDay;->getValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/TimeOfDay;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->hourOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0, p1}, Lorg/joda/time/DateTimeField;->set(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object p1

    new-instance v0, Lorg/joda/time/TimeOfDay;

    invoke-direct {v0, p0, p1}, Lorg/joda/time/TimeOfDay;-><init>(Lorg/joda/time/TimeOfDay;[I)V

    return-object v0
.end method

.method public withMillisOfSecond(I)Lorg/joda/time/TimeOfDay;
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/TimeOfDay;->getValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/TimeOfDay;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->millisOfSecond()Lorg/joda/time/DateTimeField;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, p0, v2, v0, p1}, Lorg/joda/time/DateTimeField;->set(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object p1

    new-instance v0, Lorg/joda/time/TimeOfDay;

    invoke-direct {v0, p0, p1}, Lorg/joda/time/TimeOfDay;-><init>(Lorg/joda/time/TimeOfDay;[I)V

    return-object v0
.end method

.method public withMinuteOfHour(I)Lorg/joda/time/TimeOfDay;
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/TimeOfDay;->getValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/TimeOfDay;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->minuteOfHour()Lorg/joda/time/DateTimeField;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2, v0, p1}, Lorg/joda/time/DateTimeField;->set(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object p1

    new-instance v0, Lorg/joda/time/TimeOfDay;

    invoke-direct {v0, p0, p1}, Lorg/joda/time/TimeOfDay;-><init>(Lorg/joda/time/TimeOfDay;[I)V

    return-object v0
.end method

.method public withPeriodAdded(Lorg/joda/time/ReadablePeriod;I)Lorg/joda/time/TimeOfDay;
    .locals 5

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/TimeOfDay;->getValues()[I

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/joda/time/ReadablePeriod;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p1, v1}, Lorg/joda/time/ReadablePeriod;->getFieldType(I)Lorg/joda/time/DurationFieldType;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/joda/time/TimeOfDay;->indexOf(Lorg/joda/time/DurationFieldType;)I

    move-result v2

    if-ltz v2, :cond_1

    invoke-virtual {p0, v2}, Lorg/joda/time/TimeOfDay;->getField(I)Lorg/joda/time/DateTimeField;

    move-result-object v3

    invoke-interface {p1, v1}, Lorg/joda/time/ReadablePeriod;->getValue(I)I

    move-result v4

    invoke-static {v4, p2}, Lorg/joda/time/field/FieldUtils;->safeMultiply(II)I

    move-result v4

    invoke-virtual {v3, p0, v2, v0, v4}, Lorg/joda/time/DateTimeField;->addWrapPartial(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/joda/time/TimeOfDay;

    invoke-direct {p1, p0, v0}, Lorg/joda/time/TimeOfDay;-><init>(Lorg/joda/time/TimeOfDay;[I)V

    return-object p1

    :cond_3
    :goto_1
    return-object p0
.end method

.method public withSecondOfMinute(I)Lorg/joda/time/TimeOfDay;
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/TimeOfDay;->getValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/TimeOfDay;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->secondOfMinute()Lorg/joda/time/DateTimeField;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v2, v0, p1}, Lorg/joda/time/DateTimeField;->set(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object p1

    new-instance v0, Lorg/joda/time/TimeOfDay;

    invoke-direct {v0, p0, p1}, Lorg/joda/time/TimeOfDay;-><init>(Lorg/joda/time/TimeOfDay;[I)V

    return-object v0
.end method
