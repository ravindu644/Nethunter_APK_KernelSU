.class public abstract Lorg/joda/time/field/AbstractReadableInstantFieldProperty;
.super Ljava/lang/Object;
.source "AbstractReadableInstantFieldProperty.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1b5b33e6c8f3f47dL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lorg/joda/time/ReadableInstant;)I
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->get()I

    move-result v0

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getFieldType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/joda/time/ReadableInstant;->get(Lorg/joda/time/DateTimeFieldType;)I

    move-result p1

    if-ge v0, p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-le v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The instant must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public compareTo(Lorg/joda/time/ReadablePartial;)I
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->get()I

    move-result v0

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getFieldType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/joda/time/ReadablePartial;->get(Lorg/joda/time/DateTimeFieldType;)I

    move-result p1

    if-ge v0, p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-le v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The partial must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->get()I

    move-result v1

    invoke-virtual {p1}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->get()I

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getFieldType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-virtual {p1}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getFieldType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {p1}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getChronology()Lorg/joda/time/Chronology;

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

.method public get()I
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getAsShortText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getAsShortText(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsShortText(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->getAsShortText(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAsString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->get()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getAsText(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsText(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->getAsText(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getChronology()Lorg/joda/time/Chronology;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The method getChronology() was added in v1.4 and needs to be implemented by subclasses of AbstractReadableInstantFieldProperty"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDifference(Lorg/joda/time/ReadableInstant;)I
    .locals 5

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object p1

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getMillis()J

    move-result-wide v0

    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/joda/time/DateTimeField;->getDifference(JJ)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getMillis()J

    move-result-wide v1

    invoke-interface {p1}, Lorg/joda/time/ReadableInstant;->getMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/joda/time/DateTimeField;->getDifference(JJ)I

    move-result p1

    return p1
.end method

.method public getDifferenceAsLong(Lorg/joda/time/ReadableInstant;)J
    .locals 5

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object p1

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getMillis()J

    move-result-wide v0

    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/joda/time/DateTimeField;->getDifferenceAsLong(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getMillis()J

    move-result-wide v1

    invoke-interface {p1}, Lorg/joda/time/ReadableInstant;->getMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/joda/time/DateTimeField;->getDifferenceAsLong(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDurationField()Lorg/joda/time/DurationField;
    .locals 1

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    return-object v0
.end method

.method public abstract getField()Lorg/joda/time/DateTimeField;
.end method

.method public getFieldType()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    return-object v0
.end method

.method public getLeapAmount()I
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTimeField;->getLeapAmount(J)I

    move-result v0

    return v0
.end method

.method public getLeapDurationField()Lorg/joda/time/DurationField;
    .locals 1

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getLeapDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumShortTextLength(Ljava/util/Locale;)I
    .locals 1

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/DateTimeField;->getMaximumShortTextLength(Ljava/util/Locale;)I

    move-result p1

    return p1
.end method

.method public getMaximumTextLength(Ljava/util/Locale;)I
    .locals 1

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/DateTimeField;->getMaximumTextLength(Ljava/util/Locale;)I

    move-result p1

    return p1
.end method

.method public getMaximumValue()I
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTimeField;->getMaximumValue(J)I

    move-result v0

    return v0
.end method

.method public getMaximumValueOverall()I
    .locals 1

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getMaximumValue()I

    move-result v0

    return v0
.end method

.method protected abstract getMillis()J
.end method

.method public getMinimumValue()I
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTimeField;->getMinimumValue(J)I

    move-result v0

    return v0
.end method

.method public getMinimumValueOverall()I
    .locals 1

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getMinimumValue()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRangeDurationField()Lorg/joda/time/DurationField;
    .locals 1

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getRangeDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->get()I

    move-result v0

    mul-int/lit8 v0, v0, 0x11

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getFieldType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isLeap()Z
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTimeField;->isLeap(J)Z

    move-result v0

    return v0
.end method

.method public remainder()J
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTimeField;->remainder(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public toInterval()Lorg/joda/time/Interval;
    .locals 9

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTimeField;->roundFloor(J)J

    move-result-wide v4

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v5, v1}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide v6

    new-instance v0, Lorg/joda/time/Interval;

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v8

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lorg/joda/time/Interval;-><init>(JJLorg/joda/time/Chronology;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Property["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
