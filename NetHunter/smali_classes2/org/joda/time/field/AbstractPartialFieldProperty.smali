.class public abstract Lorg/joda/time/field/AbstractPartialFieldProperty;
.super Ljava/lang/Object;
.source "AbstractPartialFieldProperty.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lorg/joda/time/ReadableInstant;)I
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->get()I

    move-result v0

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getFieldType()Lorg/joda/time/DateTimeFieldType;

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

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->get()I

    move-result v0

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getFieldType()Lorg/joda/time/DateTimeFieldType;

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

    const-string v0, "The instant must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/joda/time/field/AbstractPartialFieldProperty;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/joda/time/field/AbstractPartialFieldProperty;

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->get()I

    move-result v1

    invoke-virtual {p1}, Lorg/joda/time/field/AbstractPartialFieldProperty;->get()I

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getFieldType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-virtual {p1}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getFieldType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getReadablePartial()Lorg/joda/time/ReadablePartial;

    move-result-object v1

    invoke-interface {v1}, Lorg/joda/time/ReadablePartial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {p1}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getReadablePartial()Lorg/joda/time/ReadablePartial;

    move-result-object p1

    invoke-interface {p1}, Lorg/joda/time/ReadablePartial;->getChronology()Lorg/joda/time/Chronology;

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

.method public abstract get()I
.end method

.method public getAsShortText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getAsShortText(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsShortText(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getReadablePartial()Lorg/joda/time/ReadablePartial;

    move-result-object v1

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->get()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->getAsShortText(Lorg/joda/time/ReadablePartial;ILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAsString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->get()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getAsText(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsText(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getReadablePartial()Lorg/joda/time/ReadablePartial;

    move-result-object v1

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->get()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->getAsText(Lorg/joda/time/ReadablePartial;ILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDurationField()Lorg/joda/time/DurationField;
    .locals 1

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    return-object v0
.end method

.method public abstract getField()Lorg/joda/time/DateTimeField;
.end method

.method public getFieldType()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumShortTextLength(Ljava/util/Locale;)I
    .locals 1

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/DateTimeField;->getMaximumShortTextLength(Ljava/util/Locale;)I

    move-result p1

    return p1
.end method

.method public getMaximumTextLength(Ljava/util/Locale;)I
    .locals 1

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/DateTimeField;->getMaximumTextLength(Ljava/util/Locale;)I

    move-result p1

    return p1
.end method

.method public getMaximumValue()I
    .locals 2

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getReadablePartial()Lorg/joda/time/ReadablePartial;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTimeField;->getMaximumValue(Lorg/joda/time/ReadablePartial;)I

    move-result v0

    return v0
.end method

.method public getMaximumValueOverall()I
    .locals 1

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getMaximumValue()I

    move-result v0

    return v0
.end method

.method public getMinimumValue()I
    .locals 2

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getReadablePartial()Lorg/joda/time/ReadablePartial;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTimeField;->getMinimumValue(Lorg/joda/time/ReadablePartial;)I

    move-result v0

    return v0
.end method

.method public getMinimumValueOverall()I
    .locals 1

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getMinimumValue()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRangeDurationField()Lorg/joda/time/DurationField;
    .locals 1

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getRangeDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getReadablePartial()Lorg/joda/time/ReadablePartial;
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0xf7

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->get()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xd

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getFieldType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xd

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getReadablePartial()Lorg/joda/time/ReadablePartial;

    move-result-object v1

    invoke-interface {v1}, Lorg/joda/time/ReadablePartial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Property["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
