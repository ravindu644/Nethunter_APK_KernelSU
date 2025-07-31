.class Lorg/joda/time/chrono/BasicChronology$HalfdayField;
.super Lorg/joda/time/field/PreciseDateTimeField;
.source "BasicChronology.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/chrono/BasicChronology;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HalfdayField"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x812436e7a068fe6L


# direct methods
.method constructor <init>()V
    .locals 3

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->halfdayOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/chrono/BasicChronology;->access$000()Lorg/joda/time/DurationField;

    move-result-object v1

    invoke-static {}, Lorg/joda/time/chrono/BasicChronology;->access$100()Lorg/joda/time/DurationField;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/joda/time/field/PreciseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;)V

    return-void
.end method


# virtual methods
.method public getAsText(ILjava/util/Locale;)Ljava/lang/String;
    .locals 0

    invoke-static {p2}, Lorg/joda/time/chrono/GJLocaleSymbols;->forLocale(Ljava/util/Locale;)Lorg/joda/time/chrono/GJLocaleSymbols;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/joda/time/chrono/GJLocaleSymbols;->halfdayValueToText(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMaximumTextLength(Ljava/util/Locale;)I
    .locals 0

    invoke-static {p1}, Lorg/joda/time/chrono/GJLocaleSymbols;->forLocale(Ljava/util/Locale;)Lorg/joda/time/chrono/GJLocaleSymbols;

    move-result-object p1

    invoke-virtual {p1}, Lorg/joda/time/chrono/GJLocaleSymbols;->getHalfdayMaxTextLength()I

    move-result p1

    return p1
.end method

.method public set(JLjava/lang/String;Ljava/util/Locale;)J
    .locals 0

    invoke-static {p4}, Lorg/joda/time/chrono/GJLocaleSymbols;->forLocale(Ljava/util/Locale;)Lorg/joda/time/chrono/GJLocaleSymbols;

    move-result-object p4

    invoke-virtual {p4, p3}, Lorg/joda/time/chrono/GJLocaleSymbols;->halfdayTextToValue(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/joda/time/chrono/BasicChronology$HalfdayField;->set(JI)J

    move-result-wide p1

    return-wide p1
.end method
