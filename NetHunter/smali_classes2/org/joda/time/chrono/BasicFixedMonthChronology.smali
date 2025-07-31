.class abstract Lorg/joda/time/chrono/BasicFixedMonthChronology;
.super Lorg/joda/time/chrono/BasicChronology;
.source "BasicFixedMonthChronology.java"


# static fields
.field static final MILLIS_PER_MONTH:J = 0x9a7ec800L

.field static final MILLIS_PER_YEAR:J = 0x758fac300L

.field static final MONTH_LENGTH:I = 0x1e

.field private static final serialVersionUID:J = 0x3cdbe6c5deL


# direct methods
.method constructor <init>(Lorg/joda/time/Chronology;Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/chrono/BasicChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method getAverageMillisPerMonth()J
    .locals 2

    const-wide v0, 0x9a7ec800L

    return-wide v0
.end method

.method getAverageMillisPerYear()J
    .locals 2

    const-wide v0, 0x758fac300L

    return-wide v0
.end method

.method getAverageMillisPerYearDividedByTwo()J
    .locals 2

    const-wide v0, 0x3ac7d6180L

    return-wide v0
.end method

.method getDayOfMonth(J)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicFixedMonthChronology;->getDayOfYear(J)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    rem-int/lit8 p1, p1, 0x1e

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method getDaysInMonthMax()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method getDaysInMonthMax(I)I
    .locals 1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/16 p1, 0x1e

    goto :goto_0

    :cond_0
    const/4 p1, 0x6

    :goto_0
    return p1
.end method

.method getDaysInYearMonth(II)I
    .locals 1

    const/16 v0, 0xd

    if-eq p2, v0, :cond_0

    const/16 p1, 0x1e

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/joda/time/chrono/BasicFixedMonthChronology;->isLeapYear(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x6

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    :goto_0
    return p1
.end method

.method getMaxMonth()I
    .locals 1

    const/16 v0, 0xd

    return v0
.end method

.method getMonthOfYear(J)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicFixedMonthChronology;->getDayOfYear(J)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    div-int/lit8 p1, p1, 0x1e

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method getMonthOfYear(JI)I
    .locals 2

    invoke-virtual {p0, p3}, Lorg/joda/time/chrono/BasicFixedMonthChronology;->getYearMillis(I)J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide v0, 0x9a7ec800L

    div-long/2addr p1, v0

    long-to-int p2, p1

    add-int/lit8 p2, p2, 0x1

    return p2
.end method

.method getTotalMillisByYearMonth(II)J
    .locals 2

    add-int/lit8 p2, p2, -0x1

    int-to-long p1, p2

    const-wide v0, 0x9a7ec800L

    mul-long p1, p1, v0

    return-wide p1
.end method

.method getYearDifference(JJ)J
    .locals 4

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicFixedMonthChronology;->getYear(J)I

    move-result v0

    invoke-virtual {p0, p3, p4}, Lorg/joda/time/chrono/BasicFixedMonthChronology;->getYear(J)I

    move-result v1

    invoke-virtual {p0, v0}, Lorg/joda/time/chrono/BasicFixedMonthChronology;->getYearMillis(I)J

    move-result-wide v2

    sub-long/2addr p1, v2

    invoke-virtual {p0, v1}, Lorg/joda/time/chrono/BasicFixedMonthChronology;->getYearMillis(I)J

    move-result-wide v2

    sub-long/2addr p3, v2

    sub-int/2addr v0, v1

    cmp-long v1, p1, p3

    if-gez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    int-to-long p1, v0

    return-wide p1
.end method

.method isLeapYear(I)Z
    .locals 1

    const/4 v0, 0x3

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method setYear(JI)J
    .locals 2

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicFixedMonthChronology;->getYear(J)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/chrono/BasicFixedMonthChronology;->getDayOfYear(JI)I

    move-result v0

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicFixedMonthChronology;->getMillisOfDay(J)I

    move-result p1

    const/16 p2, 0x16d

    if-le v0, p2, :cond_0

    invoke-virtual {p0, p3}, Lorg/joda/time/chrono/BasicFixedMonthChronology;->isLeapYear(I)Z

    move-result p2

    if-nez p2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    const/4 p2, 0x1

    invoke-virtual {p0, p3, p2, v0}, Lorg/joda/time/chrono/BasicFixedMonthChronology;->getYearMonthDayMillis(III)J

    move-result-wide p2

    int-to-long v0, p1

    add-long/2addr p2, v0

    return-wide p2
.end method
