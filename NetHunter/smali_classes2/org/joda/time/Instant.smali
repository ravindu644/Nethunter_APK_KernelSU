.class public final Lorg/joda/time/Instant;
.super Lorg/joda/time/base/AbstractInstant;
.source "Instant.java"

# interfaces
.implements Lorg/joda/time/ReadableInstant;
.implements Ljava/io/Serializable;


# static fields
.field public static final EPOCH:Lorg/joda/time/Instant;

.field private static final serialVersionUID:J = 0x2dc8bed0c60e9ccdL


# instance fields
.field private final iMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/joda/time/Instant;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/joda/time/Instant;-><init>(J)V

    sput-object v0, Lorg/joda/time/Instant;->EPOCH:Lorg/joda/time/Instant;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/joda/time/base/AbstractInstant;-><init>()V

    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/Instant;->iMillis:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Lorg/joda/time/base/AbstractInstant;-><init>()V

    iput-wide p1, p0, Lorg/joda/time/Instant;->iMillis:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Lorg/joda/time/base/AbstractInstant;-><init>()V

    invoke-static {}, Lorg/joda/time/convert/ConverterManager;->getInstance()Lorg/joda/time/convert/ConverterManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/convert/ConverterManager;->getInstantConverter(Ljava/lang/Object;)Lorg/joda/time/convert/InstantConverter;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/joda/time/convert/InstantConverter;->getInstantMillis(Ljava/lang/Object;Lorg/joda/time/Chronology;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/Instant;->iMillis:J

    return-void
.end method

.method public static now()Lorg/joda/time/Instant;
    .locals 1

    new-instance v0, Lorg/joda/time/Instant;

    invoke-direct {v0}, Lorg/joda/time/Instant;-><init>()V

    return-object v0
.end method

.method public static ofEpochMilli(J)Lorg/joda/time/Instant;
    .locals 1

    new-instance v0, Lorg/joda/time/Instant;

    invoke-direct {v0, p0, p1}, Lorg/joda/time/Instant;-><init>(J)V

    return-object v0
.end method

.method public static ofEpochSecond(J)Lorg/joda/time/Instant;
    .locals 2

    new-instance v0, Lorg/joda/time/Instant;

    const/16 v1, 0x3e8

    invoke-static {p0, p1, v1}, Lorg/joda/time/field/FieldUtils;->safeMultiply(JI)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Lorg/joda/time/Instant;-><init>(J)V

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lorg/joda/time/Instant;
    .locals 1
    .annotation runtime Lorg/joda/convert/FromString;
    .end annotation

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateTimeParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/joda/time/Instant;->parse(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/Instant;
    .locals 0

    invoke-virtual {p1, p0}, Lorg/joda/time/format/DateTimeFormatter;->parseDateTime(Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object p0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->toInstant()Lorg/joda/time/Instant;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getChronology()Lorg/joda/time/Chronology;
    .locals 1

    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    return-object v0
.end method

.method public getMillis()J
    .locals 2

    iget-wide v0, p0, Lorg/joda/time/Instant;->iMillis:J

    return-wide v0
.end method

.method public minus(J)Lorg/joda/time/Instant;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/Instant;->withDurationAdded(JI)Lorg/joda/time/Instant;

    move-result-object p1

    return-object p1
.end method

.method public minus(Lorg/joda/time/ReadableDuration;)Lorg/joda/time/Instant;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/Instant;->withDurationAdded(Lorg/joda/time/ReadableDuration;I)Lorg/joda/time/Instant;

    move-result-object p1

    return-object p1
.end method

.method public plus(J)Lorg/joda/time/Instant;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/Instant;->withDurationAdded(JI)Lorg/joda/time/Instant;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lorg/joda/time/ReadableDuration;)Lorg/joda/time/Instant;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/Instant;->withDurationAdded(Lorg/joda/time/ReadableDuration;I)Lorg/joda/time/Instant;

    move-result-object p1

    return-object p1
.end method

.method public toDateTime()Lorg/joda/time/DateTime;
    .locals 4

    new-instance v0, Lorg/joda/time/DateTime;

    invoke-virtual {p0}, Lorg/joda/time/Instant;->getMillis()J

    move-result-wide v1

    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstance()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/Chronology;)V

    return-object v0
.end method

.method public toDateTimeISO()Lorg/joda/time/DateTime;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/joda/time/Instant;->toDateTime()Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public toInstant()Lorg/joda/time/Instant;
    .locals 0

    return-object p0
.end method

.method public toMutableDateTime()Lorg/joda/time/MutableDateTime;
    .locals 4

    new-instance v0, Lorg/joda/time/MutableDateTime;

    invoke-virtual {p0}, Lorg/joda/time/Instant;->getMillis()J

    move-result-wide v1

    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstance()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/MutableDateTime;-><init>(JLorg/joda/time/Chronology;)V

    return-object v0
.end method

.method public toMutableDateTimeISO()Lorg/joda/time/MutableDateTime;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/joda/time/Instant;->toMutableDateTime()Lorg/joda/time/MutableDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withDurationAdded(JI)Lorg/joda/time/Instant;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/Instant;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v3

    invoke-virtual {p0}, Lorg/joda/time/Instant;->getMillis()J

    move-result-wide v4

    move-wide v6, p1

    move v8, p3

    invoke-virtual/range {v3 .. v8}, Lorg/joda/time/Chronology;->add(JJI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/Instant;->withMillis(J)Lorg/joda/time/Instant;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method public withDurationAdded(Lorg/joda/time/ReadableDuration;I)Lorg/joda/time/Instant;
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/joda/time/ReadableDuration;->getMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lorg/joda/time/Instant;->withDurationAdded(JI)Lorg/joda/time/Instant;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method public withMillis(J)Lorg/joda/time/Instant;
    .locals 3

    iget-wide v0, p0, Lorg/joda/time/Instant;->iMillis:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/joda/time/Instant;

    invoke-direct {v0, p1, p2}, Lorg/joda/time/Instant;-><init>(J)V

    :goto_0
    return-object v0
.end method
