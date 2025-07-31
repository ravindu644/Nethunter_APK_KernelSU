.class public abstract Lorg/joda/time/chrono/AssembledChronology;
.super Lorg/joda/time/chrono/BaseChronology;
.source "AssembledChronology.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/chrono/AssembledChronology$Fields;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5d6050265d484707L


# instance fields
.field private final iBase:Lorg/joda/time/Chronology;

.field private transient iBaseFlags:I

.field private transient iCenturies:Lorg/joda/time/DurationField;

.field private transient iCenturyOfEra:Lorg/joda/time/DateTimeField;

.field private transient iClockhourOfDay:Lorg/joda/time/DateTimeField;

.field private transient iClockhourOfHalfday:Lorg/joda/time/DateTimeField;

.field private transient iDayOfMonth:Lorg/joda/time/DateTimeField;

.field private transient iDayOfWeek:Lorg/joda/time/DateTimeField;

.field private transient iDayOfYear:Lorg/joda/time/DateTimeField;

.field private transient iDays:Lorg/joda/time/DurationField;

.field private transient iEra:Lorg/joda/time/DateTimeField;

.field private transient iEras:Lorg/joda/time/DurationField;

.field private transient iHalfdayOfDay:Lorg/joda/time/DateTimeField;

.field private transient iHalfdays:Lorg/joda/time/DurationField;

.field private transient iHourOfDay:Lorg/joda/time/DateTimeField;

.field private transient iHourOfHalfday:Lorg/joda/time/DateTimeField;

.field private transient iHours:Lorg/joda/time/DurationField;

.field private transient iMillis:Lorg/joda/time/DurationField;

.field private transient iMillisOfDay:Lorg/joda/time/DateTimeField;

.field private transient iMillisOfSecond:Lorg/joda/time/DateTimeField;

.field private transient iMinuteOfDay:Lorg/joda/time/DateTimeField;

.field private transient iMinuteOfHour:Lorg/joda/time/DateTimeField;

.field private transient iMinutes:Lorg/joda/time/DurationField;

.field private transient iMonthOfYear:Lorg/joda/time/DateTimeField;

.field private transient iMonths:Lorg/joda/time/DurationField;

.field private final iParam:Ljava/lang/Object;

.field private transient iSecondOfDay:Lorg/joda/time/DateTimeField;

.field private transient iSecondOfMinute:Lorg/joda/time/DateTimeField;

.field private transient iSeconds:Lorg/joda/time/DurationField;

.field private transient iWeekOfWeekyear:Lorg/joda/time/DateTimeField;

.field private transient iWeeks:Lorg/joda/time/DurationField;

.field private transient iWeekyear:Lorg/joda/time/DateTimeField;

.field private transient iWeekyearOfCentury:Lorg/joda/time/DateTimeField;

.field private transient iWeekyears:Lorg/joda/time/DurationField;

.field private transient iYear:Lorg/joda/time/DateTimeField;

.field private transient iYearOfCentury:Lorg/joda/time/DateTimeField;

.field private transient iYearOfEra:Lorg/joda/time/DateTimeField;

.field private transient iYears:Lorg/joda/time/DurationField;


# direct methods
.method protected constructor <init>(Lorg/joda/time/Chronology;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lorg/joda/time/chrono/BaseChronology;-><init>()V

    iput-object p1, p0, Lorg/joda/time/chrono/AssembledChronology;->iBase:Lorg/joda/time/Chronology;

    iput-object p2, p0, Lorg/joda/time/chrono/AssembledChronology;->iParam:Ljava/lang/Object;

    invoke-direct {p0}, Lorg/joda/time/chrono/AssembledChronology;->setFields()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-direct {p0}, Lorg/joda/time/chrono/AssembledChronology;->setFields()V

    return-void
.end method

.method private setFields()V
    .locals 4

    new-instance v0, Lorg/joda/time/chrono/AssembledChronology$Fields;

    invoke-direct {v0}, Lorg/joda/time/chrono/AssembledChronology$Fields;-><init>()V

    iget-object v1, p0, Lorg/joda/time/chrono/AssembledChronology;->iBase:Lorg/joda/time/Chronology;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/joda/time/chrono/AssembledChronology$Fields;->copyFieldsFrom(Lorg/joda/time/Chronology;)V

    :cond_0
    invoke-virtual {p0, v0}, Lorg/joda/time/chrono/AssembledChronology;->assemble(Lorg/joda/time/chrono/AssembledChronology$Fields;)V

    iget-object v1, v0, Lorg/joda/time/chrono/AssembledChronology$Fields;->millis:Lorg/joda/time/DurationField;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->millis()Lorg/joda/time/DurationField;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lorg/joda/time/chrono/AssembledChronology;->iMillis:Lorg/joda/time/DurationField;

    iget-object v1, v0, Lorg/joda/time/chrono/AssembledChronology$Fields;->seconds:Lorg/joda/time/DurationField;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->seconds()Lorg/joda/time/DurationField;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lorg/joda/time/chrono/AssembledChronology;->iSeconds:Lorg/joda/time/DurationField;

    iget-object v1, v0, Lorg/joda/time/chrono/AssembledChronology$Fields;->minutes:Lorg/joda/time/DurationField;

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->minutes()Lorg/joda/time/DurationField;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lorg/joda/time/chrono/AssembledChronology;->iMinutes:Lorg/joda/time/DurationField;

    iget-object v1, v0, Lorg/joda/time/chrono/AssembledChronology$Fields;->hours:Lorg/joda/time/DurationField;

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->hours()Lorg/joda/time/DurationField;

    move-result-object v1

    :goto_3
    iput-object v1, p0, Lorg/joda/time/chrono/AssembledChronology;->iHours:Lorg/joda/time/DurationField;

    iget-object v1, v0, Lorg/joda/time/chrono/AssembledChronology$Fields;->halfdays:Lorg/joda/time/DurationField;

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->halfdays()Lorg/joda/time/DurationField;

    move-result-object v1

    :goto_4
    iput-object v1, p0, Lorg/joda/time/chrono/AssembledChronology;->iHalfdays:Lorg/joda/time/DurationField;

    iget-object v1, v0, Lorg/joda/time/chrono/AssembledChronology$Fields;->days:Lorg/joda/time/DurationField;

    if-eqz v1, :cond_6

    goto :goto_5

    :cond_6
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->days()Lorg/joda/time/DurationField;

    move-result-object v1

    :goto_5
    iput-object v1, p0, Lorg/joda/time/chrono/AssembledChronology;->iDays:Lorg/joda/time/DurationField;

    iget-object v1, v0, Lorg/joda/time/chrono/AssembledChronology$Fields;->weeks:Lorg/joda/time/DurationField;

    if-eqz v1, :cond_7

    goto :goto_6

    :cond_7
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->weeks()Lorg/joda/time/DurationField;

    move-result-object v1

    :goto_6
    iput-object v1, p0, Lorg/joda/time/chrono/AssembledChronology;->iWeeks:Lorg/joda/time/DurationField;

    iget-object v1, v0, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyears:Lorg/joda/time/DurationField;

    if-eqz v1, :cond_8

    goto :goto_7

    :cond_8
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->weekyears()Lorg/joda/time/DurationField;

    move-result-object v1

    :goto_7
    iput-object v1, p0, Lorg/joda/time/chrono/AssembledChronology;->iWeekyears:Lorg/joda/time/DurationField;

    iget-object v1, v0, Lorg/joda/time/chrono/AssembledChronology$Fields;->months:Lorg/joda/time/DurationField;

    if-eqz v1, :cond_9

    goto :goto_8

    :cond_9
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->months()Lorg/joda/time/DurationField;

    move-result-object v1

    :goto_8
    iput-object v1, p0, Lorg/joda/time/chrono/AssembledChronology;->iMonths:Lorg/joda/time/DurationField;

    iget-object v1, v0, Lorg/joda/time/chrono/AssembledChronology$Fields;->years:Lorg/joda/time/DurationField;

    if-eqz v1, :cond_a

    goto :goto_9

    :cond_a
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->years()Lorg/joda/time/DurationField;

    move-result-object v1

    :goto_9
    iput-object v1, p0, Lorg/joda/time/chrono/AssembledChronology;->iYears:Lorg/joda/time/DurationField;

    iget-object v1, v0, Lorg/joda/time/chrono/AssembledChronology$Fields;->centuries:Lorg/joda/time/DurationField;

    if-eqz v1, :cond_b

    goto :goto_a

    :cond_b
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->centuries()Lorg/joda/time/DurationField;

    move-result-object v1

    :goto_a
    iput-object v1, p0, Lorg/joda/time/chrono/AssembledChronology;->iCenturies:Lorg/joda/time/DurationField;

    iget-object v1, v0, Lorg/joda/time/chrono/AssembledChronology$Fields;->eras:Lorg/joda/time/DurationField;

    if-eqz v1, :cond_c

    goto :goto_b

    :cond_c
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->eras()Lorg/joda/time/DurationField;

    move-result-object v1

    :goto_b
    iput-object v1, p0, Lorg/joda/time/chrono/AssembledChronology;->iEras:Lorg/joda/time/DurationField;

    iget-object v1, v0, Lorg/joda/time/chrono/AssembledChronology$Fields;->millisOfSecond:Lorg/joda/time/DateTimeField;

    if-eqz v1, :cond_d

    goto :goto_c

    :cond_d
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->millisOfSecond()Lorg/joda/time/DateTimeField;

    move-result-object v1

    :goto_c
    iput-object v1, p0, Lorg/joda/time/chrono/AssembledChronology;->iMillisOfSecond:Lorg/joda/time/DateTimeField;

    iget-object v1, v0, Lorg/joda/time/chrono/AssembledChronology$Fields;->millisOfDay:Lorg/joda/time/DateTimeField;

    if-eqz v1, :cond_e

    goto :goto_d

    :cond_e
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v1

    :goto_d
    iput-object v1, p0, Lorg/joda/time/chrono/AssembledChronology;->iMillisOfDay:Lorg/joda/time/DateTimeField;

    iget-object v1, v0, Lorg/joda/time/chrono/AssembledChronology$Fields;->secondOfMinute:Lorg/joda/time/DateTimeField;

    if-eqz v1, :cond_f

    goto :goto_e

    :cond_f
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->secondOfMinute()Lorg/joda/time/DateTimeField;

    move-result-object v1

    :goto_e
    iput-object v1, p0, Lorg/joda/time/chrono/AssembledChronology;->iSecondOfMinute:Lorg/joda/time/DateTimeField;

    iget-object v1, v0, Lorg/joda/time/chrono/AssembledChronology$Fields;->secondOfDay:Lorg/joda/time/DateTimeField;

    if-eqz v1, :cond_10

    goto :goto_f

    :cond_10
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->secondOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v1

    :goto_f
    iput-object v1, p0, Lorg/joda/time/chrono/AssembledChronology;->iSecondOfDay:Lorg/joda/time/DateTimeField;

    iget-object v1, v0, Lorg/joda/time/chrono/AssembledChronology$Fields;->minuteOfHour:Lorg/joda/time/DateTimeField;

    if-eqz v1, :cond_11

    goto :goto_10

    :cond_11
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->minuteOfHour()Lorg/joda/time/DateTimeField;

    move-result-object v1

    :goto_10
    iput-object v1, p0, Lorg/joda/time/chrono/AssembledChronology;->iMinuteOfHour:Lorg/joda/time/DateTimeField;

    iget-object v1, v0, Lorg/joda/time/chrono/AssembledChronology$Fields;->minuteOfDay:Lorg/joda/time/DateTimeField;

    if-eqz v1, :cond_12

    goto :goto_11

    :cond_12
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->minuteOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v1

    :goto_11
    iput-object v1, p0, Lorg/joda/time/chrono/AssembledChronology;->iMinuteOfDay:Lorg/joda/time/DateTimeField;

    iget-object v1, v0, Lorg/joda/time/chrono/AssembledChronology$Fields;->hourOfDay:Lorg/joda/time/DateTimeField;

    if-eqz v1, :cond_13

    goto :goto_12

    :cond_13
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->hourOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v1

    :goto_12
    iput-object v1, p0, Lorg/joda/time/chrono/AssembledChronology;->iHourOfDay:Lorg/joda/time/DateTimeField;

    iget-object v1, v0, Lorg/joda/time/chrono/AssembledChronology$Fields;->clockhourOfDay:Lorg/joda/time/DateTimeField;

    if-eqz v1, :cond_14

    goto :goto_13

    :cond_14
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->clockhourOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v1

    :goto_13
    iput-object v1, p0, Lorg/joda/time/chrono/AssembledChronology;->iClockhourOfDay:Lorg/joda/time/DateTimeField;

    iget-object v1, v0, Lorg/joda/time/chrono/AssembledChronology$Fields;->hourOfHalfday:Lorg/joda/time/DateTimeField;

    if-eqz v1, :cond_15

    goto :goto_14

    :cond_15
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->hourOfHalfday()Lorg/joda/time/DateTimeField;

    move-result-object v1

    :goto_14
    iput-object v1, p0, Lorg/joda/time/chrono/AssembledChronology;->iHourOfHalfday:Lorg/joda/time/DateTimeField;

    iget-object v1, v0, Lorg/joda/time/chrono/AssembledChronology$Fields;->clockhourOfHalfday:Lorg/joda/time/DateTimeField;

    if-eqz v1, :cond_16

    goto :goto_15

    :cond_16
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->clockhourOfHalfday()Lorg/joda/time/DateTimeField;

    move-result-object v1

    :goto_15
    iput-object v1, p0, Lorg/joda/time/chrono/AssembledChronology;->iClockhourOfHalfday:Lorg/joda/time/DateTimeField;

    iget-object v1, v0, Lorg/joda/time/chrono/AssembledChronology$Fields;->halfdayOfDay:Lorg/joda/time/DateTimeField;

    if-eqz v1, :cond_17

    goto :goto_16

    :cond_17
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->halfdayOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v1

    :goto_16
    iput-object v1, p0, Lorg/joda/time/chrono/AssembledChronology;->iHalfdayOfDay:Lorg/joda/time/DateTimeField;

    iget-object v1, v0, Lorg/joda/time/chrono/AssembledChronology$Fields;->dayOfWeek:Lorg/joda/time/DateTimeField;

    if-eqz v1, :cond_18

    goto :goto_17

    :cond_18
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->dayOfWeek()Lorg/joda/time/DateTimeField;

    move-result-object v1

    :goto_17
    iput-object v1, p0, Lorg/joda/time/chrono/AssembledChronology;->iDayOfWeek:Lorg/joda/time/DateTimeField;

    iget-object v1, v0, Lorg/joda/time/chrono/AssembledChronology$Fields;->dayOfMonth:Lorg/joda/time/DateTimeField;

    if-eqz v1, :cond_19

    goto :goto_18

    :cond_19
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v1

    :goto_18
    iput-object v1, p0, Lorg/joda/time/chrono/AssembledChronology;->iDayOfMonth:Lorg/joda/time/DateTimeField;

    iget-object v1, v0, Lorg/joda/time/chrono/AssembledChronology$Fields;->dayOfYear:Lorg/joda/time/DateTimeField;

    if-eqz v1, :cond_1a

    goto :goto_19

    :cond_1a
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->dayOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    :goto_19
    iput-object v1, p0, Lorg/joda/time/chrono/AssembledChronology;->iDayOfYear:Lorg/joda/time/DateTimeField;

    iget-object v1, v0, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekOfWeekyear:Lorg/joda/time/DateTimeField;

    if-eqz v1, :cond_1b

    goto :goto_1a

    :cond_1b
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->weekOfWeekyear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    :goto_1a
    iput-object v1, p0, Lorg/joda/time/chrono/AssembledChronology;->iWeekOfWeekyear:Lorg/joda/time/DateTimeField;

    iget-object v1, v0, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyear:Lorg/joda/time/DateTimeField;

    if-eqz v1, :cond_1c

    goto :goto_1b

    :cond_1c
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->weekyear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    :goto_1b
    iput-object v1, p0, Lorg/joda/time/chrono/AssembledChronology;->iWeekyear:Lorg/joda/time/DateTimeField;

    iget-object v1, v0, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyearOfCentury:Lorg/joda/time/DateTimeField;

    if-eqz v1, :cond_1d

    goto :goto_1c

    :cond_1d
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->weekyearOfCentury()Lorg/joda/time/DateTimeField;

    move-result-object v1

    :goto_1c
    iput-object v1, p0, Lorg/joda/time/chrono/AssembledChronology;->iWeekyearOfCentury:Lorg/joda/time/DateTimeField;

    iget-object v1, v0, Lorg/joda/time/chrono/AssembledChronology$Fields;->monthOfYear:Lorg/joda/time/DateTimeField;

    if-eqz v1, :cond_1e

    goto :goto_1d

    :cond_1e
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    :goto_1d
    iput-object v1, p0, Lorg/joda/time/chrono/AssembledChronology;->iMonthOfYear:Lorg/joda/time/DateTimeField;

    iget-object v1, v0, Lorg/joda/time/chrono/AssembledChronology$Fields;->year:Lorg/joda/time/DateTimeField;

    if-eqz v1, :cond_1f

    goto :goto_1e

    :cond_1f
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v1

    :goto_1e
    iput-object v1, p0, Lorg/joda/time/chrono/AssembledChronology;->iYear:Lorg/joda/time/DateTimeField;

    iget-object v1, v0, Lorg/joda/time/chrono/AssembledChronology$Fields;->yearOfEra:Lorg/joda/time/DateTimeField;

    if-eqz v1, :cond_20

    goto :goto_1f

    :cond_20
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->yearOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v1

    :goto_1f
    iput-object v1, p0, Lorg/joda/time/chrono/AssembledChronology;->iYearOfEra:Lorg/joda/time/DateTimeField;

    iget-object v1, v0, Lorg/joda/time/chrono/AssembledChronology$Fields;->yearOfCentury:Lorg/joda/time/DateTimeField;

    if-eqz v1, :cond_21

    goto :goto_20

    :cond_21
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->yearOfCentury()Lorg/joda/time/DateTimeField;

    move-result-object v1

    :goto_20
    iput-object v1, p0, Lorg/joda/time/chrono/AssembledChronology;->iYearOfCentury:Lorg/joda/time/DateTimeField;

    iget-object v1, v0, Lorg/joda/time/chrono/AssembledChronology$Fields;->centuryOfEra:Lorg/joda/time/DateTimeField;

    if-eqz v1, :cond_22

    goto :goto_21

    :cond_22
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->centuryOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v1

    :goto_21
    iput-object v1, p0, Lorg/joda/time/chrono/AssembledChronology;->iCenturyOfEra:Lorg/joda/time/DateTimeField;

    iget-object v0, v0, Lorg/joda/time/chrono/AssembledChronology$Fields;->era:Lorg/joda/time/DateTimeField;

    if-eqz v0, :cond_23

    goto :goto_22

    :cond_23
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->era()Lorg/joda/time/DateTimeField;

    move-result-object v0

    :goto_22
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iEra:Lorg/joda/time/DateTimeField;

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iBase:Lorg/joda/time/Chronology;

    const/4 v1, 0x0

    if-nez v0, :cond_24

    goto :goto_25

    :cond_24
    iget-object v2, p0, Lorg/joda/time/chrono/AssembledChronology;->iHourOfDay:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->hourOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v0

    if-ne v2, v0, :cond_25

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iMinuteOfHour:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/chrono/AssembledChronology;->iBase:Lorg/joda/time/Chronology;

    invoke-virtual {v2}, Lorg/joda/time/Chronology;->minuteOfHour()Lorg/joda/time/DateTimeField;

    move-result-object v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iSecondOfMinute:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/chrono/AssembledChronology;->iBase:Lorg/joda/time/Chronology;

    invoke-virtual {v2}, Lorg/joda/time/Chronology;->secondOfMinute()Lorg/joda/time/DateTimeField;

    move-result-object v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iMillisOfSecond:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/chrono/AssembledChronology;->iBase:Lorg/joda/time/Chronology;

    invoke-virtual {v2}, Lorg/joda/time/Chronology;->millisOfSecond()Lorg/joda/time/DateTimeField;

    move-result-object v2

    if-ne v0, v2, :cond_25

    const/4 v0, 0x1

    goto :goto_23

    :cond_25
    const/4 v0, 0x0

    :goto_23
    iget-object v2, p0, Lorg/joda/time/chrono/AssembledChronology;->iMillisOfDay:Lorg/joda/time/DateTimeField;

    iget-object v3, p0, Lorg/joda/time/chrono/AssembledChronology;->iBase:Lorg/joda/time/Chronology;

    invoke-virtual {v3}, Lorg/joda/time/Chronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v3

    if-ne v2, v3, :cond_26

    const/4 v2, 0x2

    goto :goto_24

    :cond_26
    const/4 v2, 0x0

    :goto_24
    or-int/2addr v0, v2

    iget-object v2, p0, Lorg/joda/time/chrono/AssembledChronology;->iYear:Lorg/joda/time/DateTimeField;

    iget-object v3, p0, Lorg/joda/time/chrono/AssembledChronology;->iBase:Lorg/joda/time/Chronology;

    invoke-virtual {v3}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v3

    if-ne v2, v3, :cond_27

    iget-object v2, p0, Lorg/joda/time/chrono/AssembledChronology;->iMonthOfYear:Lorg/joda/time/DateTimeField;

    iget-object v3, p0, Lorg/joda/time/chrono/AssembledChronology;->iBase:Lorg/joda/time/Chronology;

    invoke-virtual {v3}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v3

    if-ne v2, v3, :cond_27

    iget-object v2, p0, Lorg/joda/time/chrono/AssembledChronology;->iDayOfMonth:Lorg/joda/time/DateTimeField;

    iget-object v3, p0, Lorg/joda/time/chrono/AssembledChronology;->iBase:Lorg/joda/time/Chronology;

    invoke-virtual {v3}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v3

    if-ne v2, v3, :cond_27

    const/4 v1, 0x4

    :cond_27
    or-int/2addr v1, v0

    :goto_25
    iput v1, p0, Lorg/joda/time/chrono/AssembledChronology;->iBaseFlags:I

    return-void
.end method


# virtual methods
.method protected abstract assemble(Lorg/joda/time/chrono/AssembledChronology$Fields;)V
.end method

.method public final centuries()Lorg/joda/time/DurationField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iCenturies:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method public final centuryOfEra()Lorg/joda/time/DateTimeField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iCenturyOfEra:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public final clockhourOfDay()Lorg/joda/time/DateTimeField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iClockhourOfDay:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public final clockhourOfHalfday()Lorg/joda/time/DateTimeField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iClockhourOfHalfday:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public final dayOfMonth()Lorg/joda/time/DateTimeField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iDayOfMonth:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public final dayOfWeek()Lorg/joda/time/DateTimeField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iDayOfWeek:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public final dayOfYear()Lorg/joda/time/DateTimeField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iDayOfYear:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public final days()Lorg/joda/time/DurationField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iDays:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method public final era()Lorg/joda/time/DateTimeField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iEra:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public final eras()Lorg/joda/time/DurationField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iEras:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method protected final getBase()Lorg/joda/time/Chronology;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iBase:Lorg/joda/time/Chronology;

    return-object v0
.end method

.method public getDateTimeMillis(IIII)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iBase:Lorg/joda/time/Chronology;

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/joda/time/chrono/AssembledChronology;->iBaseFlags:I

    const/4 v2, 0x6

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/Chronology;->getDateTimeMillis(IIII)J

    move-result-wide p1

    return-wide p1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/joda/time/chrono/BaseChronology;->getDateTimeMillis(IIII)J

    move-result-wide p1

    return-wide p1
.end method

.method public getDateTimeMillis(IIIIIII)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iBase:Lorg/joda/time/Chronology;

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/joda/time/chrono/AssembledChronology;->iBaseFlags:I

    const/4 v2, 0x5

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lorg/joda/time/Chronology;->getDateTimeMillis(IIIIIII)J

    move-result-wide p1

    return-wide p1

    :cond_0
    invoke-super/range {p0 .. p7}, Lorg/joda/time/chrono/BaseChronology;->getDateTimeMillis(IIIIIII)J

    move-result-wide p1

    return-wide p1
.end method

.method public getDateTimeMillis(JIIII)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iBase:Lorg/joda/time/Chronology;

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/joda/time/chrono/AssembledChronology;->iBaseFlags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/joda/time/Chronology;->getDateTimeMillis(JIIII)J

    move-result-wide p1

    return-wide p1

    :cond_0
    invoke-super/range {p0 .. p6}, Lorg/joda/time/chrono/BaseChronology;->getDateTimeMillis(JIIII)J

    move-result-wide p1

    return-wide p1
.end method

.method protected final getParam()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iParam:Ljava/lang/Object;

    return-object v0
.end method

.method public getZone()Lorg/joda/time/DateTimeZone;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iBase:Lorg/joda/time/Chronology;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final halfdayOfDay()Lorg/joda/time/DateTimeField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iHalfdayOfDay:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public final halfdays()Lorg/joda/time/DurationField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iHalfdays:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method public final hourOfDay()Lorg/joda/time/DateTimeField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iHourOfDay:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public final hourOfHalfday()Lorg/joda/time/DateTimeField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iHourOfHalfday:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public final hours()Lorg/joda/time/DurationField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iHours:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method public final millis()Lorg/joda/time/DurationField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iMillis:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method public final millisOfDay()Lorg/joda/time/DateTimeField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iMillisOfDay:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public final millisOfSecond()Lorg/joda/time/DateTimeField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iMillisOfSecond:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public final minuteOfDay()Lorg/joda/time/DateTimeField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iMinuteOfDay:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public final minuteOfHour()Lorg/joda/time/DateTimeField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iMinuteOfHour:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public final minutes()Lorg/joda/time/DurationField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iMinutes:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method public final monthOfYear()Lorg/joda/time/DateTimeField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iMonthOfYear:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public final months()Lorg/joda/time/DurationField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iMonths:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method public final secondOfDay()Lorg/joda/time/DateTimeField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iSecondOfDay:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public final secondOfMinute()Lorg/joda/time/DateTimeField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iSecondOfMinute:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public final seconds()Lorg/joda/time/DurationField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iSeconds:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method public final weekOfWeekyear()Lorg/joda/time/DateTimeField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iWeekOfWeekyear:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public final weeks()Lorg/joda/time/DurationField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iWeeks:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method public final weekyear()Lorg/joda/time/DateTimeField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iWeekyear:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public final weekyearOfCentury()Lorg/joda/time/DateTimeField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iWeekyearOfCentury:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public final weekyears()Lorg/joda/time/DurationField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iWeekyears:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method public final year()Lorg/joda/time/DateTimeField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iYear:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public final yearOfCentury()Lorg/joda/time/DateTimeField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iYearOfCentury:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public final yearOfEra()Lorg/joda/time/DateTimeField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iYearOfEra:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public final years()Lorg/joda/time/DurationField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->iYears:Lorg/joda/time/DurationField;

    return-object v0
.end method
