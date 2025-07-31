.class public final Lorg/joda/time/YearMonth;
.super Lorg/joda/time/base/BasePartial;
.source "YearMonth.java"

# interfaces
.implements Lorg/joda/time/ReadablePartial;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/YearMonth$Property;
    }
.end annotation


# static fields
.field private static final FIELD_TYPES:[Lorg/joda/time/DateTimeFieldType;

.field public static final MONTH_OF_YEAR:I = 0x1

.field public static final YEAR:I = 0x0

.field private static final serialVersionUID:J = 0x2d55cdd7a1c33L


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/joda/time/DateTimeFieldType;

    const/4 v1, 0x0

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->year()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->monthOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lorg/joda/time/YearMonth;->FIELD_TYPES:[Lorg/joda/time/DateTimeFieldType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/joda/time/base/BasePartial;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/joda/time/YearMonth;-><init>(IILorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(IILorg/joda/time/Chronology;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-direct {p0, v0, p3}, Lorg/joda/time/base/BasePartial;-><init>([ILorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BasePartial;-><init>(J)V

    return-void
.end method

.method public constructor <init>(JLorg/joda/time/Chronology;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/base/BasePartial;-><init>(JLorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->localDateParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/joda/time/base/BasePartial;-><init>(Ljava/lang/Object;Lorg/joda/time/Chronology;Lorg/joda/time/format/DateTimeFormatter;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V
    .locals 1

    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object p2

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->localDateParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/joda/time/base/BasePartial;-><init>(Ljava/lang/Object;Lorg/joda/time/Chronology;Lorg/joda/time/format/DateTimeFormatter;)V

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/Chronology;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/joda/time/base/BasePartial;-><init>(Lorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/DateTimeZone;)V
    .locals 0

    invoke-static {p1}, Lorg/joda/time/chrono/ISOChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/ISOChronology;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/joda/time/base/BasePartial;-><init>(Lorg/joda/time/Chronology;)V

    return-void
.end method

.method constructor <init>(Lorg/joda/time/YearMonth;Lorg/joda/time/Chronology;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BasePartial;-><init>(Lorg/joda/time/base/BasePartial;Lorg/joda/time/Chronology;)V

    return-void
.end method

.method constructor <init>(Lorg/joda/time/YearMonth;[I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BasePartial;-><init>(Lorg/joda/time/base/BasePartial;[I)V

    return-void
.end method

.method public static fromCalendarFields(Ljava/util/Calendar;)Lorg/joda/time/YearMonth;
    .locals 4

    if-eqz p0, :cond_0

    new-instance v0, Lorg/joda/time/YearMonth;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result p0

    add-int/2addr p0, v1

    invoke-direct {v0, v2, p0}, Lorg/joda/time/YearMonth;-><init>(II)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The calendar must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromDateFields(Ljava/util/Date;)Lorg/joda/time/YearMonth;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lorg/joda/time/YearMonth;

    invoke-virtual {p0}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    invoke-virtual {p0}, Ljava/util/Date;->getMonth()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-direct {v0, v1, p0}, Lorg/joda/time/YearMonth;-><init>(II)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The date must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static now()Lorg/joda/time/YearMonth;
    .locals 1

    new-instance v0, Lorg/joda/time/YearMonth;

    invoke-direct {v0}, Lorg/joda/time/YearMonth;-><init>()V

    return-object v0
.end method

.method public static now(Lorg/joda/time/Chronology;)Lorg/joda/time/YearMonth;
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Lorg/joda/time/YearMonth;

    invoke-direct {v0, p0}, Lorg/joda/time/YearMonth;-><init>(Lorg/joda/time/Chronology;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Chronology must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static now(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/YearMonth;
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Lorg/joda/time/YearMonth;

    invoke-direct {v0, p0}, Lorg/joda/time/YearMonth;-><init>(Lorg/joda/time/DateTimeZone;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Zone must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parse(Ljava/lang/String;)Lorg/joda/time/YearMonth;
    .locals 1
    .annotation runtime Lorg/joda/convert/FromString;
    .end annotation

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->localDateParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/joda/time/YearMonth;->parse(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/YearMonth;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/YearMonth;
    .locals 1

    invoke-virtual {p1, p0}, Lorg/joda/time/format/DateTimeFormatter;->parseLocalDate(Ljava/lang/String;)Lorg/joda/time/LocalDate;

    move-result-object p0

    new-instance p1, Lorg/joda/time/YearMonth;

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getYear()I

    move-result v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getMonthOfYear()I

    move-result p0

    invoke-direct {p1, v0, p0}, Lorg/joda/time/YearMonth;-><init>(II)V

    return-object p1
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-virtual {p0}, Lorg/joda/time/YearMonth;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTimeZone;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/joda/time/YearMonth;

    invoke-virtual {p0}, Lorg/joda/time/YearMonth;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/YearMonth;-><init>(Lorg/joda/time/YearMonth;Lorg/joda/time/Chronology;)V

    return-object v0

    :cond_0
    return-object p0
.end method


# virtual methods
.method protected getField(ILorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    invoke-virtual {p2}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object p1

    return-object p1
.end method

.method public getFieldType(I)Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/YearMonth;->FIELD_TYPES:[Lorg/joda/time/DateTimeFieldType;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getFieldTypes()[Lorg/joda/time/DateTimeFieldType;
    .locals 1

    sget-object v0, Lorg/joda/time/YearMonth;->FIELD_TYPES:[Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v0}, [Lorg/joda/time/DateTimeFieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/joda/time/DateTimeFieldType;

    check-cast v0, [Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public getMonthOfYear()I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/joda/time/YearMonth;->getValue(I)I

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/joda/time/YearMonth;->getValue(I)I

    move-result v0

    return v0
.end method

.method public minus(Lorg/joda/time/ReadablePeriod;)Lorg/joda/time/YearMonth;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/YearMonth;->withPeriodAdded(Lorg/joda/time/ReadablePeriod;I)Lorg/joda/time/YearMonth;

    move-result-object p1

    return-object p1
.end method

.method public minusMonths(I)Lorg/joda/time/YearMonth;
    .locals 1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->months()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-static {p1}, Lorg/joda/time/field/FieldUtils;->safeNegate(I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/joda/time/YearMonth;->withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/YearMonth;

    move-result-object p1

    return-object p1
.end method

.method public minusYears(I)Lorg/joda/time/YearMonth;
    .locals 1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-static {p1}, Lorg/joda/time/field/FieldUtils;->safeNegate(I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/joda/time/YearMonth;->withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/YearMonth;

    move-result-object p1

    return-object p1
.end method

.method public monthOfYear()Lorg/joda/time/YearMonth$Property;
    .locals 2

    new-instance v0, Lorg/joda/time/YearMonth$Property;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/YearMonth$Property;-><init>(Lorg/joda/time/YearMonth;I)V

    return-object v0
.end method

.method public plus(Lorg/joda/time/ReadablePeriod;)Lorg/joda/time/YearMonth;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/YearMonth;->withPeriodAdded(Lorg/joda/time/ReadablePeriod;I)Lorg/joda/time/YearMonth;

    move-result-object p1

    return-object p1
.end method

.method public plusMonths(I)Lorg/joda/time/YearMonth;
    .locals 1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->months()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/joda/time/YearMonth;->withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/YearMonth;

    move-result-object p1

    return-object p1
.end method

.method public plusYears(I)Lorg/joda/time/YearMonth;
    .locals 1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/joda/time/YearMonth;->withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/YearMonth;

    move-result-object p1

    return-object p1
.end method

.method public property(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/YearMonth$Property;
    .locals 1

    new-instance v0, Lorg/joda/time/YearMonth$Property;

    invoke-virtual {p0, p1}, Lorg/joda/time/YearMonth;->indexOfSupported(Lorg/joda/time/DateTimeFieldType;)I

    move-result p1

    invoke-direct {v0, p0, p1}, Lorg/joda/time/YearMonth$Property;-><init>(Lorg/joda/time/YearMonth;I)V

    return-object v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public toInterval()Lorg/joda/time/Interval;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/joda/time/YearMonth;->toInterval(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Interval;

    move-result-object v0

    return-object v0
.end method

.method public toInterval(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Interval;
    .locals 3

    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/joda/time/YearMonth;->toLocalDate(I)Lorg/joda/time/LocalDate;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/joda/time/LocalDate;->toDateTimeAtStartOfDay(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object v1

    invoke-virtual {p0, v0}, Lorg/joda/time/YearMonth;->plusMonths(I)Lorg/joda/time/YearMonth;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/joda/time/YearMonth;->toLocalDate(I)Lorg/joda/time/LocalDate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/LocalDate;->toDateTimeAtStartOfDay(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object p1

    new-instance v0, Lorg/joda/time/Interval;

    invoke-direct {v0, v1, p1}, Lorg/joda/time/Interval;-><init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)V

    return-object v0
.end method

.method public toLocalDate(I)Lorg/joda/time/LocalDate;
    .locals 4

    new-instance v0, Lorg/joda/time/LocalDate;

    invoke-virtual {p0}, Lorg/joda/time/YearMonth;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lorg/joda/time/YearMonth;->getMonthOfYear()I

    move-result v2

    invoke-virtual {p0}, Lorg/joda/time/YearMonth;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v3

    invoke-direct {v0, v1, v2, p1, v3}, Lorg/joda/time/LocalDate;-><init>(IIILorg/joda/time/Chronology;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/joda/convert/ToString;
    .end annotation

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->yearMonth()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadablePartial;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/joda/time/YearMonth;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadablePartial;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/joda/time/YearMonth;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/joda/time/format/DateTimeFormatter;->withLocale(Ljava/util/Locale;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadablePartial;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public withChronologyRetainFields(Lorg/joda/time/Chronology;)Lorg/joda/time/YearMonth;
    .locals 2

    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object p1

    invoke-virtual {p1}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object p1

    invoke-virtual {p0}, Lorg/joda/time/YearMonth;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lorg/joda/time/YearMonth;

    invoke-direct {v0, p0, p1}, Lorg/joda/time/YearMonth;-><init>(Lorg/joda/time/YearMonth;Lorg/joda/time/Chronology;)V

    invoke-virtual {p0}, Lorg/joda/time/YearMonth;->getValues()[I

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/joda/time/Chronology;->validate(Lorg/joda/time/ReadablePartial;[I)V

    return-object v0
.end method

.method public withField(Lorg/joda/time/DateTimeFieldType;I)Lorg/joda/time/YearMonth;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/joda/time/YearMonth;->indexOfSupported(Lorg/joda/time/DateTimeFieldType;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/joda/time/YearMonth;->getValue(I)I

    move-result v0

    if-ne p2, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/YearMonth;->getValues()[I

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/joda/time/YearMonth;->getField(I)Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-virtual {v1, p0, p1, v0, p2}, Lorg/joda/time/DateTimeField;->set(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object p1

    new-instance p2, Lorg/joda/time/YearMonth;

    invoke-direct {p2, p0, p1}, Lorg/joda/time/YearMonth;-><init>(Lorg/joda/time/YearMonth;[I)V

    return-object p2
.end method

.method public withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/YearMonth;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/joda/time/YearMonth;->indexOfSupported(Lorg/joda/time/DurationFieldType;)I

    move-result p1

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/YearMonth;->getValues()[I

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/joda/time/YearMonth;->getField(I)Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-virtual {v1, p0, p1, v0, p2}, Lorg/joda/time/DateTimeField;->add(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object p1

    new-instance p2, Lorg/joda/time/YearMonth;

    invoke-direct {p2, p0, p1}, Lorg/joda/time/YearMonth;-><init>(Lorg/joda/time/YearMonth;[I)V

    return-object p2
.end method

.method public withMonthOfYear(I)Lorg/joda/time/YearMonth;
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/YearMonth;->getValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/YearMonth;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2, v0, p1}, Lorg/joda/time/DateTimeField;->set(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object p1

    new-instance v0, Lorg/joda/time/YearMonth;

    invoke-direct {v0, p0, p1}, Lorg/joda/time/YearMonth;-><init>(Lorg/joda/time/YearMonth;[I)V

    return-object v0
.end method

.method public withPeriodAdded(Lorg/joda/time/ReadablePeriod;I)Lorg/joda/time/YearMonth;
    .locals 5

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/YearMonth;->getValues()[I

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/joda/time/ReadablePeriod;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p1, v1}, Lorg/joda/time/ReadablePeriod;->getFieldType(I)Lorg/joda/time/DurationFieldType;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/joda/time/YearMonth;->indexOf(Lorg/joda/time/DurationFieldType;)I

    move-result v2

    if-ltz v2, :cond_1

    invoke-virtual {p0, v2}, Lorg/joda/time/YearMonth;->getField(I)Lorg/joda/time/DateTimeField;

    move-result-object v3

    invoke-interface {p1, v1}, Lorg/joda/time/ReadablePeriod;->getValue(I)I

    move-result v4

    invoke-static {v4, p2}, Lorg/joda/time/field/FieldUtils;->safeMultiply(II)I

    move-result v4

    invoke-virtual {v3, p0, v2, v0, v4}, Lorg/joda/time/DateTimeField;->add(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/joda/time/YearMonth;

    invoke-direct {p1, p0, v0}, Lorg/joda/time/YearMonth;-><init>(Lorg/joda/time/YearMonth;[I)V

    return-object p1

    :cond_3
    :goto_1
    return-object p0
.end method

.method public withYear(I)Lorg/joda/time/YearMonth;
    .locals 3

    invoke-virtual {p0}, Lorg/joda/time/YearMonth;->getValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/YearMonth;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0, p1}, Lorg/joda/time/DateTimeField;->set(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object p1

    new-instance v0, Lorg/joda/time/YearMonth;

    invoke-direct {v0, p0, p1}, Lorg/joda/time/YearMonth;-><init>(Lorg/joda/time/YearMonth;[I)V

    return-object v0
.end method

.method public year()Lorg/joda/time/YearMonth$Property;
    .locals 2

    new-instance v0, Lorg/joda/time/YearMonth$Property;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/joda/time/YearMonth$Property;-><init>(Lorg/joda/time/YearMonth;I)V

    return-object v0
.end method
