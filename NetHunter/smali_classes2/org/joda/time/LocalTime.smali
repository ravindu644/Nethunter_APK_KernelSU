.class public final Lorg/joda/time/LocalTime;
.super Lorg/joda/time/base/BaseLocal;
.source "LocalTime.java"

# interfaces
.implements Lorg/joda/time/ReadablePartial;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/LocalTime$Property;
    }
.end annotation


# static fields
.field private static final HOUR_OF_DAY:I = 0x0

.field public static final MIDNIGHT:Lorg/joda/time/LocalTime;

.field private static final MILLIS_OF_SECOND:I = 0x3

.field private static final MINUTE_OF_HOUR:I = 0x1

.field private static final SECOND_OF_MINUTE:I = 0x2

.field private static final TIME_DURATION_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/joda/time/DurationFieldType;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0xbb5440d6211L


# instance fields
.field private final iChronology:Lorg/joda/time/Chronology;

.field private final iLocalMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/joda/time/LocalTime;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lorg/joda/time/LocalTime;-><init>(IIII)V

    sput-object v0, Lorg/joda/time/LocalTime;->MIDNIGHT:Lorg/joda/time/LocalTime;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/joda/time/LocalTime;->TIME_DURATION_TYPES:Ljava/util/Set;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->millis()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstance()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/joda/time/LocalTime;-><init>(JLorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/LocalTime;-><init>(IIIILorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 6

    const/4 v4, 0x0

    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/LocalTime;-><init>(IIIILorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 6

    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/LocalTime;-><init>(IIIILorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(IIIILorg/joda/time/Chronology;)V
    .locals 7

    invoke-direct {p0}, Lorg/joda/time/base/BaseLocal;-><init>()V

    invoke-static {p5}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object p5

    invoke-virtual {p5}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object p5

    const-wide/16 v1, 0x0

    move-object v0, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/joda/time/Chronology;->getDateTimeMillis(JIIII)J

    move-result-wide p1

    iput-object p5, p0, Lorg/joda/time/LocalTime;->iChronology:Lorg/joda/time/Chronology;

    iput-wide p1, p0, Lorg/joda/time/LocalTime;->iLocalMillis:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstance()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/joda/time/LocalTime;-><init>(JLorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(JLorg/joda/time/Chronology;)V
    .locals 2

    invoke-direct {p0}, Lorg/joda/time/base/BaseLocal;-><init>()V

    invoke-static {p3}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object p3

    invoke-virtual {p3}, Lorg/joda/time/Chronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    sget-object v1, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, v1, p1, p2}, Lorg/joda/time/DateTimeZone;->getMillisKeepLocal(Lorg/joda/time/DateTimeZone;J)J

    move-result-wide p1

    invoke-virtual {p3}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object p3

    invoke-virtual {p3}, Lorg/joda/time/Chronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lorg/joda/time/LocalTime;->iLocalMillis:J

    iput-object p3, p0, Lorg/joda/time/LocalTime;->iChronology:Lorg/joda/time/Chronology;

    return-void
.end method

.method public constructor <init>(JLorg/joda/time/DateTimeZone;)V
    .locals 0

    invoke-static {p3}, Lorg/joda/time/chrono/ISOChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/ISOChronology;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/LocalTime;-><init>(JLorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lorg/joda/time/Chronology;

    invoke-direct {p0, p1, v0}, Lorg/joda/time/LocalTime;-><init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V
    .locals 8

    invoke-direct {p0}, Lorg/joda/time/base/BaseLocal;-><init>()V

    invoke-static {}, Lorg/joda/time/convert/ConverterManager;->getInstance()Lorg/joda/time/convert/ConverterManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/convert/ConverterManager;->getPartialConverter(Ljava/lang/Object;)Lorg/joda/time/convert/PartialConverter;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/joda/time/convert/PartialConverter;->getChronology(Ljava/lang/Object;Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object p2

    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object p2

    invoke-virtual {p2}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v1

    iput-object v1, p0, Lorg/joda/time/LocalTime;->iChronology:Lorg/joda/time/Chronology;

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->localTimeParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    invoke-interface {v0, p0, p1, p2, v2}, Lorg/joda/time/convert/PartialConverter;->getPartialValues(Lorg/joda/time/ReadablePartial;Ljava/lang/Object;Lorg/joda/time/Chronology;Lorg/joda/time/format/DateTimeFormatter;)[I

    move-result-object p1

    const-wide/16 v2, 0x0

    const/4 p2, 0x0

    aget v4, p1, p2

    const/4 p2, 0x1

    aget v5, p1, p2

    const/4 p2, 0x2

    aget v6, p1, p2

    const/4 p2, 0x3

    aget v7, p1, p2

    invoke-virtual/range {v1 .. v7}, Lorg/joda/time/Chronology;->getDateTimeMillis(JIIII)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/joda/time/LocalTime;->iLocalMillis:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/joda/time/DateTimeZone;)V
    .locals 8

    invoke-direct {p0}, Lorg/joda/time/base/BaseLocal;-><init>()V

    invoke-static {}, Lorg/joda/time/convert/ConverterManager;->getInstance()Lorg/joda/time/convert/ConverterManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/convert/ConverterManager;->getPartialConverter(Ljava/lang/Object;)Lorg/joda/time/convert/PartialConverter;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/joda/time/convert/PartialConverter;->getChronology(Ljava/lang/Object;Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object p2

    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object p2

    invoke-virtual {p2}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v1

    iput-object v1, p0, Lorg/joda/time/LocalTime;->iChronology:Lorg/joda/time/Chronology;

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->localTimeParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    invoke-interface {v0, p0, p1, p2, v2}, Lorg/joda/time/convert/PartialConverter;->getPartialValues(Lorg/joda/time/ReadablePartial;Ljava/lang/Object;Lorg/joda/time/Chronology;Lorg/joda/time/format/DateTimeFormatter;)[I

    move-result-object p1

    const-wide/16 v2, 0x0

    const/4 p2, 0x0

    aget v4, p1, p2

    const/4 p2, 0x1

    aget v5, p1, p2

    const/4 p2, 0x2

    aget v6, p1, p2

    const/4 p2, 0x3

    aget v7, p1, p2

    invoke-virtual/range {v1 .. v7}, Lorg/joda/time/Chronology;->getDateTimeMillis(JIIII)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/joda/time/LocalTime;->iLocalMillis:J

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/Chronology;)V
    .locals 2

    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lorg/joda/time/LocalTime;-><init>(JLorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/DateTimeZone;)V
    .locals 2

    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Lorg/joda/time/chrono/ISOChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/ISOChronology;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lorg/joda/time/LocalTime;-><init>(JLorg/joda/time/Chronology;)V

    return-void
.end method

.method public static fromCalendarFields(Ljava/util/Calendar;)Lorg/joda/time/LocalTime;
    .locals 5

    if-eqz p0, :cond_0

    new-instance v0, Lorg/joda/time/LocalTime;

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

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/joda/time/LocalTime;-><init>(IIII)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The calendar must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromDateFields(Ljava/util/Date;)Lorg/joda/time/LocalTime;
    .locals 8

    if-eqz p0, :cond_0

    new-instance v0, Lorg/joda/time/LocalTime;

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

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/joda/time/LocalTime;-><init>(IIII)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The date must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromMillisOfDay(J)Lorg/joda/time/LocalTime;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/joda/time/LocalTime;->fromMillisOfDay(JLorg/joda/time/Chronology;)Lorg/joda/time/LocalTime;

    move-result-object p0

    return-object p0
.end method

.method public static fromMillisOfDay(JLorg/joda/time/Chronology;)Lorg/joda/time/LocalTime;
    .locals 1

    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object p2

    invoke-virtual {p2}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object p2

    new-instance v0, Lorg/joda/time/LocalTime;

    invoke-direct {v0, p0, p1, p2}, Lorg/joda/time/LocalTime;-><init>(JLorg/joda/time/Chronology;)V

    return-object v0
.end method

.method public static now()Lorg/joda/time/LocalTime;
    .locals 1

    new-instance v0, Lorg/joda/time/LocalTime;

    invoke-direct {v0}, Lorg/joda/time/LocalTime;-><init>()V

    return-object v0
.end method

.method public static now(Lorg/joda/time/Chronology;)Lorg/joda/time/LocalTime;
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Lorg/joda/time/LocalTime;

    invoke-direct {v0, p0}, Lorg/joda/time/LocalTime;-><init>(Lorg/joda/time/Chronology;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Chronology must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static now(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/LocalTime;
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Lorg/joda/time/LocalTime;

    invoke-direct {v0, p0}, Lorg/joda/time/LocalTime;-><init>(Lorg/joda/time/DateTimeZone;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Zone must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parse(Ljava/lang/String;)Lorg/joda/time/LocalTime;
    .locals 1
    .annotation runtime Lorg/joda/convert/FromString;
    .end annotation

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->localTimeParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/joda/time/LocalTime;->parse(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/LocalTime;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/LocalTime;
    .locals 0

    invoke-virtual {p1, p0}, Lorg/joda/time/format/DateTimeFormatter;->parseLocalTime(Ljava/lang/String;)Lorg/joda/time/LocalTime;

    move-result-object p0

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lorg/joda/time/LocalTime;->iChronology:Lorg/joda/time/Chronology;

    if-nez v0, :cond_0

    new-instance v0, Lorg/joda/time/LocalTime;

    iget-wide v1, p0, Lorg/joda/time/LocalTime;->iLocalMillis:J

    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/LocalTime;-><init>(JLorg/joda/time/Chronology;)V

    return-object v0

    :cond_0
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    iget-object v1, p0, Lorg/joda/time/LocalTime;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTimeZone;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/joda/time/LocalTime;

    iget-wide v1, p0, Lorg/joda/time/LocalTime;->iLocalMillis:J

    iget-object v3, p0, Lorg/joda/time/LocalTime;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {v3}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/LocalTime;-><init>(JLorg/joda/time/Chronology;)V

    return-object v0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/joda/time/ReadablePartial;

    invoke-virtual {p0, p1}, Lorg/joda/time/LocalTime;->compareTo(Lorg/joda/time/ReadablePartial;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/joda/time/ReadablePartial;)I
    .locals 6

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/joda/time/LocalTime;

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Lorg/joda/time/LocalTime;

    iget-object v2, p0, Lorg/joda/time/LocalTime;->iChronology:Lorg/joda/time/Chronology;

    iget-object v3, v1, Lorg/joda/time/LocalTime;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lorg/joda/time/LocalTime;->iLocalMillis:J

    iget-wide v4, v1, Lorg/joda/time/LocalTime;->iLocalMillis:J

    cmp-long p1, v2, v4

    if-gez p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    invoke-super {p0, p1}, Lorg/joda/time/base/BaseLocal;->compareTo(Lorg/joda/time/ReadablePartial;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/joda/time/LocalTime;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lorg/joda/time/LocalTime;

    iget-object v2, p0, Lorg/joda/time/LocalTime;->iChronology:Lorg/joda/time/Chronology;

    iget-object v3, v1, Lorg/joda/time/LocalTime;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lorg/joda/time/LocalTime;->iLocalMillis:J

    iget-wide v4, v1, Lorg/joda/time/LocalTime;->iLocalMillis:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1}, Lorg/joda/time/base/BaseLocal;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(Lorg/joda/time/DateTimeFieldType;)I
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lorg/joda/time/LocalTime;->isSupported(Lorg/joda/time/DateTimeFieldType;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object p1

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result p1

    return p1

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

.method public getChronology()Lorg/joda/time/Chronology;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/LocalTime;->iChronology:Lorg/joda/time/Chronology;

    return-object v0
.end method

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

.method public getHourOfDay()I
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->hourOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method protected getLocalMillis()J
    .locals 2

    iget-wide v0, p0, Lorg/joda/time/LocalTime;->iLocalMillis:J

    return-wide v0
.end method

.method public getMillisOfDay()I
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getMillisOfSecond()I
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->millisOfSecond()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getMinuteOfHour()I
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->minuteOfHour()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getSecondOfMinute()I
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->secondOfMinute()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getValue(I)I
    .locals 3

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object p1

    invoke-virtual {p1}, Lorg/joda/time/Chronology;->millisOfSecond()Lorg/joda/time/DateTimeField;

    move-result-object p1

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result p1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object p1

    invoke-virtual {p1}, Lorg/joda/time/Chronology;->secondOfMinute()Lorg/joda/time/DateTimeField;

    move-result-object p1

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object p1

    invoke-virtual {p1}, Lorg/joda/time/Chronology;->minuteOfHour()Lorg/joda/time/DateTimeField;

    move-result-object p1

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result p1

    return p1

    :cond_3
    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object p1

    invoke-virtual {p1}, Lorg/joda/time/Chronology;->hourOfDay()Lorg/joda/time/DateTimeField;

    move-result-object p1

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lorg/joda/time/LocalTime;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->hourOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v0

    iget-wide v1, p0, Lorg/joda/time/LocalTime;->iLocalMillis:J

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    const/16 v1, 0xe1b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x17

    iget-object v0, p0, Lorg/joda/time/LocalTime;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->hourOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x17

    iget-object v0, p0, Lorg/joda/time/LocalTime;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->minuteOfHour()Lorg/joda/time/DateTimeField;

    move-result-object v0

    iget-wide v2, p0, Lorg/joda/time/LocalTime;->iLocalMillis:J

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x17

    iget-object v0, p0, Lorg/joda/time/LocalTime;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->minuteOfHour()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x17

    iget-object v0, p0, Lorg/joda/time/LocalTime;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->secondOfMinute()Lorg/joda/time/DateTimeField;

    move-result-object v0

    iget-wide v2, p0, Lorg/joda/time/LocalTime;->iLocalMillis:J

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x17

    iget-object v0, p0, Lorg/joda/time/LocalTime;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->secondOfMinute()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x17

    iget-object v0, p0, Lorg/joda/time/LocalTime;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->millisOfSecond()Lorg/joda/time/DateTimeField;

    move-result-object v0

    iget-wide v2, p0, Lorg/joda/time/LocalTime;->iLocalMillis:J

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x17

    iget-object v0, p0, Lorg/joda/time/LocalTime;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->millisOfSecond()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public hourOfDay()Lorg/joda/time/LocalTime$Property;
    .locals 2

    new-instance v0, Lorg/joda/time/LocalTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->hourOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalTime$Property;-><init>(Lorg/joda/time/LocalTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public isSupported(Lorg/joda/time/DateTimeFieldType;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lorg/joda/time/DateTimeFieldType;->getDurationType()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/joda/time/LocalTime;->isSupported(Lorg/joda/time/DurationFieldType;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Lorg/joda/time/DateTimeFieldType;->getRangeDurationType()Lorg/joda/time/DurationFieldType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/joda/time/LocalTime;->isSupported(Lorg/joda/time/DurationFieldType;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    if-ne p1, v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public isSupported(Lorg/joda/time/DurationFieldType;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/joda/time/DurationFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DurationField;

    move-result-object v1

    sget-object v2, Lorg/joda/time/LocalTime;->TIME_DURATION_TYPES:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v1}, Lorg/joda/time/DurationField;->getUnitMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object p1

    invoke-virtual {p1}, Lorg/joda/time/Chronology;->days()Lorg/joda/time/DurationField;

    move-result-object p1

    invoke-virtual {p1}, Lorg/joda/time/DurationField;->getUnitMillis()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    invoke-virtual {v1}, Lorg/joda/time/DurationField;->isSupported()Z

    move-result p1

    return p1
.end method

.method public millisOfDay()Lorg/joda/time/LocalTime$Property;
    .locals 2

    new-instance v0, Lorg/joda/time/LocalTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalTime$Property;-><init>(Lorg/joda/time/LocalTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public millisOfSecond()Lorg/joda/time/LocalTime$Property;
    .locals 2

    new-instance v0, Lorg/joda/time/LocalTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->millisOfSecond()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalTime$Property;-><init>(Lorg/joda/time/LocalTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public minus(Lorg/joda/time/ReadablePeriod;)Lorg/joda/time/LocalTime;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/LocalTime;->withPeriodAdded(Lorg/joda/time/ReadablePeriod;I)Lorg/joda/time/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public minusHours(I)Lorg/joda/time/LocalTime;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->hours()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->subtract(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalTime;->withLocalMillis(J)Lorg/joda/time/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public minusMillis(I)Lorg/joda/time/LocalTime;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->millis()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->subtract(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalTime;->withLocalMillis(J)Lorg/joda/time/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public minusMinutes(I)Lorg/joda/time/LocalTime;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->minutes()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->subtract(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalTime;->withLocalMillis(J)Lorg/joda/time/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public minusSeconds(I)Lorg/joda/time/LocalTime;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->seconds()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->subtract(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalTime;->withLocalMillis(J)Lorg/joda/time/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public minuteOfHour()Lorg/joda/time/LocalTime$Property;
    .locals 2

    new-instance v0, Lorg/joda/time/LocalTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->minuteOfHour()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalTime$Property;-><init>(Lorg/joda/time/LocalTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public plus(Lorg/joda/time/ReadablePeriod;)Lorg/joda/time/LocalTime;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/LocalTime;->withPeriodAdded(Lorg/joda/time/ReadablePeriod;I)Lorg/joda/time/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public plusHours(I)Lorg/joda/time/LocalTime;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->hours()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalTime;->withLocalMillis(J)Lorg/joda/time/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public plusMillis(I)Lorg/joda/time/LocalTime;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->millis()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalTime;->withLocalMillis(J)Lorg/joda/time/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public plusMinutes(I)Lorg/joda/time/LocalTime;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->minutes()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalTime;->withLocalMillis(J)Lorg/joda/time/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public plusSeconds(I)Lorg/joda/time/LocalTime;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->seconds()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalTime;->withLocalMillis(J)Lorg/joda/time/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public property(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/LocalTime$Property;
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lorg/joda/time/LocalTime;->isSupported(Lorg/joda/time/DateTimeFieldType;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/joda/time/LocalTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/joda/time/LocalTime$Property;-><init>(Lorg/joda/time/LocalTime;Lorg/joda/time/DateTimeField;)V

    return-object v0

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

.method public secondOfMinute()Lorg/joda/time/LocalTime$Property;
    .locals 2

    new-instance v0, Lorg/joda/time/LocalTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->secondOfMinute()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalTime$Property;-><init>(Lorg/joda/time/LocalTime;Lorg/joda/time/DateTimeField;)V

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

    invoke-virtual {p0, v0}, Lorg/joda/time/LocalTime;->toDateTimeToday(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public toDateTimeToday(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getChronology()Lorg/joda/time/Chronology;

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

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/joda/convert/ToString;
    .end annotation

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->time()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadablePartial;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadablePartial;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/joda/time/format/DateTimeFormatter;->withLocale(Ljava/util/Locale;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadablePartial;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public withField(Lorg/joda/time/DateTimeFieldType;I)Lorg/joda/time/LocalTime;
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lorg/joda/time/LocalTime;->isSupported(Lorg/joda/time/DateTimeFieldType;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object p1

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1, p2}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/LocalTime;->withLocalMillis(J)Lorg/joda/time/LocalTime;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Field \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not supported"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/LocalTime;
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lorg/joda/time/LocalTime;->isSupported(Lorg/joda/time/DurationFieldType;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/DurationFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DurationField;

    move-result-object p1

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1, p2}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/LocalTime;->withLocalMillis(J)Lorg/joda/time/LocalTime;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Field \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not supported"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withFields(Lorg/joda/time/ReadablePartial;)Lorg/joda/time/LocalTime;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lorg/joda/time/Chronology;->set(Lorg/joda/time/ReadablePartial;J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalTime;->withLocalMillis(J)Lorg/joda/time/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public withHourOfDay(I)Lorg/joda/time/LocalTime;
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->hourOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalTime;->withLocalMillis(J)Lorg/joda/time/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method withLocalMillis(J)Lorg/joda/time/LocalTime;
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/joda/time/LocalTime;

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lorg/joda/time/LocalTime;-><init>(JLorg/joda/time/Chronology;)V

    :goto_0
    return-object v0
.end method

.method public withMillisOfDay(I)Lorg/joda/time/LocalTime;
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalTime;->withLocalMillis(J)Lorg/joda/time/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public withMillisOfSecond(I)Lorg/joda/time/LocalTime;
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->millisOfSecond()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalTime;->withLocalMillis(J)Lorg/joda/time/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public withMinuteOfHour(I)Lorg/joda/time/LocalTime;
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->minuteOfHour()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalTime;->withLocalMillis(J)Lorg/joda/time/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public withPeriodAdded(Lorg/joda/time/ReadablePeriod;I)Lorg/joda/time/LocalTime;
    .locals 3

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2, p2}, Lorg/joda/time/Chronology;->add(Lorg/joda/time/ReadablePeriod;JI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/LocalTime;->withLocalMillis(J)Lorg/joda/time/LocalTime;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method public withSecondOfMinute(I)Lorg/joda/time/LocalTime;
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->secondOfMinute()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalTime;->withLocalMillis(J)Lorg/joda/time/LocalTime;

    move-result-object p1

    return-object p1
.end method
