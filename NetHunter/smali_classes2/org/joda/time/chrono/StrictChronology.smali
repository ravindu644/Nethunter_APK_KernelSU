.class public final Lorg/joda/time/chrono/StrictChronology;
.super Lorg/joda/time/chrono/AssembledChronology;
.source "StrictChronology.java"


# static fields
.field private static final serialVersionUID:J = 0x5c0d2c62948a3798L


# instance fields
.field private transient iWithUTC:Lorg/joda/time/Chronology;


# direct methods
.method private constructor <init>(Lorg/joda/time/Chronology;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/joda/time/chrono/AssembledChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;)V

    return-void
.end method

.method private static final convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;
    .locals 0

    invoke-static {p0}, Lorg/joda/time/field/StrictDateTimeField;->getInstance(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Lorg/joda/time/Chronology;)Lorg/joda/time/chrono/StrictChronology;
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Lorg/joda/time/chrono/StrictChronology;

    invoke-direct {v0, p0}, Lorg/joda/time/chrono/StrictChronology;-><init>(Lorg/joda/time/Chronology;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must supply a chronology"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected assemble(Lorg/joda/time/chrono/AssembledChronology$Fields;)V
    .locals 1

    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->year:Lorg/joda/time/DateTimeField;

    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->year:Lorg/joda/time/DateTimeField;

    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->yearOfEra:Lorg/joda/time/DateTimeField;

    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->yearOfEra:Lorg/joda/time/DateTimeField;

    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->yearOfCentury:Lorg/joda/time/DateTimeField;

    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->yearOfCentury:Lorg/joda/time/DateTimeField;

    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->centuryOfEra:Lorg/joda/time/DateTimeField;

    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->centuryOfEra:Lorg/joda/time/DateTimeField;

    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->era:Lorg/joda/time/DateTimeField;

    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->era:Lorg/joda/time/DateTimeField;

    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->dayOfWeek:Lorg/joda/time/DateTimeField;

    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->dayOfWeek:Lorg/joda/time/DateTimeField;

    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->dayOfMonth:Lorg/joda/time/DateTimeField;

    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->dayOfMonth:Lorg/joda/time/DateTimeField;

    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->dayOfYear:Lorg/joda/time/DateTimeField;

    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->dayOfYear:Lorg/joda/time/DateTimeField;

    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->monthOfYear:Lorg/joda/time/DateTimeField;

    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->monthOfYear:Lorg/joda/time/DateTimeField;

    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekOfWeekyear:Lorg/joda/time/DateTimeField;

    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekOfWeekyear:Lorg/joda/time/DateTimeField;

    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyear:Lorg/joda/time/DateTimeField;

    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyear:Lorg/joda/time/DateTimeField;

    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyearOfCentury:Lorg/joda/time/DateTimeField;

    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyearOfCentury:Lorg/joda/time/DateTimeField;

    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->millisOfSecond:Lorg/joda/time/DateTimeField;

    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->millisOfSecond:Lorg/joda/time/DateTimeField;

    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->millisOfDay:Lorg/joda/time/DateTimeField;

    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->millisOfDay:Lorg/joda/time/DateTimeField;

    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->secondOfMinute:Lorg/joda/time/DateTimeField;

    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->secondOfMinute:Lorg/joda/time/DateTimeField;

    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->secondOfDay:Lorg/joda/time/DateTimeField;

    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->secondOfDay:Lorg/joda/time/DateTimeField;

    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->minuteOfHour:Lorg/joda/time/DateTimeField;

    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->minuteOfHour:Lorg/joda/time/DateTimeField;

    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->minuteOfDay:Lorg/joda/time/DateTimeField;

    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->minuteOfDay:Lorg/joda/time/DateTimeField;

    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->hourOfDay:Lorg/joda/time/DateTimeField;

    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->hourOfDay:Lorg/joda/time/DateTimeField;

    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->hourOfHalfday:Lorg/joda/time/DateTimeField;

    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->hourOfHalfday:Lorg/joda/time/DateTimeField;

    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->clockhourOfDay:Lorg/joda/time/DateTimeField;

    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->clockhourOfDay:Lorg/joda/time/DateTimeField;

    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->clockhourOfHalfday:Lorg/joda/time/DateTimeField;

    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->clockhourOfHalfday:Lorg/joda/time/DateTimeField;

    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->halfdayOfDay:Lorg/joda/time/DateTimeField;

    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->convertField(Lorg/joda/time/DateTimeField;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->halfdayOfDay:Lorg/joda/time/DateTimeField;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lorg/joda/time/chrono/StrictChronology;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lorg/joda/time/chrono/StrictChronology;

    invoke-virtual {p0}, Lorg/joda/time/chrono/StrictChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p1}, Lorg/joda/time/chrono/StrictChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/joda/time/chrono/StrictChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    const v1, 0x1507c8d0

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StrictChronology["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/joda/time/chrono/StrictChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withUTC()Lorg/joda/time/Chronology;
    .locals 2

    iget-object v0, p0, Lorg/joda/time/chrono/StrictChronology;->iWithUTC:Lorg/joda/time/Chronology;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/joda/time/chrono/StrictChronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    sget-object v1, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    if-ne v0, v1, :cond_0

    iput-object p0, p0, Lorg/joda/time/chrono/StrictChronology;->iWithUTC:Lorg/joda/time/Chronology;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/chrono/StrictChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/StrictChronology;->getInstance(Lorg/joda/time/Chronology;)Lorg/joda/time/chrono/StrictChronology;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/chrono/StrictChronology;->iWithUTC:Lorg/joda/time/Chronology;

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/joda/time/chrono/StrictChronology;->iWithUTC:Lorg/joda/time/Chronology;

    return-object v0
.end method

.method public withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;
    .locals 1

    if-nez p1, :cond_0

    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object p1

    :cond_0
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lorg/joda/time/chrono/StrictChronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lorg/joda/time/chrono/StrictChronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    if-ne p1, v0, :cond_2

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lorg/joda/time/chrono/StrictChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/Chronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object p1

    invoke-static {p1}, Lorg/joda/time/chrono/StrictChronology;->getInstance(Lorg/joda/time/Chronology;)Lorg/joda/time/chrono/StrictChronology;

    move-result-object p1

    return-object p1
.end method
