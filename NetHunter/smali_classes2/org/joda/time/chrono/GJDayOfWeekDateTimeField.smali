.class final Lorg/joda/time/chrono/GJDayOfWeekDateTimeField;
.super Lorg/joda/time/field/PreciseDurationDateTimeField;
.source "GJDayOfWeekDateTimeField.java"


# static fields
.field private static final serialVersionUID:J = -0x358a2e84568f439cL


# instance fields
.field private final iChronology:Lorg/joda/time/chrono/BasicChronology;


# direct methods
.method constructor <init>(Lorg/joda/time/chrono/BasicChronology;Lorg/joda/time/DurationField;)V
    .locals 1

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfWeek()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/joda/time/field/PreciseDurationDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;)V

    iput-object p1, p0, Lorg/joda/time/chrono/GJDayOfWeekDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/GJDayOfWeekDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->dayOfWeek()Lorg/joda/time/DateTimeField;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected convertText(Ljava/lang/String;Ljava/util/Locale;)I
    .locals 0

    invoke-static {p2}, Lorg/joda/time/chrono/GJLocaleSymbols;->forLocale(Ljava/util/Locale;)Lorg/joda/time/chrono/GJLocaleSymbols;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/joda/time/chrono/GJLocaleSymbols;->dayOfWeekTextToValue(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public get(J)I
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/GJDayOfWeekDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getDayOfWeek(J)I

    move-result p1

    return p1
.end method

.method public getAsShortText(ILjava/util/Locale;)Ljava/lang/String;
    .locals 0

    invoke-static {p2}, Lorg/joda/time/chrono/GJLocaleSymbols;->forLocale(Ljava/util/Locale;)Lorg/joda/time/chrono/GJLocaleSymbols;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/joda/time/chrono/GJLocaleSymbols;->dayOfWeekValueToShortText(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAsText(ILjava/util/Locale;)Ljava/lang/String;
    .locals 0

    invoke-static {p2}, Lorg/joda/time/chrono/GJLocaleSymbols;->forLocale(Ljava/util/Locale;)Lorg/joda/time/chrono/GJLocaleSymbols;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/joda/time/chrono/GJLocaleSymbols;->dayOfWeekValueToText(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMaximumShortTextLength(Ljava/util/Locale;)I
    .locals 0

    invoke-static {p1}, Lorg/joda/time/chrono/GJLocaleSymbols;->forLocale(Ljava/util/Locale;)Lorg/joda/time/chrono/GJLocaleSymbols;

    move-result-object p1

    invoke-virtual {p1}, Lorg/joda/time/chrono/GJLocaleSymbols;->getDayOfWeekMaxShortTextLength()I

    move-result p1

    return p1
.end method

.method public getMaximumTextLength(Ljava/util/Locale;)I
    .locals 0

    invoke-static {p1}, Lorg/joda/time/chrono/GJLocaleSymbols;->forLocale(Ljava/util/Locale;)Lorg/joda/time/chrono/GJLocaleSymbols;

    move-result-object p1

    invoke-virtual {p1}, Lorg/joda/time/chrono/GJLocaleSymbols;->getDayOfWeekMaxTextLength()I

    move-result p1

    return p1
.end method

.method public getMaximumValue()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public getMinimumValue()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getRangeDurationField()Lorg/joda/time/DurationField;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/GJDayOfWeekDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->weeks()Lorg/joda/time/DurationField;

    move-result-object v0

    return-object v0
.end method
