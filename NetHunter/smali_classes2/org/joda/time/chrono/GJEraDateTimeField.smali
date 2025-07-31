.class final Lorg/joda/time/chrono/GJEraDateTimeField;
.super Lorg/joda/time/field/BaseDateTimeField;
.source "GJEraDateTimeField.java"


# static fields
.field private static final serialVersionUID:J = 0x3adb02c66a0dae08L


# instance fields
.field private final iChronology:Lorg/joda/time/chrono/BasicChronology;


# direct methods
.method constructor <init>(Lorg/joda/time/chrono/BasicChronology;)V
    .locals 1

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->era()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/joda/time/field/BaseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;)V

    iput-object p1, p0, Lorg/joda/time/chrono/GJEraDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/GJEraDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->era()Lorg/joda/time/DateTimeField;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get(J)I
    .locals 1

    iget-object v0, p0, Lorg/joda/time/chrono/GJEraDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public getAsText(ILjava/util/Locale;)Ljava/lang/String;
    .locals 0

    invoke-static {p2}, Lorg/joda/time/chrono/GJLocaleSymbols;->forLocale(Ljava/util/Locale;)Lorg/joda/time/chrono/GJLocaleSymbols;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/joda/time/chrono/GJLocaleSymbols;->eraValueToText(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDurationField()Lorg/joda/time/DurationField;
    .locals 1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->eras()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/field/UnsupportedDurationField;->getInstance(Lorg/joda/time/DurationFieldType;)Lorg/joda/time/field/UnsupportedDurationField;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumTextLength(Ljava/util/Locale;)I
    .locals 0

    invoke-static {p1}, Lorg/joda/time/chrono/GJLocaleSymbols;->forLocale(Ljava/util/Locale;)Lorg/joda/time/chrono/GJLocaleSymbols;

    move-result-object p1

    invoke-virtual {p1}, Lorg/joda/time/chrono/GJLocaleSymbols;->getEraMaxTextLength()I

    move-result p1

    return p1
.end method

.method public getMaximumValue()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getMinimumValue()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRangeDurationField()Lorg/joda/time/DurationField;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isLenient()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public roundCeiling(J)J
    .locals 2

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/GJEraDateTimeField;->get(J)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/joda/time/chrono/GJEraDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    const-wide/16 v0, 0x0

    const/4 p2, 0x1

    invoke-virtual {p1, v0, v1, p2}, Lorg/joda/time/chrono/BasicChronology;->setYear(JI)J

    move-result-wide p1

    return-wide p1

    :cond_0
    const-wide p1, 0x7fffffffffffffffL

    return-wide p1
.end method

.method public roundFloor(J)J
    .locals 2

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/GJEraDateTimeField;->get(J)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lorg/joda/time/chrono/GJEraDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1, p2}, Lorg/joda/time/chrono/BasicChronology;->setYear(JI)J

    move-result-wide p1

    return-wide p1

    :cond_0
    const-wide/high16 p1, -0x8000000000000000L

    return-wide p1
.end method

.method public roundHalfCeiling(J)J
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/GJEraDateTimeField;->roundFloor(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public roundHalfEven(J)J
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/GJEraDateTimeField;->roundFloor(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public roundHalfFloor(J)J
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/GJEraDateTimeField;->roundFloor(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public set(JI)J
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p3, v0, v1}, Lorg/joda/time/field/FieldUtils;->verifyValueBounds(Lorg/joda/time/DateTimeField;III)V

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/GJEraDateTimeField;->get(J)I

    move-result v0

    if-eq v0, p3, :cond_0

    iget-object p3, p0, Lorg/joda/time/chrono/GJEraDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {p3, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    move-result p3

    iget-object v0, p0, Lorg/joda/time/chrono/GJEraDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    neg-int p3, p3

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/chrono/BasicChronology;->setYear(JI)J

    move-result-wide p1

    :cond_0
    return-wide p1
.end method

.method public set(JLjava/lang/String;Ljava/util/Locale;)J
    .locals 0

    invoke-static {p4}, Lorg/joda/time/chrono/GJLocaleSymbols;->forLocale(Ljava/util/Locale;)Lorg/joda/time/chrono/GJLocaleSymbols;

    move-result-object p4

    invoke-virtual {p4, p3}, Lorg/joda/time/chrono/GJLocaleSymbols;->eraTextToValue(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/joda/time/chrono/GJEraDateTimeField;->set(JI)J

    move-result-wide p1

    return-wide p1
.end method
