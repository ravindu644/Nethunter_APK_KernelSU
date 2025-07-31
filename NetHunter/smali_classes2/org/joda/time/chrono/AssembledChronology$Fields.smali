.class public final Lorg/joda/time/chrono/AssembledChronology$Fields;
.super Ljava/lang/Object;
.source "AssembledChronology.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/chrono/AssembledChronology;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Fields"
.end annotation


# instance fields
.field public centuries:Lorg/joda/time/DurationField;

.field public centuryOfEra:Lorg/joda/time/DateTimeField;

.field public clockhourOfDay:Lorg/joda/time/DateTimeField;

.field public clockhourOfHalfday:Lorg/joda/time/DateTimeField;

.field public dayOfMonth:Lorg/joda/time/DateTimeField;

.field public dayOfWeek:Lorg/joda/time/DateTimeField;

.field public dayOfYear:Lorg/joda/time/DateTimeField;

.field public days:Lorg/joda/time/DurationField;

.field public era:Lorg/joda/time/DateTimeField;

.field public eras:Lorg/joda/time/DurationField;

.field public halfdayOfDay:Lorg/joda/time/DateTimeField;

.field public halfdays:Lorg/joda/time/DurationField;

.field public hourOfDay:Lorg/joda/time/DateTimeField;

.field public hourOfHalfday:Lorg/joda/time/DateTimeField;

.field public hours:Lorg/joda/time/DurationField;

.field public millis:Lorg/joda/time/DurationField;

.field public millisOfDay:Lorg/joda/time/DateTimeField;

.field public millisOfSecond:Lorg/joda/time/DateTimeField;

.field public minuteOfDay:Lorg/joda/time/DateTimeField;

.field public minuteOfHour:Lorg/joda/time/DateTimeField;

.field public minutes:Lorg/joda/time/DurationField;

.field public monthOfYear:Lorg/joda/time/DateTimeField;

.field public months:Lorg/joda/time/DurationField;

.field public secondOfDay:Lorg/joda/time/DateTimeField;

.field public secondOfMinute:Lorg/joda/time/DateTimeField;

.field public seconds:Lorg/joda/time/DurationField;

.field public weekOfWeekyear:Lorg/joda/time/DateTimeField;

.field public weeks:Lorg/joda/time/DurationField;

.field public weekyear:Lorg/joda/time/DateTimeField;

.field public weekyearOfCentury:Lorg/joda/time/DateTimeField;

.field public weekyears:Lorg/joda/time/DurationField;

.field public year:Lorg/joda/time/DateTimeField;

.field public yearOfCentury:Lorg/joda/time/DateTimeField;

.field public yearOfEra:Lorg/joda/time/DateTimeField;

.field public years:Lorg/joda/time/DurationField;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isSupported(Lorg/joda/time/DateTimeField;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateTimeField;->isSupported()Z

    move-result p0

    :goto_0
    return p0
.end method

.method private static isSupported(Lorg/joda/time/DurationField;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DurationField;->isSupported()Z

    move-result p0

    :goto_0
    return p0
.end method


# virtual methods
.method public copyFieldsFrom(Lorg/joda/time/Chronology;)V
    .locals 2

    invoke-virtual {p1}, Lorg/joda/time/Chronology;->millis()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$Fields;->isSupported(Lorg/joda/time/DurationField;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$Fields;->millis:Lorg/joda/time/DurationField;

    :cond_0
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->seconds()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$Fields;->isSupported(Lorg/joda/time/DurationField;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$Fields;->seconds:Lorg/joda/time/DurationField;

    :cond_1
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->minutes()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$Fields;->isSupported(Lorg/joda/time/DurationField;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$Fields;->minutes:Lorg/joda/time/DurationField;

    :cond_2
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->hours()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$Fields;->isSupported(Lorg/joda/time/DurationField;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$Fields;->hours:Lorg/joda/time/DurationField;

    :cond_3
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->halfdays()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$Fields;->isSupported(Lorg/joda/time/DurationField;)Z

    move-result v1

    if-eqz v1, :cond_4

    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$Fields;->halfdays:Lorg/joda/time/DurationField;

    :cond_4
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->days()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$Fields;->isSupported(Lorg/joda/time/DurationField;)Z

    move-result v1

    if-eqz v1, :cond_5

    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$Fields;->days:Lorg/joda/time/DurationField;

    :cond_5
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->weeks()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$Fields;->isSupported(Lorg/joda/time/DurationField;)Z

    move-result v1

    if-eqz v1, :cond_6

    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$Fields;->weeks:Lorg/joda/time/DurationField;

    :cond_6
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->weekyears()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$Fields;->isSupported(Lorg/joda/time/DurationField;)Z

    move-result v1

    if-eqz v1, :cond_7

    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyears:Lorg/joda/time/DurationField;

    :cond_7
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->months()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$Fields;->isSupported(Lorg/joda/time/DurationField;)Z

    move-result v1

    if-eqz v1, :cond_8

    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$Fields;->months:Lorg/joda/time/DurationField;

    :cond_8
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->years()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$Fields;->isSupported(Lorg/joda/time/DurationField;)Z

    move-result v1

    if-eqz v1, :cond_9

    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$Fields;->years:Lorg/joda/time/DurationField;

    :cond_9
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->centuries()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$Fields;->isSupported(Lorg/joda/time/DurationField;)Z

    move-result v1

    if-eqz v1, :cond_a

    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$Fields;->centuries:Lorg/joda/time/DurationField;

    :cond_a
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->eras()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$Fields;->isSupported(Lorg/joda/time/DurationField;)Z

    move-result v1

    if-eqz v1, :cond_b

    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$Fields;->eras:Lorg/joda/time/DurationField;

    :cond_b
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->millisOfSecond()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$Fields;->isSupported(Lorg/joda/time/DateTimeField;)Z

    move-result v1

    if-eqz v1, :cond_c

    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$Fields;->millisOfSecond:Lorg/joda/time/DateTimeField;

    :cond_c
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$Fields;->isSupported(Lorg/joda/time/DateTimeField;)Z

    move-result v1

    if-eqz v1, :cond_d

    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$Fields;->millisOfDay:Lorg/joda/time/DateTimeField;

    :cond_d
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->secondOfMinute()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$Fields;->isSupported(Lorg/joda/time/DateTimeField;)Z

    move-result v1

    if-eqz v1, :cond_e

    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$Fields;->secondOfMinute:Lorg/joda/time/DateTimeField;

    :cond_e
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->secondOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$Fields;->isSupported(Lorg/joda/time/DateTimeField;)Z

    move-result v1

    if-eqz v1, :cond_f

    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$Fields;->secondOfDay:Lorg/joda/time/DateTimeField;

    :cond_f
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->minuteOfHour()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$Fields;->isSupported(Lorg/joda/time/DateTimeField;)Z

    move-result v1

    if-eqz v1, :cond_10

    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$Fields;->minuteOfHour:Lorg/joda/time/DateTimeField;

    :cond_10
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->minuteOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$Fields;->isSupported(Lorg/joda/time/DateTimeField;)Z

    move-result v1

    if-eqz v1, :cond_11

    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$Fields;->minuteOfDay:Lorg/joda/time/DateTimeField;

    :cond_11
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->hourOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$Fields;->isSupported(Lorg/joda/time/DateTimeField;)Z

    move-result v1

    if-eqz v1, :cond_12

    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$Fields;->hourOfDay:Lorg/joda/time/DateTimeField;

    :cond_12
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->clockhourOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$Fields;->isSupported(Lorg/joda/time/DateTimeField;)Z

    move-result v1

    if-eqz v1, :cond_13

    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$Fields;->clockhourOfDay:Lorg/joda/time/DateTimeField;

    :cond_13
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->hourOfHalfday()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$Fields;->isSupported(Lorg/joda/time/DateTimeField;)Z

    move-result v1

    if-eqz v1, :cond_14

    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$Fields;->hourOfHalfday:Lorg/joda/time/DateTimeField;

    :cond_14
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->clockhourOfHalfday()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$Fields;->isSupported(Lorg/joda/time/DateTimeField;)Z

    move-result v1

    if-eqz v1, :cond_15

    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$Fields;->clockhourOfHalfday:Lorg/joda/time/DateTimeField;

    :cond_15
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->halfdayOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$Fields;->isSupported(Lorg/joda/time/DateTimeField;)Z

    move-result v1

    if-eqz v1, :cond_16

    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$Fields;->halfdayOfDay:Lorg/joda/time/DateTimeField;

    :cond_16
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->dayOfWeek()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$Fields;->isSupported(Lorg/joda/time/DateTimeField;)Z

    move-result v1

    if-eqz v1, :cond_17

    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$Fields;->dayOfWeek:Lorg/joda/time/DateTimeField;

    :cond_17
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$Fields;->isSupported(Lorg/joda/time/DateTimeField;)Z

    move-result v1

    if-eqz v1, :cond_18

    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$Fields;->dayOfMonth:Lorg/joda/time/DateTimeField;

    :cond_18
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->dayOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$Fields;->isSupported(Lorg/joda/time/DateTimeField;)Z

    move-result v1

    if-eqz v1, :cond_19

    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$Fields;->dayOfYear:Lorg/joda/time/DateTimeField;

    :cond_19
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->weekOfWeekyear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$Fields;->isSupported(Lorg/joda/time/DateTimeField;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekOfWeekyear:Lorg/joda/time/DateTimeField;

    :cond_1a
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->weekyear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$Fields;->isSupported(Lorg/joda/time/DateTimeField;)Z

    move-result v1

    if-eqz v1, :cond_1b

    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyear:Lorg/joda/time/DateTimeField;

    :cond_1b
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->weekyearOfCentury()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$Fields;->isSupported(Lorg/joda/time/DateTimeField;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyearOfCentury:Lorg/joda/time/DateTimeField;

    :cond_1c
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$Fields;->isSupported(Lorg/joda/time/DateTimeField;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$Fields;->monthOfYear:Lorg/joda/time/DateTimeField;

    :cond_1d
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$Fields;->isSupported(Lorg/joda/time/DateTimeField;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$Fields;->year:Lorg/joda/time/DateTimeField;

    :cond_1e
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->yearOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$Fields;->isSupported(Lorg/joda/time/DateTimeField;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$Fields;->yearOfEra:Lorg/joda/time/DateTimeField;

    :cond_1f
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->yearOfCentury()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$Fields;->isSupported(Lorg/joda/time/DateTimeField;)Z

    move-result v1

    if-eqz v1, :cond_20

    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$Fields;->yearOfCentury:Lorg/joda/time/DateTimeField;

    :cond_20
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->centuryOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/AssembledChronology$Fields;->isSupported(Lorg/joda/time/DateTimeField;)Z

    move-result v1

    if-eqz v1, :cond_21

    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology$Fields;->centuryOfEra:Lorg/joda/time/DateTimeField;

    :cond_21
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->era()Lorg/joda/time/DateTimeField;

    move-result-object p1

    invoke-static {p1}, Lorg/joda/time/chrono/AssembledChronology$Fields;->isSupported(Lorg/joda/time/DateTimeField;)Z

    move-result v0

    if-eqz v0, :cond_22

    iput-object p1, p0, Lorg/joda/time/chrono/AssembledChronology$Fields;->era:Lorg/joda/time/DateTimeField;

    :cond_22
    return-void
.end method
