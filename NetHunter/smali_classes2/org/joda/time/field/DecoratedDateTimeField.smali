.class public abstract Lorg/joda/time/field/DecoratedDateTimeField;
.super Lorg/joda/time/field/BaseDateTimeField;
.source "DecoratedDateTimeField.java"


# static fields
.field private static final serialVersionUID:J = 0x2d19cbaa9b9c69dL


# instance fields
.field private final iField:Lorg/joda/time/DateTimeField;


# direct methods
.method protected constructor <init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeFieldType;)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/joda/time/field/BaseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/joda/time/DateTimeField;->isSupported()Z

    move-result p2

    if-eqz p2, :cond_0

    iput-object p1, p0, Lorg/joda/time/field/DecoratedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The field must be supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The field must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public get(J)I
    .locals 1

    iget-object v0, p0, Lorg/joda/time/field/DecoratedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result p1

    return p1
.end method

.method public getDurationField()Lorg/joda/time/DurationField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/field/DecoratedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumValue()I
    .locals 1

    iget-object v0, p0, Lorg/joda/time/field/DecoratedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getMaximumValue()I

    move-result v0

    return v0
.end method

.method public getMinimumValue()I
    .locals 1

    iget-object v0, p0, Lorg/joda/time/field/DecoratedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getMinimumValue()I

    move-result v0

    return v0
.end method

.method public getRangeDurationField()Lorg/joda/time/DurationField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/field/DecoratedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getRangeDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    return-object v0
.end method

.method public final getWrappedField()Lorg/joda/time/DateTimeField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/field/DecoratedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public isLenient()Z
    .locals 1

    iget-object v0, p0, Lorg/joda/time/field/DecoratedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->isLenient()Z

    move-result v0

    return v0
.end method

.method public roundFloor(J)J
    .locals 1

    iget-object v0, p0, Lorg/joda/time/field/DecoratedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->roundFloor(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public set(JI)J
    .locals 1

    iget-object v0, p0, Lorg/joda/time/field/DecoratedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide p1

    return-wide p1
.end method
