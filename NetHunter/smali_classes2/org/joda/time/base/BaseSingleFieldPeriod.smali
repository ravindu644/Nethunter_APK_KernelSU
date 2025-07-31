.class public abstract Lorg/joda/time/base/BaseSingleFieldPeriod;
.super Ljava/lang/Object;
.source "BaseSingleFieldPeriod.java"

# interfaces
.implements Lorg/joda/time/ReadablePeriod;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/joda/time/ReadablePeriod;",
        "Ljava/lang/Comparable<",
        "Lorg/joda/time/base/BaseSingleFieldPeriod;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final START_1972:J = 0xeaf625800L

.field private static final serialVersionUID:J = 0x8898d4e461cL


# instance fields
.field private volatile iPeriod:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/joda/time/base/BaseSingleFieldPeriod;->iPeriod:I

    return-void
.end method

.method protected static between(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;Lorg/joda/time/DurationFieldType;)I
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p0}, Lorg/joda/time/DateTimeUtils;->getInstantChronology(Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/joda/time/DurationFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DurationField;

    move-result-object p2

    invoke-interface {p1}, Lorg/joda/time/ReadableInstant;->getMillis()J

    move-result-wide v0

    invoke-interface {p0}, Lorg/joda/time/ReadableInstant;->getMillis()J

    move-result-wide p0

    invoke-virtual {p2, v0, v1, p0, p1}, Lorg/joda/time/DurationField;->getDifference(JJ)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ReadableInstant objects must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static between(Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePeriod;)I
    .locals 8

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    invoke-interface {p0}, Lorg/joda/time/ReadablePartial;->size()I

    move-result v0

    invoke-interface {p1}, Lorg/joda/time/ReadablePartial;->size()I

    move-result v1

    const-string v2, "ReadablePartial objects must have the same set of fields"

    if-ne v0, v1, :cond_3

    invoke-interface {p0}, Lorg/joda/time/ReadablePartial;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-interface {p0, v3}, Lorg/joda/time/ReadablePartial;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v4

    invoke-interface {p1, v3}, Lorg/joda/time/ReadablePartial;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v5

    if-ne v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p0}, Lorg/joda/time/DateTimeUtils;->isContiguous(Lorg/joda/time/ReadablePartial;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lorg/joda/time/ReadablePartial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v2

    const-wide v3, 0xeaf625800L

    invoke-virtual {v2, p0, v3, v4}, Lorg/joda/time/Chronology;->set(Lorg/joda/time/ReadablePartial;J)J

    move-result-wide v5

    invoke-virtual {v2, p1, v3, v4}, Lorg/joda/time/Chronology;->set(Lorg/joda/time/ReadablePartial;J)J

    move-result-wide p0

    move-object v3, p2

    move-wide v4, v5

    move-wide v6, p0

    invoke-virtual/range {v2 .. v7}, Lorg/joda/time/Chronology;->get(Lorg/joda/time/ReadablePeriod;JJ)[I

    move-result-object p0

    aget p0, p0, v1

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ReadablePartial objects must be contiguous"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ReadablePartial objects must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static standardPeriodIn(Lorg/joda/time/ReadablePeriod;J)I
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v1

    const-wide/16 v2, 0x0

    :goto_0
    invoke-interface {p0}, Lorg/joda/time/ReadablePeriod;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    invoke-interface {p0, v0}, Lorg/joda/time/ReadablePeriod;->getValue(I)I

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p0, v0}, Lorg/joda/time/ReadablePeriod;->getFieldType(I)Lorg/joda/time/DurationFieldType;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/joda/time/DurationFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DurationField;

    move-result-object v5

    invoke-virtual {v5}, Lorg/joda/time/DurationField;->isPrecise()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lorg/joda/time/DurationField;->getUnitMillis()J

    move-result-wide v5

    invoke-static {v5, v6, v4}, Lorg/joda/time/field/FieldUtils;->safeMultiply(JI)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide v2

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot convert period to duration as "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/joda/time/DurationField;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not precise in the period "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    div-long/2addr v2, p1

    invoke-static {v2, v3}, Lorg/joda/time/field/FieldUtils;->safeToInt(J)I

    move-result p0

    return p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/joda/time/base/BaseSingleFieldPeriod;

    invoke-virtual {p0, p1}, Lorg/joda/time/base/BaseSingleFieldPeriod;->compareTo(Lorg/joda/time/base/BaseSingleFieldPeriod;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/joda/time/base/BaseSingleFieldPeriod;)I
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lorg/joda/time/base/BaseSingleFieldPeriod;->getValue()I

    move-result p1

    invoke-virtual {p0}, Lorg/joda/time/base/BaseSingleFieldPeriod;->getValue()I

    move-result v0

    if-le v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-ge v0, p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " cannot be compared to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/joda/time/ReadablePeriod;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/joda/time/ReadablePeriod;

    invoke-interface {p1}, Lorg/joda/time/ReadablePeriod;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    invoke-virtual {p0}, Lorg/joda/time/base/BaseSingleFieldPeriod;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v3

    if-ne v1, v3, :cond_2

    invoke-interface {p1, v2}, Lorg/joda/time/ReadablePeriod;->getValue(I)I

    move-result p1

    invoke-virtual {p0}, Lorg/joda/time/base/BaseSingleFieldPeriod;->getValue()I

    move-result v1

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public get(Lorg/joda/time/DurationFieldType;)I
    .locals 1

    invoke-virtual {p0}, Lorg/joda/time/base/BaseSingleFieldPeriod;->getFieldType()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/joda/time/base/BaseSingleFieldPeriod;->getValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract getFieldType()Lorg/joda/time/DurationFieldType;
.end method

.method public getFieldType(I)Lorg/joda/time/DurationFieldType;
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/joda/time/base/BaseSingleFieldPeriod;->getFieldType()Lorg/joda/time/DurationFieldType;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getPeriodType()Lorg/joda/time/PeriodType;
.end method

.method protected getValue()I
    .locals 1

    iget v0, p0, Lorg/joda/time/base/BaseSingleFieldPeriod;->iPeriod:I

    return v0
.end method

.method public getValue(I)I
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/joda/time/base/BaseSingleFieldPeriod;->getValue()I

    move-result p1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x1cb

    invoke-virtual {p0}, Lorg/joda/time/base/BaseSingleFieldPeriod;->getValue()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1b

    invoke-virtual {p0}, Lorg/joda/time/base/BaseSingleFieldPeriod;->getFieldType()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isSupported(Lorg/joda/time/DurationFieldType;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/joda/time/base/BaseSingleFieldPeriod;->getFieldType()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected setValue(I)V
    .locals 0

    iput p1, p0, Lorg/joda/time/base/BaseSingleFieldPeriod;->iPeriod:I

    return-void
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toMutablePeriod()Lorg/joda/time/MutablePeriod;
    .locals 1

    new-instance v0, Lorg/joda/time/MutablePeriod;

    invoke-direct {v0}, Lorg/joda/time/MutablePeriod;-><init>()V

    invoke-virtual {v0, p0}, Lorg/joda/time/MutablePeriod;->add(Lorg/joda/time/ReadablePeriod;)V

    return-object v0
.end method

.method public toPeriod()Lorg/joda/time/Period;
    .locals 1

    sget-object v0, Lorg/joda/time/Period;->ZERO:Lorg/joda/time/Period;

    invoke-virtual {v0, p0}, Lorg/joda/time/Period;->withFields(Lorg/joda/time/ReadablePeriod;)Lorg/joda/time/Period;

    move-result-object v0

    return-object v0
.end method
