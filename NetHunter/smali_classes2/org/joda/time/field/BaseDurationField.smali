.class public abstract Lorg/joda/time/field/BaseDurationField;
.super Lorg/joda/time/DurationField;
.source "BaseDurationField.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x237280647325c782L


# instance fields
.field private final iType:Lorg/joda/time/DurationFieldType;


# direct methods
.method protected constructor <init>(Lorg/joda/time/DurationFieldType;)V
    .locals 1

    invoke-direct {p0}, Lorg/joda/time/DurationField;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/joda/time/field/BaseDurationField;->iType:Lorg/joda/time/DurationFieldType;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The type must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/joda/time/DurationField;

    invoke-virtual {p0, p1}, Lorg/joda/time/field/BaseDurationField;->compareTo(Lorg/joda/time/DurationField;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/joda/time/DurationField;)I
    .locals 4

    invoke-virtual {p1}, Lorg/joda/time/DurationField;->getUnitMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/joda/time/field/BaseDurationField;->getUnitMillis()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public getDifference(JJ)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/joda/time/field/BaseDurationField;->getDifferenceAsLong(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/joda/time/field/FieldUtils;->safeToInt(J)I

    move-result p1

    return p1
.end method

.method public getMillis(I)J
    .locals 4

    int-to-long v0, p1

    invoke-virtual {p0}, Lorg/joda/time/field/BaseDurationField;->getUnitMillis()J

    move-result-wide v2

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public getMillis(J)J
    .locals 2

    invoke-virtual {p0}, Lorg/joda/time/field/BaseDurationField;->getUnitMillis()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lorg/joda/time/field/FieldUtils;->safeMultiply(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/field/BaseDurationField;->iType:Lorg/joda/time/DurationFieldType;

    invoke-virtual {v0}, Lorg/joda/time/DurationFieldType;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getType()Lorg/joda/time/DurationFieldType;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/field/BaseDurationField;->iType:Lorg/joda/time/DurationFieldType;

    return-object v0
.end method

.method public getValue(J)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/field/BaseDurationField;->getValueAsLong(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/joda/time/field/FieldUtils;->safeToInt(J)I

    move-result p1

    return p1
.end method

.method public getValue(JJ)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/joda/time/field/BaseDurationField;->getValueAsLong(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/joda/time/field/FieldUtils;->safeToInt(J)I

    move-result p1

    return p1
.end method

.method public getValueAsLong(J)J
    .locals 2

    invoke-virtual {p0}, Lorg/joda/time/field/BaseDurationField;->getUnitMillis()J

    move-result-wide v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public final isSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DurationField["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/joda/time/field/BaseDurationField;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
