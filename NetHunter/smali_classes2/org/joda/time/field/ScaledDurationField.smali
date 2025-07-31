.class public Lorg/joda/time/field/ScaledDurationField;
.super Lorg/joda/time/field/DecoratedDurationField;
.source "ScaledDurationField.java"


# static fields
.field private static final serialVersionUID:J = -0x2c7b410ef9b08afdL


# instance fields
.field private final iScalar:I


# direct methods
.method public constructor <init>(Lorg/joda/time/DurationField;Lorg/joda/time/DurationFieldType;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/joda/time/field/DecoratedDurationField;-><init>(Lorg/joda/time/DurationField;Lorg/joda/time/DurationFieldType;)V

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    if-eq p3, p1, :cond_0

    iput p3, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The scalar must not be 0 or 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public add(JI)J
    .locals 4

    int-to-long v0, p3

    iget p3, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    int-to-long v2, p3

    mul-long v0, v0, v2

    invoke-virtual {p0}, Lorg/joda/time/field/ScaledDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object p3

    invoke-virtual {p3, p1, p2, v0, v1}, Lorg/joda/time/DurationField;->add(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public add(JJ)J
    .locals 1

    iget v0, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    invoke-static {p3, p4, v0}, Lorg/joda/time/field/FieldUtils;->safeMultiply(JI)J

    move-result-wide p3

    invoke-virtual {p0}, Lorg/joda/time/field/ScaledDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DurationField;->add(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/joda/time/field/ScaledDurationField;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lorg/joda/time/field/ScaledDurationField;

    invoke-virtual {p0}, Lorg/joda/time/field/ScaledDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v1

    invoke-virtual {p1}, Lorg/joda/time/field/ScaledDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/joda/time/field/ScaledDurationField;->getType()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-virtual {p1}, Lorg/joda/time/field/ScaledDurationField;->getType()Lorg/joda/time/DurationFieldType;

    move-result-object v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    iget p1, p1, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getDifference(JJ)I
    .locals 1

    invoke-virtual {p0}, Lorg/joda/time/field/ScaledDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DurationField;->getDifference(JJ)I

    move-result p1

    iget p2, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    div-int/2addr p1, p2

    return p1
.end method

.method public getDifferenceAsLong(JJ)J
    .locals 1

    invoke-virtual {p0}, Lorg/joda/time/field/ScaledDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DurationField;->getDifferenceAsLong(JJ)J

    move-result-wide p1

    iget p3, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    int-to-long p3, p3

    div-long/2addr p1, p3

    return-wide p1
.end method

.method public getMillis(I)J
    .locals 4

    int-to-long v0, p1

    iget p1, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    int-to-long v2, p1

    mul-long v0, v0, v2

    invoke-virtual {p0}, Lorg/joda/time/field/ScaledDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lorg/joda/time/DurationField;->getMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMillis(IJ)J
    .locals 4

    int-to-long v0, p1

    iget p1, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    int-to-long v2, p1

    mul-long v0, v0, v2

    invoke-virtual {p0}, Lorg/joda/time/field/ScaledDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object p1

    invoke-virtual {p1, v0, v1, p2, p3}, Lorg/joda/time/DurationField;->getMillis(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getMillis(J)J
    .locals 1

    iget v0, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    invoke-static {p1, p2, v0}, Lorg/joda/time/field/FieldUtils;->safeMultiply(JI)J

    move-result-wide p1

    invoke-virtual {p0}, Lorg/joda/time/field/ScaledDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DurationField;->getMillis(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getMillis(JJ)J
    .locals 1

    iget v0, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    invoke-static {p1, p2, v0}, Lorg/joda/time/field/FieldUtils;->safeMultiply(JI)J

    move-result-wide p1

    invoke-virtual {p0}, Lorg/joda/time/field/ScaledDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DurationField;->getMillis(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getScalar()I
    .locals 1

    iget v0, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    return v0
.end method

.method public getUnitMillis()J
    .locals 4

    invoke-virtual {p0}, Lorg/joda/time/field/ScaledDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DurationField;->getUnitMillis()J

    move-result-wide v0

    iget v2, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public getValue(J)I
    .locals 1

    invoke-virtual {p0}, Lorg/joda/time/field/ScaledDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DurationField;->getValue(J)I

    move-result p1

    iget p2, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    div-int/2addr p1, p2

    return p1
.end method

.method public getValue(JJ)I
    .locals 1

    invoke-virtual {p0}, Lorg/joda/time/field/ScaledDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DurationField;->getValue(JJ)I

    move-result p1

    iget p2, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    div-int/2addr p1, p2

    return p1
.end method

.method public getValueAsLong(J)J
    .locals 2

    invoke-virtual {p0}, Lorg/joda/time/field/ScaledDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DurationField;->getValueAsLong(J)J

    move-result-wide p1

    iget v0, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public getValueAsLong(JJ)J
    .locals 1

    invoke-virtual {p0}, Lorg/joda/time/field/ScaledDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DurationField;->getValueAsLong(JJ)J

    move-result-wide p1

    iget p3, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    int-to-long p3, p3

    div-long/2addr p1, p3

    return-wide p1
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    int-to-long v0, v0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    invoke-virtual {p0}, Lorg/joda/time/field/ScaledDurationField;->getType()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lorg/joda/time/field/ScaledDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method
