.class public abstract Lorg/threeten/bp/chrono/ChronoLocalDateTime;
.super Lorg/threeten/bp/jdk8/DefaultInterfaceTemporal;
.source "ChronoLocalDateTime.java"

# interfaces
.implements Lorg/threeten/bp/temporal/Temporal;
.implements Lorg/threeten/bp/temporal/TemporalAdjuster;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lorg/threeten/bp/chrono/ChronoLocalDate;",
        ">",
        "Lorg/threeten/bp/jdk8/DefaultInterfaceTemporal;",
        "Lorg/threeten/bp/temporal/Temporal;",
        "Lorg/threeten/bp/temporal/TemporalAdjuster;",
        "Ljava/lang/Comparable<",
        "Lorg/threeten/bp/chrono/ChronoLocalDateTime<",
        "*>;>;"
    }
.end annotation


# static fields
.field private static final DATE_TIME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTime<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/threeten/bp/chrono/ChronoLocalDateTime$1;

    invoke-direct {v0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime$1;-><init>()V

    sput-object v0, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->DATE_TIME_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporal;-><init>()V

    return-void
.end method

.method public static from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/TemporalAccessor;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTime<",
            "*>;"
        }
    .end annotation

    const-string v0, "temporal"

    invoke-static {p0, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    return-object p0

    :cond_0
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->chronology()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/threeten/bp/temporal/TemporalAccessor;->query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/Chronology;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lorg/threeten/bp/chrono/Chronology;->localDateTime(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No Chronology found to create ChronoLocalDateTime: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static timeLineOrder()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTime<",
            "*>;>;"
        }
    .end annotation

    sget-object v0, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->DATE_TIME_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public adjustInto(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;
    .locals 3

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->EPOCH_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/Temporal;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/Temporal;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public abstract atZone(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/ZoneId;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoZonedDateTime<",
            "TD;>;"
        }
    .end annotation
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->compareTo(Lorg/threeten/bp/chrono/ChronoLocalDateTime;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/threeten/bp/chrono/ChronoLocalDateTime;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTime<",
            "*>;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/ChronoLocalDate;->compareTo(Lorg/threeten/bp/chrono/ChronoLocalDate;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v0

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/LocalTime;->compareTo(Lorg/threeten/bp/LocalTime;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v0

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/Chronology;->compareTo(Lorg/threeten/bp/chrono/Chronology;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->compareTo(Lorg/threeten/bp/chrono/ChronoLocalDateTime;)I

    move-result p1

    if-nez p1, :cond_1

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

.method public getChronology()Lorg/threeten/bp/chrono/Chronology;
    .locals 1

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/ChronoLocalDate;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/ChronoLocalDate;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/LocalTime;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isAfter(Lorg/threeten/bp/chrono/ChronoLocalDateTime;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTime<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object p1

    invoke-virtual {p1}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isBefore(Lorg/threeten/bp/chrono/ChronoLocalDateTime;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTime<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object p1

    invoke-virtual {p1}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isEqual(Lorg/threeten/bp/chrono/ChronoLocalDateTime;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTime<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object p1

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/threeten/bp/temporal/TemporalUnit;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTime<",
            "TD;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/ChronoLocalDate;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v0

    invoke-super {p0, p1, p2, p3}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporal;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/Chronology;->ensureChronoLocalDateTime(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1
.end method

.method public minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/TemporalAmount;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTime<",
            "TD;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/ChronoLocalDate;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v0

    invoke-super {p0, p1}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporal;->minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/Chronology;->ensureChronoLocalDateTime(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public abstract plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/threeten/bp/temporal/TemporalUnit;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTime<",
            "TD;>;"
        }
    .end annotation
.end method

.method public plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/TemporalAmount;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTime<",
            "TD;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/ChronoLocalDate;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v0

    invoke-super {p0, p1}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporal;->plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/Chronology;->ensureChronoLocalDateTime(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 2
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

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->precision()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_1

    sget-object p1, Lorg/threeten/bp/temporal/ChronoUnit;->NANOS:Lorg/threeten/bp/temporal/ChronoUnit;

    return-object p1

    :cond_1
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->localDate()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object p1

    invoke-virtual {p1}, Lorg/threeten/bp/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/threeten/bp/LocalDate;->ofEpochDay(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->localTime()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zone()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_5

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zoneId()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_5

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->offset()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-super {p0, p1}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporal;->query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public toEpochSecond(Lorg/threeten/bp/ZoneOffset;)J
    .locals 4

    const-string v0, "offset"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    const-wide/32 v2, 0x15180

    mul-long v0, v0, v2

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/LocalTime;->toSecondOfDay()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p1}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result p1

    int-to-long v2, p1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public toInstant(Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/Instant;
    .locals 4

    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toEpochSecond(Lorg/threeten/bp/ZoneOffset;)J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object p1

    invoke-virtual {p1}, Lorg/threeten/bp/LocalTime;->getNano()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/Instant;->ofEpochSecond(JJ)Lorg/threeten/bp/Instant;

    move-result-object p1

    return-object p1
.end method

.method public abstract toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method public abstract toLocalTime()Lorg/threeten/bp/LocalTime;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/chrono/ChronoLocalDate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/LocalTime;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/TemporalAdjuster;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTime<",
            "TD;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/ChronoLocalDate;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v0

    invoke-super {p0, p1}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporal;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/Chronology;->ensureChronoLocalDateTime(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object p1

    return-object p1
.end method

.method public abstract with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/chrono/ChronoLocalDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/TemporalField;",
            "J)",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTime<",
            "TD;>;"
        }
    .end annotation
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    move-result-object p1

    return-object p1
.end method
