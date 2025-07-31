.class public abstract Lorg/joda/time/base/BaseInterval;
.super Lorg/joda/time/base/AbstractInterval;
.source "BaseInterval.java"

# interfaces
.implements Lorg/joda/time/ReadableInterval;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x80072c1bd3fbddeL


# instance fields
.field private volatile iChronology:Lorg/joda/time/Chronology;

.field private volatile iEndMillis:J

.field private volatile iStartMillis:J


# direct methods
.method protected constructor <init>(JJLorg/joda/time/Chronology;)V
    .locals 0

    invoke-direct {p0}, Lorg/joda/time/base/AbstractInterval;-><init>()V

    invoke-static {p5}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object p5

    iput-object p5, p0, Lorg/joda/time/base/BaseInterval;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/joda/time/base/BaseInterval;->checkInterval(JJ)V

    iput-wide p1, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    iput-wide p3, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V
    .locals 2

    invoke-direct {p0}, Lorg/joda/time/base/AbstractInterval;-><init>()V

    invoke-static {}, Lorg/joda/time/convert/ConverterManager;->getInstance()Lorg/joda/time/convert/ConverterManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/convert/ConverterManager;->getIntervalConverter(Ljava/lang/Object;)Lorg/joda/time/convert/IntervalConverter;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/joda/time/convert/IntervalConverter;->isReadableInterval(Ljava/lang/Object;Lorg/joda/time/Chronology;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast p1, Lorg/joda/time/ReadableInterval;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lorg/joda/time/base/BaseInterval;->iChronology:Lorg/joda/time/Chronology;

    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getStartMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getEndMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    goto :goto_1

    :cond_1
    instance-of v1, p0, Lorg/joda/time/ReadWritableInterval;

    if-eqz v1, :cond_2

    move-object v1, p0

    check-cast v1, Lorg/joda/time/ReadWritableInterval;

    invoke-interface {v0, v1, p1, p2}, Lorg/joda/time/convert/IntervalConverter;->setInto(Lorg/joda/time/ReadWritableInterval;Ljava/lang/Object;Lorg/joda/time/Chronology;)V

    goto :goto_1

    :cond_2
    new-instance v1, Lorg/joda/time/MutableInterval;

    invoke-direct {v1}, Lorg/joda/time/MutableInterval;-><init>()V

    invoke-interface {v0, v1, p1, p2}, Lorg/joda/time/convert/IntervalConverter;->setInto(Lorg/joda/time/ReadWritableInterval;Ljava/lang/Object;Lorg/joda/time/Chronology;)V

    invoke-virtual {v1}, Lorg/joda/time/MutableInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object p1

    iput-object p1, p0, Lorg/joda/time/base/BaseInterval;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {v1}, Lorg/joda/time/MutableInterval;->getStartMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    invoke-virtual {v1}, Lorg/joda/time/MutableInterval;->getEndMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    :goto_1
    iget-wide p1, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    iget-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/joda/time/base/BaseInterval;->checkInterval(JJ)V

    return-void
.end method

.method protected constructor <init>(Lorg/joda/time/ReadableDuration;Lorg/joda/time/ReadableInstant;)V
    .locals 2

    invoke-direct {p0}, Lorg/joda/time/base/AbstractInterval;-><init>()V

    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->getInstantChronology(Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Chronology;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/base/BaseInterval;->iChronology:Lorg/joda/time/Chronology;

    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getDurationMillis(Lorg/joda/time/ReadableDuration;)J

    move-result-wide p1

    iget-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    neg-long p1, p1

    invoke-static {v0, v1, p1, p2}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    iget-wide p1, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    iget-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/joda/time/base/BaseInterval;->checkInterval(JJ)V

    return-void
.end method

.method protected constructor <init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableDuration;)V
    .locals 2

    invoke-direct {p0}, Lorg/joda/time/base/AbstractInterval;-><init>()V

    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantChronology(Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Chronology;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/base/BaseInterval;->iChronology:Lorg/joda/time/Chronology;

    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->getDurationMillis(Lorg/joda/time/ReadableDuration;)J

    move-result-wide p1

    iget-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    invoke-static {v0, v1, p1, p2}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    iget-wide p1, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    iget-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/joda/time/base/BaseInterval;->checkInterval(JJ)V

    return-void
.end method

.method protected constructor <init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)V
    .locals 2

    invoke-direct {p0}, Lorg/joda/time/base/AbstractInterval;-><init>()V

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    iput-wide p1, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstance()Lorg/joda/time/chrono/ISOChronology;

    move-result-object p1

    iput-object p1, p0, Lorg/joda/time/base/BaseInterval;->iChronology:Lorg/joda/time/Chronology;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantChronology(Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Chronology;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/base/BaseInterval;->iChronology:Lorg/joda/time/Chronology;

    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    iget-wide p1, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    iget-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/joda/time/base/BaseInterval;->checkInterval(JJ)V

    :goto_0
    return-void
.end method

.method protected constructor <init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadablePeriod;)V
    .locals 3

    invoke-direct {p0}, Lorg/joda/time/base/AbstractInterval;-><init>()V

    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantChronology(Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Chronology;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/base/BaseInterval;->iChronology:Lorg/joda/time/Chronology;

    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    if-nez p2, :cond_0

    iget-wide p1, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    iput-wide p1, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    const/4 p1, 0x1

    invoke-virtual {v0, p2, v1, v2, p1}, Lorg/joda/time/Chronology;->add(Lorg/joda/time/ReadablePeriod;JI)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    :goto_0
    iget-wide p1, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    iget-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/joda/time/base/BaseInterval;->checkInterval(JJ)V

    return-void
.end method

.method protected constructor <init>(Lorg/joda/time/ReadablePeriod;Lorg/joda/time/ReadableInstant;)V
    .locals 3

    invoke-direct {p0}, Lorg/joda/time/base/AbstractInterval;-><init>()V

    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->getInstantChronology(Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Chronology;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/base/BaseInterval;->iChronology:Lorg/joda/time/Chronology;

    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    if-nez p1, :cond_0

    iget-wide p1, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    iput-wide p1, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    const/4 p2, -0x1

    invoke-virtual {v0, p1, v1, v2, p2}, Lorg/joda/time/Chronology;->add(Lorg/joda/time/ReadablePeriod;JI)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    :goto_0
    iget-wide p1, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    iget-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/joda/time/base/BaseInterval;->checkInterval(JJ)V

    return-void
.end method


# virtual methods
.method public getChronology()Lorg/joda/time/Chronology;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/base/BaseInterval;->iChronology:Lorg/joda/time/Chronology;

    return-object v0
.end method

.method public getEndMillis()J
    .locals 2

    iget-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    return-wide v0
.end method

.method public getStartMillis()J
    .locals 2

    iget-wide v0, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    return-wide v0
.end method

.method protected setInterval(JJLorg/joda/time/Chronology;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/joda/time/base/BaseInterval;->checkInterval(JJ)V

    iput-wide p1, p0, Lorg/joda/time/base/BaseInterval;->iStartMillis:J

    iput-wide p3, p0, Lorg/joda/time/base/BaseInterval;->iEndMillis:J

    invoke-static {p5}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object p1

    iput-object p1, p0, Lorg/joda/time/base/BaseInterval;->iChronology:Lorg/joda/time/Chronology;

    return-void
.end method
