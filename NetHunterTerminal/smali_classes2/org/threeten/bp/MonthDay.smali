.class public final Lorg/threeten/bp/MonthDay;
.super Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;
.source "MonthDay.java"

# interfaces
.implements Lorg/threeten/bp/temporal/TemporalAccessor;
.implements Lorg/threeten/bp/temporal/TemporalAdjuster;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;",
        "Lorg/threeten/bp/temporal/TemporalAccessor;",
        "Lorg/threeten/bp/temporal/TemporalAdjuster;",
        "Ljava/lang/Comparable<",
        "Lorg/threeten/bp/MonthDay;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final FROM:Lorg/threeten/bp/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "Lorg/threeten/bp/MonthDay;",
            ">;"
        }
    .end annotation
.end field

.field private static final PARSER:Lorg/threeten/bp/format/DateTimeFormatter;

.field private static final serialVersionUID:J = -0xd0888991b3ac078L


# instance fields
.field private final day:I

.field private final month:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/threeten/bp/MonthDay$1;

    invoke-direct {v0}, Lorg/threeten/bp/MonthDay$1;-><init>()V

    sput-object v0, Lorg/threeten/bp/MonthDay;->FROM:Lorg/threeten/bp/temporal/TemporalQuery;

    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    const-string v1, "--"

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(Ljava/lang/String;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter()Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/MonthDay;->PARSER:Lorg/threeten/bp/format/DateTimeFormatter;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;-><init>()V

    iput p1, p0, Lorg/threeten/bp/MonthDay;->month:I

    iput p2, p0, Lorg/threeten/bp/MonthDay;->day:I

    return-void
.end method

.method public static from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/MonthDay;
    .locals 3

    instance-of v0, p0, Lorg/threeten/bp/MonthDay;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/threeten/bp/MonthDay;

    return-object p0

    :cond_0
    :try_start_0
    sget-object v0, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-static {p0}, Lorg/threeten/bp/chrono/Chronology;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/Chronology;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/IsoChronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/threeten/bp/LocalDate;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/LocalDate;

    move-result-object p0

    :cond_1
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p0, v0}, Lorg/threeten/bp/temporal/TemporalAccessor;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p0, v1}, Lorg/threeten/bp/temporal/TemporalAccessor;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/threeten/bp/MonthDay;->of(II)Lorg/threeten/bp/MonthDay;

    move-result-object p0
    :try_end_0
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to obtain MonthDay from TemporalAccessor: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static now()Lorg/threeten/bp/MonthDay;
    .locals 1

    invoke-static {}, Lorg/threeten/bp/Clock;->systemDefaultZone()Lorg/threeten/bp/Clock;

    move-result-object v0

    invoke-static {v0}, Lorg/threeten/bp/MonthDay;->now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/MonthDay;

    move-result-object v0

    return-object v0
.end method

.method public static now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/MonthDay;
    .locals 1

    invoke-static {p0}, Lorg/threeten/bp/LocalDate;->now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/LocalDate;

    move-result-object p0

    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->getMonth()Lorg/threeten/bp/Month;

    move-result-object v0

    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->getDayOfMonth()I

    move-result p0

    invoke-static {v0, p0}, Lorg/threeten/bp/MonthDay;->of(Lorg/threeten/bp/Month;I)Lorg/threeten/bp/MonthDay;

    move-result-object p0

    return-object p0
.end method

.method public static now(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/MonthDay;
    .locals 0

    invoke-static {p0}, Lorg/threeten/bp/Clock;->system(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/Clock;

    move-result-object p0

    invoke-static {p0}, Lorg/threeten/bp/MonthDay;->now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/MonthDay;

    move-result-object p0

    return-object p0
.end method

.method public static of(II)Lorg/threeten/bp/MonthDay;
    .locals 0

    invoke-static {p0}, Lorg/threeten/bp/Month;->of(I)Lorg/threeten/bp/Month;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/threeten/bp/MonthDay;->of(Lorg/threeten/bp/Month;I)Lorg/threeten/bp/MonthDay;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lorg/threeten/bp/Month;I)Lorg/threeten/bp/MonthDay;
    .locals 3

    const-string v0, "month"

    invoke-static {p0, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    invoke-virtual {p0}, Lorg/threeten/bp/Month;->maxLength()I

    move-result v0

    if-gt p1, v0, :cond_0

    new-instance v0, Lorg/threeten/bp/MonthDay;

    invoke-virtual {p0}, Lorg/threeten/bp/Month;->getValue()I

    move-result p0

    invoke-direct {v0, p0, p1}, Lorg/threeten/bp/MonthDay;-><init>(II)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal value for DayOfMonth field, value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not valid for month "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/threeten/bp/Month;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parse(Ljava/lang/CharSequence;)Lorg/threeten/bp/MonthDay;
    .locals 1

    sget-object v0, Lorg/threeten/bp/MonthDay;->PARSER:Lorg/threeten/bp/format/DateTimeFormatter;

    invoke-static {p0, v0}, Lorg/threeten/bp/MonthDay;->parse(Ljava/lang/CharSequence;Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/MonthDay;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/CharSequence;Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/MonthDay;
    .locals 1

    const-string v0, "formatter"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lorg/threeten/bp/MonthDay;->FROM:Lorg/threeten/bp/temporal/TemporalQuery;

    invoke-virtual {p1, p0, v0}, Lorg/threeten/bp/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/threeten/bp/MonthDay;

    return-object p0
.end method

.method static readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/MonthDay;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result p0

    invoke-static {v0, p0}, Lorg/threeten/bp/MonthDay;->of(II)Lorg/threeten/bp/MonthDay;

    move-result-object p0

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lorg/threeten/bp/Ser;

    const/16 v1, 0x40

    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;
    .locals 5

    invoke-static {p1}, Lorg/threeten/bp/chrono/Chronology;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/Chronology;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    iget v1, p0, Lorg/threeten/bp/MonthDay;->month:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/Temporal;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v1}, Lorg/threeten/bp/temporal/Temporal;->range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/temporal/ValueRange;->getMaximum()J

    move-result-wide v1

    iget v3, p0, Lorg/threeten/bp/MonthDay;->day:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/Temporal;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lorg/threeten/bp/DateTimeException;

    const-string v0, "Adjustment only supported on ISO date-time"

    invoke-direct {p1, v0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public atYear(I)Lorg/threeten/bp/LocalDate;
    .locals 2

    iget v0, p0, Lorg/threeten/bp/MonthDay;->month:I

    invoke-virtual {p0, p1}, Lorg/threeten/bp/MonthDay;->isValidYear(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/threeten/bp/MonthDay;->day:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x1c

    :goto_0
    invoke-static {p1, v0, v1}, Lorg/threeten/bp/LocalDate;->of(III)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/threeten/bp/MonthDay;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/MonthDay;->compareTo(Lorg/threeten/bp/MonthDay;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/threeten/bp/MonthDay;)I
    .locals 2

    iget v0, p0, Lorg/threeten/bp/MonthDay;->month:I

    iget v1, p1, Lorg/threeten/bp/MonthDay;->month:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/threeten/bp/MonthDay;->day:I

    iget p1, p1, Lorg/threeten/bp/MonthDay;->day:I

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/threeten/bp/MonthDay;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lorg/threeten/bp/MonthDay;

    iget v1, p0, Lorg/threeten/bp/MonthDay;->month:I

    iget v3, p1, Lorg/threeten/bp/MonthDay;->month:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lorg/threeten/bp/MonthDay;->day:I

    iget p1, p1, Lorg/threeten/bp/MonthDay;->day:I

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public format(Lorg/threeten/bp/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 1

    const-string v0, "formatter"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lorg/threeten/bp/format/DateTimeFormatter;->format(Lorg/threeten/bp/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public get(Lorg/threeten/bp/temporal/TemporalField;)I
    .locals 3

    invoke-virtual {p0, p1}, Lorg/threeten/bp/MonthDay;->range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/threeten/bp/MonthDay;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/threeten/bp/temporal/ValueRange;->checkValidIntValue(JLorg/threeten/bp/temporal/TemporalField;)I

    move-result p1

    return p1
.end method

.method public getDayOfMonth()I
    .locals 1

    iget v0, p0, Lorg/threeten/bp/MonthDay;->day:I

    return v0
.end method

.method public getLong(Lorg/threeten/bp/temporal/TemporalField;)J
    .locals 3

    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_2

    sget-object v0, Lorg/threeten/bp/MonthDay$2;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v1}, Lorg/threeten/bp/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget p1, p0, Lorg/threeten/bp/MonthDay;->month:I

    :goto_0
    int-to-long v0, p1

    return-wide v0

    :cond_0
    new-instance v0, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported field: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget p1, p0, Lorg/threeten/bp/MonthDay;->day:I

    goto :goto_0

    :cond_2
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->getFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()Lorg/threeten/bp/Month;
    .locals 1

    iget v0, p0, Lorg/threeten/bp/MonthDay;->month:I

    invoke-static {v0}, Lorg/threeten/bp/Month;->of(I)Lorg/threeten/bp/Month;

    move-result-object v0

    return-object v0
.end method

.method public getMonthValue()I
    .locals 1

    iget v0, p0, Lorg/threeten/bp/MonthDay;->month:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/threeten/bp/MonthDay;->month:I

    shl-int/lit8 v0, v0, 0x6

    iget v1, p0, Lorg/threeten/bp/MonthDay;->day:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isAfter(Lorg/threeten/bp/MonthDay;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/threeten/bp/MonthDay;->compareTo(Lorg/threeten/bp/MonthDay;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isBefore(Lorg/threeten/bp/MonthDay;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/threeten/bp/MonthDay;->compareTo(Lorg/threeten/bp/MonthDay;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z
    .locals 3

    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    if-eq p1, v0, :cond_1

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->isSupportedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public isValidYear(I)Z
    .locals 3

    iget v0, p0, Lorg/threeten/bp/MonthDay;->day:I

    const/16 v1, 0x1d

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/threeten/bp/MonthDay;->month:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    int-to-long v0, p1

    invoke-static {v0, v1}, Lorg/threeten/bp/Year;->isLeap(J)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    xor-int/2addr p1, v2

    return p1
.end method

.method public query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "TR;>;)TR;"
        }
    .end annotation

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->chronology()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_0

    sget-object p1, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;->query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 7

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalField;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_1

    const-wide/16 v1, 0x1

    invoke-virtual {p0}, Lorg/threeten/bp/MonthDay;->getMonth()Lorg/threeten/bp/Month;

    move-result-object p1

    invoke-virtual {p1}, Lorg/threeten/bp/Month;->minLength()I

    move-result p1

    int-to-long v3, p1

    invoke-virtual {p0}, Lorg/threeten/bp/MonthDay;->getMonth()Lorg/threeten/bp/Month;

    move-result-object p1

    invoke-virtual {p1}, Lorg/threeten/bp/Month;->maxLength()I

    move-result p1

    int-to-long v5, p1

    invoke-static/range {v1 .. v6}, Lorg/threeten/bp/temporal/ValueRange;->of(JJJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-super {p0, p1}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;->range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "--"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/threeten/bp/MonthDay;->month:I

    if-ge v2, v1, :cond_0

    const-string v2, "0"

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/threeten/bp/MonthDay;->month:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/threeten/bp/MonthDay;->day:I

    if-ge v2, v1, :cond_1

    const-string v1, "-0"

    goto :goto_1

    :cond_1
    const-string v1, "-"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/threeten/bp/MonthDay;->day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public with(Lorg/threeten/bp/Month;)Lorg/threeten/bp/MonthDay;
    .locals 2

    const-string v0, "month"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/threeten/bp/Month;->getValue()I

    move-result v0

    iget v1, p0, Lorg/threeten/bp/MonthDay;->month:I

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Lorg/threeten/bp/MonthDay;->day:I

    invoke-virtual {p1}, Lorg/threeten/bp/Month;->maxLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v1, Lorg/threeten/bp/MonthDay;

    invoke-virtual {p1}, Lorg/threeten/bp/Month;->getValue()I

    move-result p1

    invoke-direct {v1, p1, v0}, Lorg/threeten/bp/MonthDay;-><init>(II)V

    return-object v1
.end method

.method public withDayOfMonth(I)Lorg/threeten/bp/MonthDay;
    .locals 1

    iget v0, p0, Lorg/threeten/bp/MonthDay;->day:I

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Lorg/threeten/bp/MonthDay;->month:I

    invoke-static {v0, p1}, Lorg/threeten/bp/MonthDay;->of(II)Lorg/threeten/bp/MonthDay;

    move-result-object p1

    return-object p1
.end method

.method public withMonth(I)Lorg/threeten/bp/MonthDay;
    .locals 0

    invoke-static {p1}, Lorg/threeten/bp/Month;->of(I)Lorg/threeten/bp/Month;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/threeten/bp/MonthDay;->with(Lorg/threeten/bp/Month;)Lorg/threeten/bp/MonthDay;

    move-result-object p1

    return-object p1
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/threeten/bp/MonthDay;->month:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget v0, p0, Lorg/threeten/bp/MonthDay;->day:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    return-void
.end method
