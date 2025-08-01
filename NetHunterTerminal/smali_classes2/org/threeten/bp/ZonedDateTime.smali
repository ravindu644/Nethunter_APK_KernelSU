.class public final Lorg/threeten/bp/ZonedDateTime;
.super Lorg/threeten/bp/chrono/ChronoZonedDateTime;
.source "ZonedDateTime.java"

# interfaces
.implements Lorg/threeten/bp/temporal/Temporal;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/threeten/bp/chrono/ChronoZonedDateTime<",
        "Lorg/threeten/bp/LocalDate;",
        ">;",
        "Lorg/threeten/bp/temporal/Temporal;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final FROM:Lorg/threeten/bp/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "Lorg/threeten/bp/ZonedDateTime;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x56e37a54888537c2L


# instance fields
.field private final dateTime:Lorg/threeten/bp/LocalDateTime;

.field private final offset:Lorg/threeten/bp/ZoneOffset;

.field private final zone:Lorg/threeten/bp/ZoneId;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/threeten/bp/ZonedDateTime$1;

    invoke-direct {v0}, Lorg/threeten/bp/ZonedDateTime$1;-><init>()V

    sput-object v0, Lorg/threeten/bp/ZonedDateTime;->FROM:Lorg/threeten/bp/temporal/TemporalQuery;

    return-void
.end method

.method private constructor <init>(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneId;)V
    .locals 0

    invoke-direct {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;-><init>()V

    iput-object p1, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    iput-object p2, p0, Lorg/threeten/bp/ZonedDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    iput-object p3, p0, Lorg/threeten/bp/ZonedDateTime;->zone:Lorg/threeten/bp/ZoneId;

    return-void
.end method

.method private static create(JILorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;
    .locals 3

    invoke-virtual {p3}, Lorg/threeten/bp/ZoneId;->getRules()Lorg/threeten/bp/zone/ZoneRules;

    move-result-object v0

    int-to-long v1, p2

    invoke-static {p0, p1, v1, v2}, Lorg/threeten/bp/Instant;->ofEpochSecond(JJ)Lorg/threeten/bp/Instant;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/zone/ZoneRules;->getOffset(Lorg/threeten/bp/Instant;)Lorg/threeten/bp/ZoneOffset;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/threeten/bp/LocalDateTime;->ofEpochSecond(JILorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/LocalDateTime;

    move-result-object p0

    new-instance p1, Lorg/threeten/bp/ZonedDateTime;

    invoke-direct {p1, p0, v0, p3}, Lorg/threeten/bp/ZonedDateTime;-><init>(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneId;)V

    return-object p1
.end method

.method public static from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/ZonedDateTime;
    .locals 4

    instance-of v0, p0, Lorg/threeten/bp/ZonedDateTime;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/threeten/bp/ZonedDateTime;

    return-object p0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/threeten/bp/ZoneId;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/ZoneId;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->INSTANT_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p0, v1}, Lorg/threeten/bp/temporal/TemporalAccessor;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    move-result v1
    :try_end_0
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_1

    :try_start_1
    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->INSTANT_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p0, v1}, Lorg/threeten/bp/temporal/TemporalAccessor;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v1

    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p0, v3}, Lorg/threeten/bp/temporal/TemporalAccessor;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v3

    invoke-static {v1, v2, v3, v0}, Lorg/threeten/bp/ZonedDateTime;->create(JILorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p0
    :try_end_1
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    :cond_1
    :try_start_2
    invoke-static {p0}, Lorg/threeten/bp/LocalDateTime;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/threeten/bp/ZonedDateTime;->of(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p0
    :try_end_2
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to obtain ZonedDateTime from TemporalAccessor: "

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

.method public static now()Lorg/threeten/bp/ZonedDateTime;
    .locals 1

    invoke-static {}, Lorg/threeten/bp/Clock;->systemDefaultZone()Lorg/threeten/bp/Clock;

    move-result-object v0

    invoke-static {v0}, Lorg/threeten/bp/ZonedDateTime;->now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/ZonedDateTime;
    .locals 1

    const-string v0, "clock"

    invoke-static {p0, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/threeten/bp/Clock;->instant()Lorg/threeten/bp/Instant;

    move-result-object v0

    invoke-virtual {p0}, Lorg/threeten/bp/Clock;->getZone()Lorg/threeten/bp/ZoneId;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/threeten/bp/ZonedDateTime;->ofInstant(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static now(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;
    .locals 0

    invoke-static {p0}, Lorg/threeten/bp/Clock;->system(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/Clock;

    move-result-object p0

    invoke-static {p0}, Lorg/threeten/bp/ZonedDateTime;->now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static of(IIIIIIILorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;
    .locals 0

    invoke-static/range {p0 .. p6}, Lorg/threeten/bp/LocalDateTime;->of(IIIIIII)Lorg/threeten/bp/LocalDateTime;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p7, p1}, Lorg/threeten/bp/ZonedDateTime;->ofLocal(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneId;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;
    .locals 0

    invoke-static {p0, p1}, Lorg/threeten/bp/LocalDateTime;->of(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/threeten/bp/ZonedDateTime;->of(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/threeten/bp/ZonedDateTime;->ofLocal(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneId;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static ofInstant(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;
    .locals 2

    const-string v0, "instant"

    invoke-static {p0, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zone"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/threeten/bp/Instant;->getEpochSecond()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/threeten/bp/Instant;->getNano()I

    move-result p0

    invoke-static {v0, v1, p0, p1}, Lorg/threeten/bp/ZonedDateTime;->create(JILorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static ofInstant(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;
    .locals 2

    const-string v0, "localDateTime"

    invoke-static {p0, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "offset"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zone"

    invoke-static {p2, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDateTime;->toEpochSecond(Lorg/threeten/bp/ZoneOffset;)J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/threeten/bp/LocalDateTime;->getNano()I

    move-result p0

    invoke-static {v0, v1, p0, p2}, Lorg/threeten/bp/ZonedDateTime;->create(JILorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p0

    return-object p0
.end method

.method private static ofLenient(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;
    .locals 1

    const-string v0, "localDateTime"

    invoke-static {p0, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "offset"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zone"

    invoke-static {p2, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p2, Lorg/threeten/bp/ZoneOffset;

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ZoneId must match ZoneOffset"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v0, Lorg/threeten/bp/ZonedDateTime;

    invoke-direct {v0, p0, p1, p2}, Lorg/threeten/bp/ZonedDateTime;-><init>(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneId;)V

    return-object v0
.end method

.method public static ofLocal(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneId;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/ZonedDateTime;
    .locals 5

    const-string v0, "localDateTime"

    invoke-static {p0, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zone"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p1, Lorg/threeten/bp/ZoneOffset;

    if-eqz v0, :cond_0

    new-instance p2, Lorg/threeten/bp/ZonedDateTime;

    move-object v0, p1

    check-cast v0, Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p2, p0, v0, p1}, Lorg/threeten/bp/ZonedDateTime;-><init>(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneId;)V

    return-object p2

    :cond_0
    invoke-virtual {p1}, Lorg/threeten/bp/ZoneId;->getRules()Lorg/threeten/bp/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/threeten/bp/zone/ZoneRules;->getValidOffsets(Lorg/threeten/bp/LocalDateTime;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/threeten/bp/ZoneOffset;

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, p0}, Lorg/threeten/bp/zone/ZoneRules;->getTransition(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/zone/ZoneOffsetTransition;

    move-result-object p2

    invoke-virtual {p2}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getDuration()Lorg/threeten/bp/Duration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/Duration;->getSeconds()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/LocalDateTime;->plusSeconds(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object p0

    invoke-virtual {p2}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getOffsetAfter()Lorg/threeten/bp/ZoneOffset;

    move-result-object p2

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "offset"

    invoke-static {p2, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/threeten/bp/ZoneOffset;

    :goto_0
    new-instance v0, Lorg/threeten/bp/ZonedDateTime;

    invoke-direct {v0, p0, p2, p1}, Lorg/threeten/bp/ZonedDateTime;-><init>(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneId;)V

    return-object v0
.end method

.method public static ofStrict(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;
    .locals 3

    const-string v0, "localDateTime"

    invoke-static {p0, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "offset"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zone"

    invoke-static {p2, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p2}, Lorg/threeten/bp/ZoneId;->getRules()Lorg/threeten/bp/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/threeten/bp/zone/ZoneRules;->isValidOffset(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p0}, Lorg/threeten/bp/zone/ZoneRules;->getTransition(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/zone/ZoneOffsetTransition;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->isGap()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lorg/threeten/bp/DateTimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LocalDateTime \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' does not exist in zone \'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' due to a gap in the local time-line, typically caused by daylight savings"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ZoneOffset \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not valid for LocalDateTime \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' in zone \'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lorg/threeten/bp/ZonedDateTime;

    invoke-direct {v0, p0, p1, p2}, Lorg/threeten/bp/ZonedDateTime;-><init>(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneId;)V

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;)Lorg/threeten/bp/ZonedDateTime;
    .locals 1

    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_ZONED_DATE_TIME:Lorg/threeten/bp/format/DateTimeFormatter;

    invoke-static {p0, v0}, Lorg/threeten/bp/ZonedDateTime;->parse(Ljava/lang/CharSequence;Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/CharSequence;Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/ZonedDateTime;
    .locals 1

    const-string v0, "formatter"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lorg/threeten/bp/ZonedDateTime;->FROM:Lorg/threeten/bp/temporal/TemporalQuery;

    invoke-virtual {p1, p0, v0}, Lorg/threeten/bp/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/threeten/bp/ZonedDateTime;

    return-object p0
.end method

.method static readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/ZonedDateTime;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/threeten/bp/LocalDateTime;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    invoke-static {p0}, Lorg/threeten/bp/ZoneOffset;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/ZoneOffset;

    move-result-object v1

    invoke-static {p0}, Lorg/threeten/bp/Ser;->read(Ljava/io/DataInput;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/threeten/bp/ZoneId;

    invoke-static {v0, v1, p0}, Lorg/threeten/bp/ZonedDateTime;->ofLenient(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;

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

.method private resolveInstant(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;
    .locals 2

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    iget-object v1, p0, Lorg/threeten/bp/ZonedDateTime;->zone:Lorg/threeten/bp/ZoneId;

    invoke-static {p1, v0, v1}, Lorg/threeten/bp/ZonedDateTime;->ofInstant(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method private resolveLocal(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;
    .locals 2

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->zone:Lorg/threeten/bp/ZoneId;

    iget-object v1, p0, Lorg/threeten/bp/ZonedDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-static {p1, v0, v1}, Lorg/threeten/bp/ZonedDateTime;->ofLocal(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneId;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method private resolveOffset(Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/ZonedDateTime;
    .locals 3

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {p1, v0}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->zone:Lorg/threeten/bp/ZoneId;

    invoke-virtual {v0}, Lorg/threeten/bp/ZoneId;->getRules()Lorg/threeten/bp/zone/ZoneRules;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, v1, p1}, Lorg/threeten/bp/zone/ZoneRules;->isValidOffset(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/threeten/bp/ZonedDateTime;

    iget-object v1, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    iget-object v2, p0, Lorg/threeten/bp/ZonedDateTime;->zone:Lorg/threeten/bp/ZoneId;

    invoke-direct {v0, v1, p1, v2}, Lorg/threeten/bp/ZonedDateTime;-><init>(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneId;)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lorg/threeten/bp/Ser;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/threeten/bp/ZonedDateTime;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lorg/threeten/bp/ZonedDateTime;

    iget-object v1, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    iget-object v3, p1, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v1, v3}, Lorg/threeten/bp/LocalDateTime;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/threeten/bp/ZonedDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    iget-object v3, p1, Lorg/threeten/bp/ZonedDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v1, v3}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/threeten/bp/ZonedDateTime;->zone:Lorg/threeten/bp/ZoneId;

    iget-object p1, p1, Lorg/threeten/bp/ZonedDateTime;->zone:Lorg/threeten/bp/ZoneId;

    invoke-virtual {v1, p1}, Lorg/threeten/bp/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public format(Lorg/threeten/bp/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->format(Lorg/threeten/bp/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public get(Lorg/threeten/bp/temporal/TemporalField;)I
    .locals 3

    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_2

    sget-object v0, Lorg/threeten/bp/ZonedDateTime$2;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v1}, Lorg/threeten/bp/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Lorg/threeten/bp/ZonedDateTime;->getOffset()Lorg/threeten/bp/ZoneOffset;

    move-result-object p1

    invoke-virtual {p1}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result p1

    return p1

    :cond_1
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Field too large for an int: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result p1

    return p1
.end method

.method public getDayOfMonth()I
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->getDayOfMonth()I

    move-result v0

    return v0
.end method

.method public getDayOfWeek()Lorg/threeten/bp/DayOfWeek;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->getDayOfWeek()Lorg/threeten/bp/DayOfWeek;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfYear()I
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->getDayOfYear()I

    move-result v0

    return v0
.end method

.method public getHour()I
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->getHour()I

    move-result v0

    return v0
.end method

.method public getLong(Lorg/threeten/bp/temporal/TemporalField;)J
    .locals 2

    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_2

    sget-object v0, Lorg/threeten/bp/ZonedDateTime$2;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v1}, Lorg/threeten/bp/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lorg/threeten/bp/ZonedDateTime;->getOffset()Lorg/threeten/bp/ZoneOffset;

    move-result-object p1

    invoke-virtual {p1}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_1
    invoke-virtual {p0}, Lorg/threeten/bp/ZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    return-wide v0

    :cond_2
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->getFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinute()I
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->getMinute()I

    move-result v0

    return v0
.end method

.method public getMonth()Lorg/threeten/bp/Month;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->getMonth()Lorg/threeten/bp/Month;

    move-result-object v0

    return-object v0
.end method

.method public getMonthValue()I
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->getMonthValue()I

    move-result v0

    return v0
.end method

.method public getNano()I
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->getNano()I

    move-result v0

    return v0
.end method

.method public getOffset()Lorg/threeten/bp/ZoneOffset;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    return-object v0
.end method

.method public getSecond()I
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->getSecond()I

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->getYear()I

    move-result v0

    return v0
.end method

.method public getZone()Lorg/threeten/bp/ZoneId;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->zone:Lorg/threeten/bp/ZoneId;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/threeten/bp/ZonedDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v1}, Lorg/threeten/bp/ZoneOffset;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/threeten/bp/ZonedDateTime;->zone:Lorg/threeten/bp/ZoneId;

    invoke-virtual {v1}, Lorg/threeten/bp/ZoneId;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z
    .locals 1

    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->isSupportedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Z

    move-result p1

    if-eqz p1, :cond_0

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

.method public isSupported(Lorg/threeten/bp/temporal/TemporalUnit;)Z
    .locals 3

    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoUnit;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalUnit;->isDateBased()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalUnit;->isTimeBased()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalUnit;->isSupportedBy(Lorg/threeten/bp/temporal/Temporal;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/ZonedDateTime;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/ZonedDateTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1, p3}, Lorg/threeten/bp/ZonedDateTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/ZonedDateTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/ZonedDateTime;
    .locals 0

    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAmount;->subtractFrom(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/ZonedDateTime;

    return-object p1
.end method

.method public bridge synthetic minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/ZonedDateTime;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/threeten/bp/ZonedDateTime;->minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/ZonedDateTime;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/threeten/bp/ZonedDateTime;->minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public minusDays(J)Lorg/threeten/bp/ZonedDateTime;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/ZonedDateTime;->plusDays(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/threeten/bp/ZonedDateTime;->plusDays(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/ZonedDateTime;->plusDays(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minusHours(J)Lorg/threeten/bp/ZonedDateTime;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/ZonedDateTime;->plusHours(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/threeten/bp/ZonedDateTime;->plusHours(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/ZonedDateTime;->plusHours(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minusMinutes(J)Lorg/threeten/bp/ZonedDateTime;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/ZonedDateTime;->plusMinutes(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/threeten/bp/ZonedDateTime;->plusMinutes(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/ZonedDateTime;->plusMinutes(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minusMonths(J)Lorg/threeten/bp/ZonedDateTime;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/ZonedDateTime;->plusMonths(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/threeten/bp/ZonedDateTime;->plusMonths(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/ZonedDateTime;->plusMonths(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minusNanos(J)Lorg/threeten/bp/ZonedDateTime;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/ZonedDateTime;->plusNanos(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/threeten/bp/ZonedDateTime;->plusNanos(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/ZonedDateTime;->plusNanos(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minusSeconds(J)Lorg/threeten/bp/ZonedDateTime;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/ZonedDateTime;->plusSeconds(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/threeten/bp/ZonedDateTime;->plusSeconds(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/ZonedDateTime;->plusSeconds(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minusWeeks(J)Lorg/threeten/bp/ZonedDateTime;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/ZonedDateTime;->plusWeeks(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/threeten/bp/ZonedDateTime;->plusWeeks(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/ZonedDateTime;->plusWeeks(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minusYears(J)Lorg/threeten/bp/ZonedDateTime;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/ZonedDateTime;->plusYears(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/threeten/bp/ZonedDateTime;->plusYears(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/ZonedDateTime;->plusYears(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/ZonedDateTime;
    .locals 1

    instance-of v0, p3, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v0, :cond_1

    invoke-interface {p3}, Lorg/threeten/bp/temporal/TemporalUnit;->isDateBased()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/LocalDateTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/ZonedDateTime;->resolveLocal(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/LocalDateTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/ZonedDateTime;->resolveInstant(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-interface {p3, p0, p1, p2}, Lorg/threeten/bp/temporal/TemporalUnit;->addTo(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/ZonedDateTime;

    return-object p1
.end method

.method public plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/ZonedDateTime;
    .locals 0

    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAmount;->addTo(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/ZonedDateTime;

    return-object p1
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/ZonedDateTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/threeten/bp/ZonedDateTime;->plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/ZonedDateTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/threeten/bp/ZonedDateTime;->plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public plusDays(J)Lorg/threeten/bp/ZonedDateTime;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalDateTime;->plusDays(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/ZonedDateTime;->resolveLocal(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public plusHours(J)Lorg/threeten/bp/ZonedDateTime;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalDateTime;->plusHours(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/ZonedDateTime;->resolveInstant(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public plusMinutes(J)Lorg/threeten/bp/ZonedDateTime;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalDateTime;->plusMinutes(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/ZonedDateTime;->resolveInstant(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public plusMonths(J)Lorg/threeten/bp/ZonedDateTime;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalDateTime;->plusMonths(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/ZonedDateTime;->resolveLocal(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public plusNanos(J)Lorg/threeten/bp/ZonedDateTime;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalDateTime;->plusNanos(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/ZonedDateTime;->resolveInstant(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public plusSeconds(J)Lorg/threeten/bp/ZonedDateTime;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalDateTime;->plusSeconds(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/ZonedDateTime;->resolveInstant(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public plusWeeks(J)Lorg/threeten/bp/ZonedDateTime;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalDateTime;->plusWeeks(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/ZonedDateTime;->resolveLocal(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public plusYears(J)Lorg/threeten/bp/ZonedDateTime;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalDateTime;->plusYears(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/ZonedDateTime;->resolveLocal(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    return-object p1
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

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->localDate()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/threeten/bp/ZonedDateTime;->toLocalDate()Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 1

    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_2

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->INSTANT_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    if-eq p1, v0, :cond_1

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalField;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->rangeRefinedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1
.end method

.method public toLocalDate()Lorg/threeten/bp/LocalDate;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->toLocalDate()Lorg/threeten/bp/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1

    invoke-virtual {p0}, Lorg/threeten/bp/ZonedDateTime;->toLocalDate()Lorg/threeten/bp/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public toLocalDateTime()Lorg/threeten/bp/LocalDateTime;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    return-object v0
.end method

.method public bridge synthetic toLocalDateTime()Lorg/threeten/bp/chrono/ChronoLocalDateTime;
    .locals 1

    invoke-virtual {p0}, Lorg/threeten/bp/ZonedDateTime;->toLocalDateTime()Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public toLocalTime()Lorg/threeten/bp/LocalTime;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public toOffsetDateTime()Lorg/threeten/bp/OffsetDateTime;
    .locals 2

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    iget-object v1, p0, Lorg/threeten/bp/ZonedDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-static {v0, v1}, Lorg/threeten/bp/OffsetDateTime;->of(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v1}, Lorg/threeten/bp/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/threeten/bp/ZonedDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v1}, Lorg/threeten/bp/ZoneOffset;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/ZonedDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    iget-object v2, p0, Lorg/threeten/bp/ZonedDateTime;->zone:Lorg/threeten/bp/ZoneId;

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->zone:Lorg/threeten/bp/ZoneId;

    invoke-virtual {v0}, Lorg/threeten/bp/ZoneId;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public truncatedTo(Lorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/ZonedDateTime;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->truncatedTo(Lorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/ZonedDateTime;->resolveLocal(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public until(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/TemporalUnit;)J
    .locals 1

    invoke-static {p1}, Lorg/threeten/bp/ZonedDateTime;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    instance-of v0, p2, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->zone:Lorg/threeten/bp/ZoneId;

    invoke-virtual {p1, v0}, Lorg/threeten/bp/ZonedDateTime;->withZoneSameInstant(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    invoke-interface {p2}, Lorg/threeten/bp/temporal/TemporalUnit;->isDateBased()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    iget-object p1, p1, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalDateTime;->until(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/TemporalUnit;)J

    move-result-wide p1

    return-wide p1

    :cond_0
    invoke-virtual {p0}, Lorg/threeten/bp/ZonedDateTime;->toOffsetDateTime()Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    invoke-virtual {p1}, Lorg/threeten/bp/ZonedDateTime;->toOffsetDateTime()Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/OffsetDateTime;->until(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/TemporalUnit;)J

    move-result-wide p1

    return-wide p1

    :cond_1
    invoke-interface {p2, p0, p1}, Lorg/threeten/bp/temporal/TemporalUnit;->between(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/Temporal;)J

    move-result-wide p1

    return-wide p1
.end method

.method public with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/ZonedDateTime;
    .locals 3

    instance-of v0, p1, Lorg/threeten/bp/LocalDate;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/threeten/bp/LocalDate;

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/threeten/bp/LocalDateTime;->of(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/ZonedDateTime;->resolveLocal(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/LocalTime;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->toLocalDate()Lorg/threeten/bp/LocalDate;

    move-result-object v0

    check-cast p1, Lorg/threeten/bp/LocalTime;

    invoke-static {v0, p1}, Lorg/threeten/bp/LocalDateTime;->of(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/ZonedDateTime;->resolveLocal(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, p1, Lorg/threeten/bp/LocalDateTime;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/threeten/bp/LocalDateTime;

    invoke-direct {p0, p1}, Lorg/threeten/bp/ZonedDateTime;->resolveLocal(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of v0, p1, Lorg/threeten/bp/Instant;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/threeten/bp/Instant;

    invoke-virtual {p1}, Lorg/threeten/bp/Instant;->getEpochSecond()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/threeten/bp/Instant;->getNano()I

    move-result p1

    iget-object v2, p0, Lorg/threeten/bp/ZonedDateTime;->zone:Lorg/threeten/bp/ZoneId;

    invoke-static {v0, v1, p1, v2}, Lorg/threeten/bp/ZonedDateTime;->create(JILorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    return-object p1

    :cond_3
    instance-of v0, p1, Lorg/threeten/bp/ZoneOffset;

    if-eqz v0, :cond_4

    check-cast p1, Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, p1}, Lorg/threeten/bp/ZonedDateTime;->resolveOffset(Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAdjuster;->adjustInto(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/ZonedDateTime;

    return-object p1
.end method

.method public with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/ZonedDateTime;
    .locals 3

    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lorg/threeten/bp/temporal/ChronoField;

    sget-object v1, Lorg/threeten/bp/ZonedDateTime$2;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/LocalDateTime;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/ZonedDateTime;->resolveLocal(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v0, p2, p3}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result p1

    invoke-static {p1}, Lorg/threeten/bp/ZoneOffset;->ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/ZonedDateTime;->resolveOffset(Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lorg/threeten/bp/ZonedDateTime;->getNano()I

    move-result p1

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->zone:Lorg/threeten/bp/ZoneId;

    invoke-static {p2, p3, p1, v0}, Lorg/threeten/bp/ZonedDateTime;->create(JILorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/TemporalField;->adjustInto(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/ZonedDateTime;

    return-object p1
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/threeten/bp/ZonedDateTime;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/chrono/ChronoZonedDateTime;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/ZonedDateTime;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/threeten/bp/ZonedDateTime;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/ZonedDateTime;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withDayOfMonth(I)Lorg/threeten/bp/ZonedDateTime;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->withDayOfMonth(I)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/ZonedDateTime;->resolveLocal(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withDayOfYear(I)Lorg/threeten/bp/ZonedDateTime;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->withDayOfYear(I)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/ZonedDateTime;->resolveLocal(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withEarlierOffsetAtOverlap()Lorg/threeten/bp/ZonedDateTime;
    .locals 4

    invoke-virtual {p0}, Lorg/threeten/bp/ZonedDateTime;->getZone()Lorg/threeten/bp/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/ZoneId;->getRules()Lorg/threeten/bp/zone/ZoneRules;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/zone/ZoneRules;->getTransition(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/zone/ZoneOffsetTransition;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->isOverlap()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getOffsetBefore()Lorg/threeten/bp/ZoneOffset;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/ZonedDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/threeten/bp/ZonedDateTime;

    iget-object v2, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    iget-object v3, p0, Lorg/threeten/bp/ZonedDateTime;->zone:Lorg/threeten/bp/ZoneId;

    invoke-direct {v1, v2, v0, v3}, Lorg/threeten/bp/ZonedDateTime;-><init>(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneId;)V

    return-object v1

    :cond_0
    return-object p0
.end method

.method public bridge synthetic withEarlierOffsetAtOverlap()Lorg/threeten/bp/chrono/ChronoZonedDateTime;
    .locals 1

    invoke-virtual {p0}, Lorg/threeten/bp/ZonedDateTime;->withEarlierOffsetAtOverlap()Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withFixedOffsetZone()Lorg/threeten/bp/ZonedDateTime;
    .locals 3

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->zone:Lorg/threeten/bp/ZoneId;

    iget-object v1, p0, Lorg/threeten/bp/ZonedDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/threeten/bp/ZonedDateTime;

    iget-object v1, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    iget-object v2, p0, Lorg/threeten/bp/ZonedDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {v0, v1, v2, v2}, Lorg/threeten/bp/ZonedDateTime;-><init>(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneId;)V

    :goto_0
    return-object v0
.end method

.method public withHour(I)Lorg/threeten/bp/ZonedDateTime;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->withHour(I)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/ZonedDateTime;->resolveLocal(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withLaterOffsetAtOverlap()Lorg/threeten/bp/ZonedDateTime;
    .locals 4

    invoke-virtual {p0}, Lorg/threeten/bp/ZonedDateTime;->getZone()Lorg/threeten/bp/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/ZoneId;->getRules()Lorg/threeten/bp/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {p0}, Lorg/threeten/bp/ZonedDateTime;->toLocalDateTime()Lorg/threeten/bp/LocalDateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/zone/ZoneRules;->getTransition(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/zone/ZoneOffsetTransition;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getOffsetAfter()Lorg/threeten/bp/ZoneOffset;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/ZonedDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/threeten/bp/ZonedDateTime;

    iget-object v2, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    iget-object v3, p0, Lorg/threeten/bp/ZonedDateTime;->zone:Lorg/threeten/bp/ZoneId;

    invoke-direct {v1, v2, v0, v3}, Lorg/threeten/bp/ZonedDateTime;-><init>(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneId;)V

    return-object v1

    :cond_0
    return-object p0
.end method

.method public bridge synthetic withLaterOffsetAtOverlap()Lorg/threeten/bp/chrono/ChronoZonedDateTime;
    .locals 1

    invoke-virtual {p0}, Lorg/threeten/bp/ZonedDateTime;->withLaterOffsetAtOverlap()Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withMinute(I)Lorg/threeten/bp/ZonedDateTime;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->withMinute(I)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/ZonedDateTime;->resolveLocal(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withMonth(I)Lorg/threeten/bp/ZonedDateTime;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->withMonth(I)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/ZonedDateTime;->resolveLocal(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withNano(I)Lorg/threeten/bp/ZonedDateTime;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->withNano(I)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/ZonedDateTime;->resolveLocal(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withSecond(I)Lorg/threeten/bp/ZonedDateTime;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->withSecond(I)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/ZonedDateTime;->resolveLocal(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withYear(I)Lorg/threeten/bp/ZonedDateTime;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->withYear(I)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/ZonedDateTime;->resolveLocal(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withZoneSameInstant(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;
    .locals 3

    const-string v0, "zone"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->zone:Lorg/threeten/bp/ZoneId;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    iget-object v1, p0, Lorg/threeten/bp/ZonedDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/LocalDateTime;->toEpochSecond(Lorg/threeten/bp/ZoneOffset;)J

    move-result-wide v0

    iget-object v2, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v2}, Lorg/threeten/bp/LocalDateTime;->getNano()I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Lorg/threeten/bp/ZonedDateTime;->create(JILorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic withZoneSameInstant(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/threeten/bp/ZonedDateTime;->withZoneSameInstant(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withZoneSameLocal(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;
    .locals 2

    const-string v0, "zone"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->zone:Lorg/threeten/bp/ZoneId;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    iget-object v1, p0, Lorg/threeten/bp/ZonedDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-static {v0, p1, v1}, Lorg/threeten/bp/ZonedDateTime;->ofLocal(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneId;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic withZoneSameLocal(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/threeten/bp/ZonedDateTime;->withZoneSameLocal(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;

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

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->writeExternal(Ljava/io/DataOutput;)V

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/ZoneOffset;->writeExternal(Ljava/io/DataOutput;)V

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->zone:Lorg/threeten/bp/ZoneId;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/ZoneId;->write(Ljava/io/DataOutput;)V

    return-void
.end method
