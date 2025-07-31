.class Lorg/joda/time/chrono/GJChronology$CutoverField;
.super Lorg/joda/time/field/BaseDateTimeField;
.source "GJChronology.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/chrono/GJChronology;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CutoverField"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x30f7c12a10b2ff62L


# instance fields
.field final iConvertByWeekyear:Z

.field final iCutover:J

.field protected iDurationField:Lorg/joda/time/DurationField;

.field final iGregorianField:Lorg/joda/time/DateTimeField;

.field final iJulianField:Lorg/joda/time/DateTimeField;

.field protected iRangeDurationField:Lorg/joda/time/DurationField;

.field final synthetic this$0:Lorg/joda/time/chrono/GJChronology;


# direct methods
.method constructor <init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;JZ)V

    return-void
.end method

.method constructor <init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;JZ)V
    .locals 8

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v5, p4

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;Lorg/joda/time/DurationField;JZ)V

    return-void
.end method

.method constructor <init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;Lorg/joda/time/DurationField;JZ)V
    .locals 0

    iput-object p1, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->this$0:Lorg/joda/time/chrono/GJChronology;

    invoke-virtual {p3}, Lorg/joda/time/DateTimeField;->getType()Lorg/joda/time/DateTimeFieldType;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/joda/time/field/BaseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;)V

    iput-object p2, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    iput-object p3, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    iput-wide p5, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    iput-boolean p7, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iConvertByWeekyear:Z

    invoke-virtual {p3}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object p1

    iput-object p1, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iDurationField:Lorg/joda/time/DurationField;

    if-nez p4, :cond_0

    invoke-virtual {p3}, Lorg/joda/time/DateTimeField;->getRangeDurationField()Lorg/joda/time/DurationField;

    move-result-object p4

    if-nez p4, :cond_0

    invoke-virtual {p2}, Lorg/joda/time/DateTimeField;->getRangeDurationField()Lorg/joda/time/DurationField;

    move-result-object p4

    :cond_0
    iput-object p4, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iRangeDurationField:Lorg/joda/time/DurationField;

    return-void
.end method


# virtual methods
.method public add(JI)J
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public add(JJ)J
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->add(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public add(Lorg/joda/time/ReadablePartial;I[II)[I
    .locals 5

    if-nez p4, :cond_0

    return-object p3

    :cond_0
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->isContiguous(Lorg/joda/time/ReadablePartial;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/joda/time/ReadablePartial;->size()I

    move-result p2

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    invoke-interface {p1, v2}, Lorg/joda/time/ReadablePartial;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v3

    iget-object v4, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->this$0:Lorg/joda/time/chrono/GJChronology;

    invoke-virtual {v3, v4}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v3

    aget v4, p3, v2

    invoke-virtual {v3, v0, v1, v4}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, v1, p4}, Lorg/joda/time/chrono/GJChronology$CutoverField;->add(JI)J

    move-result-wide p2

    iget-object p4, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->this$0:Lorg/joda/time/chrono/GJChronology;

    invoke-virtual {p4, p1, p2, p3}, Lorg/joda/time/chrono/GJChronology;->get(Lorg/joda/time/ReadablePartial;J)[I

    move-result-object p1

    return-object p1

    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lorg/joda/time/field/BaseDateTimeField;->add(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object p1

    return-object p1
.end method

.method public get(J)I
    .locals 3

    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result p1

    return p1
.end method

.method public getAsShortText(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->getAsShortText(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAsShortText(JLjava/util/Locale;)Ljava/lang/String;
    .locals 3

    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->getAsShortText(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->getAsShortText(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAsText(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->getAsText(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAsText(JLjava/util/Locale;)Ljava/lang/String;
    .locals 3

    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->getAsText(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->getAsText(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDifference(JJ)I
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->getDifference(JJ)I

    move-result p1

    return p1
.end method

.method public getDifferenceAsLong(JJ)J
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->getDifferenceAsLong(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getDurationField()Lorg/joda/time/DurationField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iDurationField:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method public getLeapAmount(J)I
    .locals 3

    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->getLeapAmount(J)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->getLeapAmount(J)I

    move-result p1

    return p1
.end method

.method public getLeapDurationField()Lorg/joda/time/DurationField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getLeapDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumShortTextLength(Ljava/util/Locale;)I
    .locals 2

    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1}, Lorg/joda/time/DateTimeField;->getMaximumShortTextLength(Ljava/util/Locale;)I

    move-result v0

    iget-object v1, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v1, p1}, Lorg/joda/time/DateTimeField;->getMaximumShortTextLength(Ljava/util/Locale;)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public getMaximumTextLength(Ljava/util/Locale;)I
    .locals 2

    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1}, Lorg/joda/time/DateTimeField;->getMaximumTextLength(Ljava/util/Locale;)I

    move-result v0

    iget-object v1, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v1, p1}, Lorg/joda/time/DateTimeField;->getMaximumTextLength(Ljava/util/Locale;)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public getMaximumValue()I
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getMaximumValue()I

    move-result v0

    return v0
.end method

.method public getMaximumValue(J)I
    .locals 4

    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->getMaximumValue(J)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->getMaximumValue(J)I

    move-result v0

    iget-object v1, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v1, p1, p2, v0}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide p1

    iget-wide v1, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v3, p1, v1

    if-ltz v3, :cond_1

    iget-object p1, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    const/4 p2, -0x1

    invoke-virtual {p1, v1, v2, p2}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    :cond_1
    return v0
.end method

.method public getMaximumValue(Lorg/joda/time/ReadablePartial;)I
    .locals 3

    invoke-static {}, Lorg/joda/time/chrono/GJChronology;->getInstanceUTC()Lorg/joda/time/chrono/GJChronology;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lorg/joda/time/chrono/GJChronology;->set(Lorg/joda/time/ReadablePartial;J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/GJChronology$CutoverField;->getMaximumValue(J)I

    move-result p1

    return p1
.end method

.method public getMaximumValue(Lorg/joda/time/ReadablePartial;[I)I
    .locals 8

    invoke-static {}, Lorg/joda/time/chrono/GJChronology;->getInstanceUTC()Lorg/joda/time/chrono/GJChronology;

    move-result-object v0

    invoke-interface {p1}, Lorg/joda/time/ReadablePartial;->size()I

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    invoke-interface {p1, v4}, Lorg/joda/time/ReadablePartial;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v5

    invoke-virtual {v5, v0}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v5

    aget v6, p2, v4

    invoke-virtual {v5, v2, v3}, Lorg/joda/time/DateTimeField;->getMaximumValue(J)I

    move-result v7

    if-gt v6, v7, :cond_0

    aget v6, p2, v4

    invoke-virtual {v5, v2, v3, v6}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2, v3}, Lorg/joda/time/chrono/GJChronology$CutoverField;->getMaximumValue(J)I

    move-result p1

    return p1
.end method

.method public getMinimumValue()I
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getMinimumValue()I

    move-result v0

    return v0
.end method

.method public getMinimumValue(J)I
    .locals 4

    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->getMinimumValue(J)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->getMinimumValue(J)I

    move-result v0

    iget-object v1, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v1, p1, p2, v0}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide p1

    iget-wide v1, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v3, p1, v1

    if-gez v3, :cond_1

    iget-object p1, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {p1, v1, v2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    :cond_1
    return v0
.end method

.method public getMinimumValue(Lorg/joda/time/ReadablePartial;)I
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1}, Lorg/joda/time/DateTimeField;->getMinimumValue(Lorg/joda/time/ReadablePartial;)I

    move-result p1

    return p1
.end method

.method public getMinimumValue(Lorg/joda/time/ReadablePartial;[I)I
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->getMinimumValue(Lorg/joda/time/ReadablePartial;[I)I

    move-result p1

    return p1
.end method

.method public getRangeDurationField()Lorg/joda/time/DurationField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iRangeDurationField:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method protected gregorianToJulian(J)J
    .locals 1

    iget-boolean v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iConvertByWeekyear:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->this$0:Lorg/joda/time/chrono/GJChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/GJChronology;->gregorianToJulianByWeekyear(J)J

    move-result-wide p1

    return-wide p1

    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->this$0:Lorg/joda/time/chrono/GJChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/GJChronology;->gregorianToJulianByYear(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public isLeap(J)Z
    .locals 3

    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->isLeap(J)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->isLeap(J)Z

    move-result p1

    return p1
.end method

.method public isLenient()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected julianToGregorian(J)J
    .locals 1

    iget-boolean v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iConvertByWeekyear:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->this$0:Lorg/joda/time/chrono/GJChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/GJChronology;->julianToGregorianByWeekyear(J)J

    move-result-wide p1

    return-wide p1

    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->this$0:Lorg/joda/time/chrono/GJChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/GJChronology;->julianToGregorianByYear(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public roundCeiling(J)J
    .locals 5

    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->roundCeiling(J)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->roundCeiling(J)J

    move-result-wide p1

    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->this$0:Lorg/joda/time/chrono/GJChronology;

    invoke-static {v0}, Lorg/joda/time/chrono/GJChronology;->access$000(Lorg/joda/time/chrono/GJChronology;)J

    move-result-wide v0

    sub-long v0, p1, v0

    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/GJChronology$CutoverField;->julianToGregorian(J)J

    move-result-wide p1

    :cond_1
    :goto_0
    return-wide p1
.end method

.method public roundFloor(J)J
    .locals 5

    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->roundFloor(J)J

    move-result-wide p1

    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->this$0:Lorg/joda/time/chrono/GJChronology;

    invoke-static {v0}, Lorg/joda/time/chrono/GJChronology;->access$000(Lorg/joda/time/chrono/GJChronology;)J

    move-result-wide v0

    add-long/2addr v0, p1

    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/GJChronology$CutoverField;->gregorianToJulian(J)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->roundFloor(J)J

    move-result-wide p1

    :cond_1
    :goto_0
    return-wide p1
.end method

.method public set(JI)J
    .locals 6

    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-ltz v3, :cond_2

    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide p1

    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v3, p1, v0

    if-gez v3, :cond_5

    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->this$0:Lorg/joda/time/chrono/GJChronology;

    invoke-static {v0}, Lorg/joda/time/chrono/GJChronology;->access$000(Lorg/joda/time/chrono/GJChronology;)J

    move-result-wide v0

    add-long/2addr v0, p1

    iget-wide v3, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/GJChronology$CutoverField;->gregorianToJulian(J)J

    move-result-wide p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/GJChronology$CutoverField;->get(J)I

    move-result v0

    if-ne v0, p3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/joda/time/IllegalFieldValueException;

    iget-object p2, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {p2}, Lorg/joda/time/DateTimeField;->getType()Lorg/joda/time/DateTimeFieldType;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3, v2, v2}, Lorg/joda/time/IllegalFieldValueException;-><init>(Lorg/joda/time/DateTimeFieldType;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p1

    :cond_2
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide p1

    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v3, p1, v0

    if-ltz v3, :cond_5

    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->this$0:Lorg/joda/time/chrono/GJChronology;

    invoke-static {v0}, Lorg/joda/time/chrono/GJChronology;->access$000(Lorg/joda/time/chrono/GJChronology;)J

    move-result-wide v0

    sub-long v0, p1, v0

    iget-wide v3, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v5, v0, v3

    if-ltz v5, :cond_3

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/GJChronology$CutoverField;->julianToGregorian(J)J

    move-result-wide p1

    :cond_3
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/GJChronology$CutoverField;->get(J)I

    move-result v0

    if-ne v0, p3, :cond_4

    goto :goto_0

    :cond_4
    new-instance p1, Lorg/joda/time/IllegalFieldValueException;

    iget-object p2, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {p2}, Lorg/joda/time/DateTimeField;->getType()Lorg/joda/time/DateTimeFieldType;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3, v2, v2}, Lorg/joda/time/IllegalFieldValueException;-><init>(Lorg/joda/time/DateTimeFieldType;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p1

    :cond_5
    :goto_0
    return-wide p1
.end method

.method public set(JLjava/lang/String;Ljava/util/Locale;)J
    .locals 3

    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iGregorianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->set(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide p1

    iget-wide p3, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v0, p1, p3

    if-gez v0, :cond_1

    iget-object p3, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->this$0:Lorg/joda/time/chrono/GJChronology;

    invoke-static {p3}, Lorg/joda/time/chrono/GJChronology;->access$000(Lorg/joda/time/chrono/GJChronology;)J

    move-result-wide p3

    add-long/2addr p3, p1

    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v2, p3, v0

    if-gez v2, :cond_1

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/GJChronology$CutoverField;->gregorianToJulian(J)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iJulianField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->set(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide p1

    iget-wide p3, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v0, p1, p3

    if-ltz v0, :cond_1

    iget-object p3, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->this$0:Lorg/joda/time/chrono/GJChronology;

    invoke-static {p3}, Lorg/joda/time/chrono/GJChronology;->access$000(Lorg/joda/time/chrono/GJChronology;)J

    move-result-wide p3

    sub-long p3, p1, p3

    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iCutover:J

    cmp-long v2, p3, v0

    if-ltz v2, :cond_1

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/GJChronology$CutoverField;->julianToGregorian(J)J

    move-result-wide p1

    :cond_1
    :goto_0
    return-wide p1
.end method
