.class final Lorg/joda/time/chrono/BasicWeekOfWeekyearDateTimeField;
.super Lorg/joda/time/field/PreciseDurationDateTimeField;
.source "BasicWeekOfWeekyearDateTimeField.java"


# static fields
.field private static final serialVersionUID:J = -0x1607b5620ca7cd60L


# instance fields
.field private final iChronology:Lorg/joda/time/chrono/BasicChronology;


# direct methods
.method constructor <init>(Lorg/joda/time/chrono/BasicChronology;Lorg/joda/time/DurationField;)V
    .locals 1

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekOfWeekyear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/joda/time/field/PreciseDurationDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;)V

    iput-object p1, p0, Lorg/joda/time/chrono/BasicWeekOfWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/BasicWeekOfWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->weekOfWeekyear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get(J)I
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/BasicWeekOfWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getWeekOfWeekyear(J)I

    move-result p1

    return p1
.end method

.method public getMaximumValue()I
    .locals 1

    const/16 v0, 0x35

    return v0
.end method

.method public getMaximumValue(J)I
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/BasicWeekOfWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getWeekyear(J)I

    move-result p1

    iget-object p2, p0, Lorg/joda/time/chrono/BasicWeekOfWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {p2, p1}, Lorg/joda/time/chrono/BasicChronology;->getWeeksInYear(I)I

    move-result p1

    return p1
.end method

.method public getMaximumValue(Lorg/joda/time/ReadablePartial;)I
    .locals 1

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekyear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePartial;->isSupported(Lorg/joda/time/DateTimeFieldType;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekyear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePartial;->get(Lorg/joda/time/DateTimeFieldType;)I

    move-result p1

    iget-object v0, p0, Lorg/joda/time/chrono/BasicWeekOfWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1}, Lorg/joda/time/chrono/BasicChronology;->getWeeksInYear(I)I

    move-result p1

    return p1

    :cond_0
    const/16 p1, 0x35

    return p1
.end method

.method public getMaximumValue(Lorg/joda/time/ReadablePartial;[I)I
    .locals 4

    invoke-interface {p1}, Lorg/joda/time/ReadablePartial;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Lorg/joda/time/ReadablePartial;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekyear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v3

    if-ne v2, v3, :cond_0

    aget p1, p2, v1

    iget-object p2, p0, Lorg/joda/time/chrono/BasicWeekOfWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {p2, p1}, Lorg/joda/time/chrono/BasicChronology;->getWeeksInYear(I)I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x35

    return p1
.end method

.method protected getMaximumValueForSet(JI)I
    .locals 1

    const/16 v0, 0x34

    if-le p3, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicWeekOfWeekyearDateTimeField;->getMaximumValue(J)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getMinimumValue()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getRangeDurationField()Lorg/joda/time/DurationField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/BasicWeekOfWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->weekyears()Lorg/joda/time/DurationField;

    move-result-object v0

    return-object v0
.end method

.method public remainder(J)J
    .locals 2

    const-wide/32 v0, 0xf731400

    add-long/2addr p1, v0

    invoke-super {p0, p1, p2}, Lorg/joda/time/field/PreciseDurationDateTimeField;->remainder(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public roundCeiling(J)J
    .locals 2

    const-wide/32 v0, 0xf731400

    add-long/2addr p1, v0

    invoke-super {p0, p1, p2}, Lorg/joda/time/field/PreciseDurationDateTimeField;->roundCeiling(J)J

    move-result-wide p1

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public roundFloor(J)J
    .locals 2

    const-wide/32 v0, 0xf731400

    add-long/2addr p1, v0

    invoke-super {p0, p1, p2}, Lorg/joda/time/field/PreciseDurationDateTimeField;->roundFloor(J)J

    move-result-wide p1

    sub-long/2addr p1, v0

    return-wide p1
.end method
