.class final Lorg/joda/time/chrono/BasicWeekyearDateTimeField;
.super Lorg/joda/time/field/ImpreciseDateTimeField;
.source "BasicWeekyearDateTimeField.java"


# static fields
.field private static final WEEK_53:J = 0x7528ad000L

.field private static final serialVersionUID:J = 0x56405a6e978d8324L


# instance fields
.field private final iChronology:Lorg/joda/time/chrono/BasicChronology;


# direct methods
.method constructor <init>(Lorg/joda/time/chrono/BasicChronology;)V
    .locals 3

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekyear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p1}, Lorg/joda/time/chrono/BasicChronology;->getAverageMillisPerYear()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lorg/joda/time/field/ImpreciseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;J)V

    iput-object p1, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->weekyear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(JI)J
    .locals 1

    if-nez p3, :cond_0

    return-wide p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->get(J)I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->set(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public add(JJ)J
    .locals 0

    invoke-static {p3, p4}, Lorg/joda/time/field/FieldUtils;->safeToInt(J)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->add(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public addWrapField(JI)J
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->add(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public get(J)I
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getWeekyear(J)I

    move-result p1

    return p1
.end method

.method public getDifferenceAsLong(JJ)J
    .locals 5

    cmp-long v0, p1, p3

    if-gez v0, :cond_0

    invoke-virtual {p0, p3, p4, p1, p2}, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->getDifference(JJ)I

    move-result p1

    neg-int p1, p1

    int-to-long p1, p1

    return-wide p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->get(J)I

    move-result v0

    invoke-virtual {p0, p3, p4}, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->get(J)I

    move-result v1

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->remainder(J)J

    move-result-wide p1

    invoke-virtual {p0, p3, p4}, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->remainder(J)J

    move-result-wide p3

    const-wide v2, 0x7528ad000L

    cmp-long v4, p3, v2

    if-ltz v4, :cond_1

    iget-object v2, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v2, v0}, Lorg/joda/time/chrono/BasicChronology;->getWeeksInYear(I)I

    move-result v2

    const/16 v3, 0x34

    if-gt v2, v3, :cond_1

    const-wide/32 v2, 0x240c8400

    sub-long/2addr p3, v2

    :cond_1
    sub-int/2addr v0, v1

    cmp-long v1, p1, p3

    if-gez v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    int-to-long p1, v0

    return-wide p1
.end method

.method public getLeapAmount(J)I
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getWeekyear(J)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/joda/time/chrono/BasicChronology;->getWeeksInYear(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x34

    return p1
.end method

.method public getLeapDurationField()Lorg/joda/time/DurationField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->weeks()Lorg/joda/time/DurationField;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumValue()I
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->getMaxYear()I

    move-result v0

    return v0
.end method

.method public getMinimumValue()I
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->getMinYear()I

    move-result v0

    return v0
.end method

.method public getRangeDurationField()Lorg/joda/time/DurationField;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isLeap(J)Z
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getWeekyear(J)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/joda/time/chrono/BasicChronology;->getWeeksInYear(I)I

    move-result p1

    const/16 p2, 0x34

    if-le p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isLenient()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public remainder(J)J
    .locals 2

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->roundFloor(J)J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public roundFloor(J)J
    .locals 4

    iget-object v0, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->weekOfWeekyear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->roundFloor(J)J

    move-result-wide p1

    iget-object v0, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getWeekOfWeekyear(J)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    sub-int/2addr v0, v1

    int-to-long v0, v0

    const-wide/32 v2, 0x240c8400

    mul-long v0, v0, v2

    sub-long/2addr p1, v0

    :cond_0
    return-wide p1
.end method

.method public set(JI)J
    .locals 7

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v1}, Lorg/joda/time/chrono/BasicChronology;->getMinYear()I

    move-result v1

    iget-object v2, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v2}, Lorg/joda/time/chrono/BasicChronology;->getMaxYear()I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lorg/joda/time/field/FieldUtils;->verifyValueBounds(Lorg/joda/time/DateTimeField;III)V

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->get(J)I

    move-result v0

    if-ne v0, p3, :cond_0

    return-wide p1

    :cond_0
    iget-object v1, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v1, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getDayOfWeek(J)I

    move-result v1

    iget-object v2, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v2, v0}, Lorg/joda/time/chrono/BasicChronology;->getWeeksInYear(I)I

    move-result v0

    iget-object v2, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v2, p3}, Lorg/joda/time/chrono/BasicChronology;->getWeeksInYear(I)I

    move-result v2

    if-ge v2, v0, :cond_1

    move v0, v2

    :cond_1
    iget-object v2, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v2, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getWeekOfWeekyear(J)I

    move-result v2

    if-le v2, v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    iget-object v2, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v2, p1, p2, p3}, Lorg/joda/time/chrono/BasicChronology;->setYear(JI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->get(J)I

    move-result v2

    const-wide/32 v3, 0x240c8400

    if-ge v2, p3, :cond_3

    add-long/2addr p1, v3

    goto :goto_1

    :cond_3
    if-le v2, p3, :cond_4

    sub-long/2addr p1, v3

    :cond_4
    :goto_1
    iget-object p3, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {p3, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getWeekOfWeekyear(J)I

    move-result p3

    sub-int/2addr v0, p3

    int-to-long v5, v0

    mul-long v5, v5, v3

    add-long/2addr p1, v5

    iget-object p3, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {p3}, Lorg/joda/time/chrono/BasicChronology;->dayOfWeek()Lorg/joda/time/DateTimeField;

    move-result-object p3

    invoke-virtual {p3, p1, p2, v1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide p1

    return-wide p1
.end method
