.class public Lorg/joda/time/field/DividedDateTimeField;
.super Lorg/joda/time/field/DecoratedDateTimeField;
.source "DividedDateTimeField.java"


# static fields
.field private static final serialVersionUID:J = 0x7371290d64b04a35L


# instance fields
.field final iDivisor:I

.field final iDurationField:Lorg/joda/time/DurationField;

.field private final iMax:I

.field private final iMin:I

.field final iRangeDurationField:Lorg/joda/time/DurationField;


# direct methods
.method public constructor <init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeFieldType;I)V
    .locals 1

    invoke-virtual {p1}, Lorg/joda/time/DateTimeField;->getRangeDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/joda/time/field/DividedDateTimeField;-><init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DurationField;Lorg/joda/time/DateTimeFieldType;I)V

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DurationField;Lorg/joda/time/DateTimeFieldType;I)V
    .locals 2

    invoke-direct {p0, p1, p3}, Lorg/joda/time/field/DecoratedDateTimeField;-><init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeFieldType;)V

    const/4 v0, 0x2

    if-lt p4, v0, :cond_3

    invoke-virtual {p1}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p3, 0x0

    iput-object p3, p0, Lorg/joda/time/field/DividedDateTimeField;->iDurationField:Lorg/joda/time/DurationField;

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/joda/time/field/ScaledDurationField;

    invoke-virtual {p3}, Lorg/joda/time/DateTimeFieldType;->getDurationType()Lorg/joda/time/DurationFieldType;

    move-result-object p3

    invoke-direct {v1, v0, p3, p4}, Lorg/joda/time/field/ScaledDurationField;-><init>(Lorg/joda/time/DurationField;Lorg/joda/time/DurationFieldType;I)V

    iput-object v1, p0, Lorg/joda/time/field/DividedDateTimeField;->iDurationField:Lorg/joda/time/DurationField;

    :goto_0
    iput-object p2, p0, Lorg/joda/time/field/DividedDateTimeField;->iRangeDurationField:Lorg/joda/time/DurationField;

    iput p4, p0, Lorg/joda/time/field/DividedDateTimeField;->iDivisor:I

    invoke-virtual {p1}, Lorg/joda/time/DateTimeField;->getMinimumValue()I

    move-result p2

    if-ltz p2, :cond_1

    div-int/2addr p2, p4

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    div-int/2addr p2, p4

    add-int/lit8 p2, p2, -0x1

    :goto_1
    invoke-virtual {p1}, Lorg/joda/time/DateTimeField;->getMaximumValue()I

    move-result p1

    if-ltz p1, :cond_2

    div-int/2addr p1, p4

    goto :goto_2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    div-int/2addr p1, p4

    add-int/lit8 p1, p1, -0x1

    :goto_2
    iput p2, p0, Lorg/joda/time/field/DividedDateTimeField;->iMin:I

    iput p1, p0, Lorg/joda/time/field/DividedDateTimeField;->iMax:I

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The divisor must be at least 2"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/joda/time/field/RemainderDateTimeField;Lorg/joda/time/DateTimeFieldType;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/joda/time/field/DividedDateTimeField;-><init>(Lorg/joda/time/field/RemainderDateTimeField;Lorg/joda/time/DurationField;Lorg/joda/time/DateTimeFieldType;)V

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/field/RemainderDateTimeField;Lorg/joda/time/DurationField;Lorg/joda/time/DateTimeFieldType;)V
    .locals 1

    invoke-virtual {p1}, Lorg/joda/time/field/RemainderDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/joda/time/field/DecoratedDateTimeField;-><init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeFieldType;)V

    iget p3, p1, Lorg/joda/time/field/RemainderDateTimeField;->iDivisor:I

    iput p3, p0, Lorg/joda/time/field/DividedDateTimeField;->iDivisor:I

    iget-object p1, p1, Lorg/joda/time/field/RemainderDateTimeField;->iRangeField:Lorg/joda/time/DurationField;

    iput-object p1, p0, Lorg/joda/time/field/DividedDateTimeField;->iDurationField:Lorg/joda/time/DurationField;

    iput-object p2, p0, Lorg/joda/time/field/DividedDateTimeField;->iRangeDurationField:Lorg/joda/time/DurationField;

    invoke-virtual {p0}, Lorg/joda/time/field/DividedDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object p1

    invoke-virtual {p1}, Lorg/joda/time/DateTimeField;->getMinimumValue()I

    move-result p2

    if-ltz p2, :cond_0

    div-int/2addr p2, p3

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    div-int/2addr p2, p3

    add-int/lit8 p2, p2, -0x1

    :goto_0
    invoke-virtual {p1}, Lorg/joda/time/DateTimeField;->getMaximumValue()I

    move-result p1

    if-ltz p1, :cond_1

    div-int/2addr p1, p3

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    div-int/2addr p1, p3

    add-int/lit8 p1, p1, -0x1

    :goto_1
    iput p2, p0, Lorg/joda/time/field/DividedDateTimeField;->iMin:I

    iput p1, p0, Lorg/joda/time/field/DividedDateTimeField;->iMax:I

    return-void
.end method

.method private getRemainder(I)I
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/joda/time/field/DividedDateTimeField;->iDivisor:I

    rem-int/2addr p1, v0

    return p1

    :cond_0
    iget v0, p0, Lorg/joda/time/field/DividedDateTimeField;->iDivisor:I

    add-int/lit8 v1, v0, -0x1

    add-int/lit8 p1, p1, 0x1

    rem-int/2addr p1, v0

    add-int/2addr v1, p1

    return v1
.end method


# virtual methods
.method public add(JI)J
    .locals 2

    invoke-virtual {p0}, Lorg/joda/time/field/DividedDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    iget v1, p0, Lorg/joda/time/field/DividedDateTimeField;->iDivisor:I

    mul-int p3, p3, v1

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public add(JJ)J
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/field/DividedDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    iget v1, p0, Lorg/joda/time/field/DividedDateTimeField;->iDivisor:I

    int-to-long v1, v1

    mul-long p3, p3, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->add(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public addWrapField(JI)J
    .locals 3

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/field/DividedDateTimeField;->get(J)I

    move-result v0

    iget v1, p0, Lorg/joda/time/field/DividedDateTimeField;->iMin:I

    iget v2, p0, Lorg/joda/time/field/DividedDateTimeField;->iMax:I

    invoke-static {v0, p3, v1, v2}, Lorg/joda/time/field/FieldUtils;->getWrappedValue(IIII)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/joda/time/field/DividedDateTimeField;->set(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public get(J)I
    .locals 1

    invoke-virtual {p0}, Lorg/joda/time/field/DividedDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result p1

    if-ltz p1, :cond_0

    iget p2, p0, Lorg/joda/time/field/DividedDateTimeField;->iDivisor:I

    div-int/2addr p1, p2

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    iget p2, p0, Lorg/joda/time/field/DividedDateTimeField;->iDivisor:I

    div-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public getDifference(JJ)I
    .locals 1

    invoke-virtual {p0}, Lorg/joda/time/field/DividedDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->getDifference(JJ)I

    move-result p1

    iget p2, p0, Lorg/joda/time/field/DividedDateTimeField;->iDivisor:I

    div-int/2addr p1, p2

    return p1
.end method

.method public getDifferenceAsLong(JJ)J
    .locals 1

    invoke-virtual {p0}, Lorg/joda/time/field/DividedDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->getDifferenceAsLong(JJ)J

    move-result-wide p1

    iget p3, p0, Lorg/joda/time/field/DividedDateTimeField;->iDivisor:I

    int-to-long p3, p3

    div-long/2addr p1, p3

    return-wide p1
.end method

.method public getDivisor()I
    .locals 1

    iget v0, p0, Lorg/joda/time/field/DividedDateTimeField;->iDivisor:I

    return v0
.end method

.method public getDurationField()Lorg/joda/time/DurationField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/field/DividedDateTimeField;->iDurationField:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method public getMaximumValue()I
    .locals 1

    iget v0, p0, Lorg/joda/time/field/DividedDateTimeField;->iMax:I

    return v0
.end method

.method public getMinimumValue()I
    .locals 1

    iget v0, p0, Lorg/joda/time/field/DividedDateTimeField;->iMin:I

    return v0
.end method

.method public getRangeDurationField()Lorg/joda/time/DurationField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/field/DividedDateTimeField;->iRangeDurationField:Lorg/joda/time/DurationField;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/joda/time/field/DecoratedDateTimeField;->getRangeDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    return-object v0
.end method

.method public remainder(J)J
    .locals 2

    invoke-virtual {p0}, Lorg/joda/time/field/DividedDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->remainder(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/field/DividedDateTimeField;->get(J)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/field/DividedDateTimeField;->set(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public roundFloor(J)J
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/field/DividedDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/field/DividedDateTimeField;->get(J)I

    move-result v1

    iget v2, p0, Lorg/joda/time/field/DividedDateTimeField;->iDivisor:I

    mul-int v1, v1, v2

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->roundFloor(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public set(JI)J
    .locals 3

    iget v0, p0, Lorg/joda/time/field/DividedDateTimeField;->iMin:I

    iget v1, p0, Lorg/joda/time/field/DividedDateTimeField;->iMax:I

    invoke-static {p0, p3, v0, v1}, Lorg/joda/time/field/FieldUtils;->verifyValueBounds(Lorg/joda/time/DateTimeField;III)V

    invoke-virtual {p0}, Lorg/joda/time/field/DividedDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/joda/time/field/DividedDateTimeField;->getRemainder(I)I

    move-result v0

    invoke-virtual {p0}, Lorg/joda/time/field/DividedDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v1

    iget v2, p0, Lorg/joda/time/field/DividedDateTimeField;->iDivisor:I

    mul-int p3, p3, v2

    add-int/2addr p3, v0

    invoke-virtual {v1, p1, p2, p3}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide p1

    return-wide p1
.end method
