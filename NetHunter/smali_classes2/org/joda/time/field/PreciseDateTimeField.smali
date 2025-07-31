.class public Lorg/joda/time/field/PreciseDateTimeField;
.super Lorg/joda/time/field/PreciseDurationDateTimeField;
.source "PreciseDateTimeField.java"


# static fields
.field private static final serialVersionUID:J = -0x4d884e26ad310a78L


# instance fields
.field private final iRange:I

.field private final iRangeField:Lorg/joda/time/DurationField;


# direct methods
.method public constructor <init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lorg/joda/time/field/PreciseDurationDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;)V

    invoke-virtual {p3}, Lorg/joda/time/DurationField;->isPrecise()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Lorg/joda/time/DurationField;->getUnitMillis()J

    move-result-wide p1

    invoke-virtual {p0}, Lorg/joda/time/field/PreciseDateTimeField;->getUnitMillis()J

    move-result-wide v0

    div-long/2addr p1, v0

    long-to-int p2, p1

    iput p2, p0, Lorg/joda/time/field/PreciseDateTimeField;->iRange:I

    const/4 p1, 0x2

    if-lt p2, p1, :cond_0

    iput-object p3, p0, Lorg/joda/time/field/PreciseDateTimeField;->iRangeField:Lorg/joda/time/DurationField;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The effective range must be at least 2"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Range duration field must be precise"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addWrapField(JI)J
    .locals 4

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/field/PreciseDateTimeField;->get(J)I

    move-result v0

    invoke-virtual {p0}, Lorg/joda/time/field/PreciseDateTimeField;->getMinimumValue()I

    move-result v1

    invoke-virtual {p0}, Lorg/joda/time/field/PreciseDateTimeField;->getMaximumValue()I

    move-result v2

    invoke-static {v0, p3, v1, v2}, Lorg/joda/time/field/FieldUtils;->getWrappedValue(IIII)I

    move-result p3

    sub-int/2addr p3, v0

    int-to-long v0, p3

    invoke-virtual {p0}, Lorg/joda/time/field/PreciseDateTimeField;->getUnitMillis()J

    move-result-wide v2

    mul-long v0, v0, v2

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public get(J)I
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lorg/joda/time/field/PreciseDateTimeField;->getUnitMillis()J

    move-result-wide v0

    div-long/2addr p1, v0

    iget v0, p0, Lorg/joda/time/field/PreciseDateTimeField;->iRange:I

    int-to-long v0, v0

    rem-long/2addr p1, v0

    long-to-int p2, p1

    return p2

    :cond_0
    iget v0, p0, Lorg/joda/time/field/PreciseDateTimeField;->iRange:I

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, 0x1

    add-long/2addr p1, v1

    invoke-virtual {p0}, Lorg/joda/time/field/PreciseDateTimeField;->getUnitMillis()J

    move-result-wide v1

    div-long/2addr p1, v1

    iget v1, p0, Lorg/joda/time/field/PreciseDateTimeField;->iRange:I

    int-to-long v1, v1

    rem-long/2addr p1, v1

    long-to-int p2, p1

    add-int/2addr v0, p2

    return v0
.end method

.method public getMaximumValue()I
    .locals 1

    iget v0, p0, Lorg/joda/time/field/PreciseDateTimeField;->iRange:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getRange()I
    .locals 1

    iget v0, p0, Lorg/joda/time/field/PreciseDateTimeField;->iRange:I

    return v0
.end method

.method public getRangeDurationField()Lorg/joda/time/DurationField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/field/PreciseDateTimeField;->iRangeField:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method public set(JI)J
    .locals 4

    invoke-virtual {p0}, Lorg/joda/time/field/PreciseDateTimeField;->getMinimumValue()I

    move-result v0

    invoke-virtual {p0}, Lorg/joda/time/field/PreciseDateTimeField;->getMaximumValue()I

    move-result v1

    invoke-static {p0, p3, v0, v1}, Lorg/joda/time/field/FieldUtils;->verifyValueBounds(Lorg/joda/time/DateTimeField;III)V

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/field/PreciseDateTimeField;->get(J)I

    move-result v0

    sub-int/2addr p3, v0

    int-to-long v0, p3

    iget-wide v2, p0, Lorg/joda/time/field/PreciseDateTimeField;->iUnitMillis:J

    mul-long v0, v0, v2

    add-long/2addr p1, v0

    return-wide p1
.end method
