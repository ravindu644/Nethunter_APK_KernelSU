.class public final Lorg/threeten/bp/OffsetTime;
.super Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;
.source "OffsetTime.java"

# interfaces
.implements Lorg/threeten/bp/temporal/Temporal;
.implements Lorg/threeten/bp/temporal/TemporalAdjuster;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;",
        "Lorg/threeten/bp/temporal/Temporal;",
        "Lorg/threeten/bp/temporal/TemporalAdjuster;",
        "Ljava/lang/Comparable<",
        "Lorg/threeten/bp/OffsetTime;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final FROM:Lorg/threeten/bp/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "Lorg/threeten/bp/OffsetTime;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX:Lorg/threeten/bp/OffsetTime;

.field public static final MIN:Lorg/threeten/bp/OffsetTime;

.field private static final serialVersionUID:J = 0x64d0affdfec1386cL


# instance fields
.field private final offset:Lorg/threeten/bp/ZoneOffset;

.field private final time:Lorg/threeten/bp/LocalTime;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/threeten/bp/LocalTime;->MIN:Lorg/threeten/bp/LocalTime;

    sget-object v1, Lorg/threeten/bp/ZoneOffset;->MAX:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/LocalTime;->atOffset(Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/OffsetTime;->MIN:Lorg/threeten/bp/OffsetTime;

    sget-object v0, Lorg/threeten/bp/LocalTime;->MAX:Lorg/threeten/bp/LocalTime;

    sget-object v1, Lorg/threeten/bp/ZoneOffset;->MIN:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/LocalTime;->atOffset(Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/OffsetTime;->MAX:Lorg/threeten/bp/OffsetTime;

    new-instance v0, Lorg/threeten/bp/OffsetTime$1;

    invoke-direct {v0}, Lorg/threeten/bp/OffsetTime$1;-><init>()V

    sput-object v0, Lorg/threeten/bp/OffsetTime;->FROM:Lorg/threeten/bp/temporal/TemporalQuery;

    return-void
.end method

.method private constructor <init>(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)V
    .locals 1

    invoke-direct {p0}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;-><init>()V

    const-string v0, "time"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/LocalTime;

    iput-object p1, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    const-string p1, "offset"

    invoke-static {p2, p1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/ZoneOffset;

    iput-object p1, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    return-void
.end method

.method public static from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/OffsetTime;
    .locals 3

    instance-of v0, p0, Lorg/threeten/bp/OffsetTime;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/threeten/bp/OffsetTime;

    return-object p0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/threeten/bp/LocalTime;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/LocalTime;

    move-result-object v0

    invoke-static {p0}, Lorg/threeten/bp/ZoneOffset;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/ZoneOffset;

    move-result-object v1

    new-instance v2, Lorg/threeten/bp/OffsetTime;

    invoke-direct {v2, v0, v1}, Lorg/threeten/bp/OffsetTime;-><init>(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)V
    :try_end_0
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to obtain OffsetTime from TemporalAccessor: "

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

.method public static now()Lorg/threeten/bp/OffsetTime;
    .locals 1

    invoke-static {}, Lorg/threeten/bp/Clock;->systemDefaultZone()Lorg/threeten/bp/Clock;

    move-result-object v0

    invoke-static {v0}, Lorg/threeten/bp/OffsetTime;->now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public static now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/OffsetTime;
    .locals 1

    const-string v0, "clock"

    invoke-static {p0, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/threeten/bp/Clock;->instant()Lorg/threeten/bp/Instant;

    move-result-object v0

    invoke-virtual {p0}, Lorg/threeten/bp/Clock;->getZone()Lorg/threeten/bp/ZoneId;

    move-result-object p0

    invoke-virtual {p0}, Lorg/threeten/bp/ZoneId;->getRules()Lorg/threeten/bp/zone/ZoneRules;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/threeten/bp/zone/ZoneRules;->getOffset(Lorg/threeten/bp/Instant;)Lorg/threeten/bp/ZoneOffset;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/threeten/bp/OffsetTime;->ofInstant(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/OffsetTime;

    move-result-object p0

    return-object p0
.end method

.method public static now(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/OffsetTime;
    .locals 0

    invoke-static {p0}, Lorg/threeten/bp/Clock;->system(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/Clock;

    move-result-object p0

    invoke-static {p0}, Lorg/threeten/bp/OffsetTime;->now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/OffsetTime;

    move-result-object p0

    return-object p0
.end method

.method public static of(IIIILorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;
    .locals 1

    new-instance v0, Lorg/threeten/bp/OffsetTime;

    invoke-static {p0, p1, p2, p3}, Lorg/threeten/bp/LocalTime;->of(IIII)Lorg/threeten/bp/LocalTime;

    move-result-object p0

    invoke-direct {v0, p0, p4}, Lorg/threeten/bp/OffsetTime;-><init>(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)V

    return-object v0
.end method

.method public static of(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;
    .locals 1

    new-instance v0, Lorg/threeten/bp/OffsetTime;

    invoke-direct {v0, p0, p1}, Lorg/threeten/bp/OffsetTime;-><init>(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)V

    return-object v0
.end method

.method public static ofInstant(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/OffsetTime;
    .locals 7

    const-string v0, "instant"

    invoke-static {p0, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zone"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/threeten/bp/ZoneId;->getRules()Lorg/threeten/bp/zone/ZoneRules;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/threeten/bp/zone/ZoneRules;->getOffset(Lorg/threeten/bp/Instant;)Lorg/threeten/bp/ZoneOffset;

    move-result-object p1

    invoke-virtual {p0}, Lorg/threeten/bp/Instant;->getEpochSecond()J

    move-result-wide v0

    const-wide/32 v2, 0x15180

    rem-long/2addr v0, v2

    invoke-virtual {p1}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    rem-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    add-long/2addr v0, v2

    :cond_0
    invoke-virtual {p0}, Lorg/threeten/bp/Instant;->getNano()I

    move-result p0

    invoke-static {v0, v1, p0}, Lorg/threeten/bp/LocalTime;->ofSecondOfDay(JI)Lorg/threeten/bp/LocalTime;

    move-result-object p0

    new-instance v0, Lorg/threeten/bp/OffsetTime;

    invoke-direct {v0, p0, p1}, Lorg/threeten/bp/OffsetTime;-><init>(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)V

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;)Lorg/threeten/bp/OffsetTime;
    .locals 1

    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_OFFSET_TIME:Lorg/threeten/bp/format/DateTimeFormatter;

    invoke-static {p0, v0}, Lorg/threeten/bp/OffsetTime;->parse(Ljava/lang/CharSequence;Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/OffsetTime;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/CharSequence;Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/OffsetTime;
    .locals 1

    const-string v0, "formatter"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lorg/threeten/bp/OffsetTime;->FROM:Lorg/threeten/bp/temporal/TemporalQuery;

    invoke-virtual {p1, p0, v0}, Lorg/threeten/bp/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/threeten/bp/OffsetTime;

    return-object p0
.end method

.method static readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/OffsetTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/threeten/bp/LocalTime;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/LocalTime;

    move-result-object v0

    invoke-static {p0}, Lorg/threeten/bp/ZoneOffset;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/ZoneOffset;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/threeten/bp/OffsetTime;->of(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

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

.method private toEpochNano()J
    .locals 6

    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    iget-object v2, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v2}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x3b9aca00

    mul-long v2, v2, v4

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private with(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0, p2}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lorg/threeten/bp/OffsetTime;

    invoke-direct {v0, p1, p2}, Lorg/threeten/bp/OffsetTime;-><init>(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)V

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lorg/threeten/bp/Ser;

    const/16 v1, 0x42

    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;
    .locals 3

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    iget-object v1, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v1}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/Temporal;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0}, Lorg/threeten/bp/OffsetTime;->getOffset()Lorg/threeten/bp/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/Temporal;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public atDate(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/OffsetDateTime;
    .locals 2

    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    iget-object v1, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-static {p1, v0, v1}, Lorg/threeten/bp/OffsetDateTime;->of(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/threeten/bp/OffsetTime;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/OffsetTime;->compareTo(Lorg/threeten/bp/OffsetTime;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/threeten/bp/OffsetTime;)I
    .locals 4

    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    iget-object v1, p1, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    iget-object p1, p1, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalTime;->compareTo(Lorg/threeten/bp/LocalTime;)I

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0}, Lorg/threeten/bp/OffsetTime;->toEpochNano()J

    move-result-wide v0

    invoke-direct {p1}, Lorg/threeten/bp/OffsetTime;->toEpochNano()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->compareLongs(JJ)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    iget-object p1, p1, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalTime;->compareTo(Lorg/threeten/bp/LocalTime;)I

    move-result v0

    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/threeten/bp/OffsetTime;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lorg/threeten/bp/OffsetTime;

    iget-object v1, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    iget-object v3, p1, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v1, v3}, Lorg/threeten/bp/LocalTime;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    iget-object p1, p1, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v1, p1}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

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
    .locals 1

    const-string v0, "formatter"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lorg/threeten/bp/format/DateTimeFormatter;->format(Lorg/threeten/bp/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public get(Lorg/threeten/bp/temporal/TemporalField;)I
    .locals 0

    invoke-super {p0, p1}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result p1

    return p1
.end method

.method public getHour()I
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalTime;->getHour()I

    move-result v0

    return v0
.end method

.method public getLong(Lorg/threeten/bp/temporal/TemporalField;)J
    .locals 2

    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/threeten/bp/OffsetTime;->getOffset()Lorg/threeten/bp/ZoneOffset;

    move-result-object p1

    invoke-virtual {p1}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalTime;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->getFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinute()I
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalTime;->getMinute()I

    move-result v0

    return v0
.end method

.method public getNano()I
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalTime;->getNano()I

    move-result v0

    return v0
.end method

.method public getOffset()Lorg/threeten/bp/ZoneOffset;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    return-object v0
.end method

.method public getSecond()I
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalTime;->getSecond()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalTime;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v1}, Lorg/threeten/bp/ZoneOffset;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isAfter(Lorg/threeten/bp/OffsetTime;)Z
    .locals 4

    invoke-direct {p0}, Lorg/threeten/bp/OffsetTime;->toEpochNano()J

    move-result-wide v0

    invoke-direct {p1}, Lorg/threeten/bp/OffsetTime;->toEpochNano()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isBefore(Lorg/threeten/bp/OffsetTime;)Z
    .locals 4

    invoke-direct {p0}, Lorg/threeten/bp/OffsetTime;->toEpochNano()J

    move-result-wide v0

    invoke-direct {p1}, Lorg/threeten/bp/OffsetTime;->toEpochNano()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isEqual(Lorg/threeten/bp/OffsetTime;)Z
    .locals 4

    invoke-direct {p0}, Lorg/threeten/bp/OffsetTime;->toEpochNano()J

    move-result-wide v0

    invoke-direct {p1}, Lorg/threeten/bp/OffsetTime;->toEpochNano()J

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

.method public isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z
    .locals 3

    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalField;->isTimeBased()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

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

.method public isSupported(Lorg/threeten/bp/temporal/TemporalUnit;)Z
    .locals 1

    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalUnit;->isTimeBased()Z

    move-result p1

    return p1

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalUnit;->isSupportedBy(Lorg/threeten/bp/temporal/Temporal;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/OffsetTime;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/OffsetTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/OffsetTime;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1, p3}, Lorg/threeten/bp/OffsetTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/OffsetTime;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/OffsetTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/OffsetTime;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/OffsetTime;
    .locals 0

    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAmount;->subtractFrom(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/OffsetTime;

    return-object p1
.end method

.method public bridge synthetic minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/OffsetTime;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/OffsetTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/threeten/bp/OffsetTime;->minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/OffsetTime;

    move-result-object p1

    return-object p1
.end method

.method public minusHours(J)Lorg/threeten/bp/OffsetTime;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalTime;->minusHours(J)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    iget-object p2, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/OffsetTime;->with(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    move-result-object p1

    return-object p1
.end method

.method public minusMinutes(J)Lorg/threeten/bp/OffsetTime;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalTime;->minusMinutes(J)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    iget-object p2, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/OffsetTime;->with(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    move-result-object p1

    return-object p1
.end method

.method public minusNanos(J)Lorg/threeten/bp/OffsetTime;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalTime;->minusNanos(J)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    iget-object p2, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/OffsetTime;->with(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    move-result-object p1

    return-object p1
.end method

.method public minusSeconds(J)Lorg/threeten/bp/OffsetTime;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalTime;->minusSeconds(J)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    iget-object p2, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/OffsetTime;->with(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    move-result-object p1

    return-object p1
.end method

.method public plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/OffsetTime;
    .locals 1

    instance-of v0, p3, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/LocalTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    iget-object p2, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/OffsetTime;->with(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lorg/threeten/bp/temporal/TemporalUnit;->addTo(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/OffsetTime;

    return-object p1
.end method

.method public plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/OffsetTime;
    .locals 0

    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAmount;->addTo(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/OffsetTime;

    return-object p1
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/OffsetTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/OffsetTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/threeten/bp/OffsetTime;->plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/OffsetTime;

    move-result-object p1

    return-object p1
.end method

.method public plusHours(J)Lorg/threeten/bp/OffsetTime;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalTime;->plusHours(J)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    iget-object p2, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/OffsetTime;->with(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    move-result-object p1

    return-object p1
.end method

.method public plusMinutes(J)Lorg/threeten/bp/OffsetTime;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalTime;->plusMinutes(J)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    iget-object p2, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/OffsetTime;->with(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    move-result-object p1

    return-object p1
.end method

.method public plusNanos(J)Lorg/threeten/bp/OffsetTime;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalTime;->plusNanos(J)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    iget-object p2, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/OffsetTime;->with(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    move-result-object p1

    return-object p1
.end method

.method public plusSeconds(J)Lorg/threeten/bp/OffsetTime;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalTime;->plusSeconds(J)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    iget-object p2, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/OffsetTime;->with(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

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

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->precision()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_0

    sget-object p1, Lorg/threeten/bp/temporal/ChronoUnit;->NANOS:Lorg/threeten/bp/temporal/ChronoUnit;

    return-object p1

    :cond_0
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->offset()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_5

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zone()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->localTime()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    return-object p1

    :cond_2
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->chronology()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_4

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->localDate()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_4

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zoneId()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;->query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return-object p1

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lorg/threeten/bp/OffsetTime;->getOffset()Lorg/threeten/bp/ZoneOffset;

    move-result-object p1

    return-object p1
.end method

.method public range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 1

    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalField;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalTime;->range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->rangeRefinedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1
.end method

.method public toLocalTime()Lorg/threeten/bp/LocalTime;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v1}, Lorg/threeten/bp/LocalTime;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v1}, Lorg/threeten/bp/ZoneOffset;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncatedTo(Lorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/OffsetTime;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalTime;->truncatedTo(Lorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, p1, v0}, Lorg/threeten/bp/OffsetTime;->with(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    move-result-object p1

    return-object p1
.end method

.method public until(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/TemporalUnit;)J
    .locals 4

    invoke-static {p1}, Lorg/threeten/bp/OffsetTime;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/OffsetTime;

    move-result-object p1

    instance-of v0, p2, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    invoke-direct {p1}, Lorg/threeten/bp/OffsetTime;->toEpochNano()J

    move-result-wide v0

    invoke-direct {p0}, Lorg/threeten/bp/OffsetTime;->toEpochNano()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-object p1, Lorg/threeten/bp/OffsetTime$2;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

    move-object v2, p2

    check-cast v2, Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v2}, Lorg/threeten/bp/temporal/ChronoUnit;->ordinal()I

    move-result v2

    aget p1, p1, v2

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported unit: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const-wide p1, 0x274a48a78000L

    div-long/2addr v0, p1

    return-wide v0

    :pswitch_1
    const-wide p1, 0x34630b8a000L

    div-long/2addr v0, p1

    return-wide v0

    :pswitch_2
    const-wide p1, 0xdf8475800L

    div-long/2addr v0, p1

    return-wide v0

    :pswitch_3
    const-wide/32 p1, 0x3b9aca00

    div-long/2addr v0, p1

    return-wide v0

    :pswitch_4
    const-wide/32 p1, 0xf4240

    div-long/2addr v0, p1

    return-wide v0

    :pswitch_5
    const-wide/16 p1, 0x3e8

    div-long/2addr v0, p1

    :pswitch_6
    return-wide v0

    :cond_0
    invoke-interface {p2, p0, p1}, Lorg/threeten/bp/temporal/TemporalUnit;->between(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/Temporal;)J

    move-result-wide p1

    return-wide p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/OffsetTime;
    .locals 1

    instance-of v0, p1, Lorg/threeten/bp/LocalTime;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/threeten/bp/LocalTime;

    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, p1, v0}, Lorg/threeten/bp/OffsetTime;->with(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/ZoneOffset;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    check-cast p1, Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, v0, p1}, Lorg/threeten/bp/OffsetTime;->with(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, p1, Lorg/threeten/bp/OffsetTime;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/threeten/bp/OffsetTime;

    return-object p1

    :cond_2
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAdjuster;->adjustInto(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/OffsetTime;

    return-object p1
.end method

.method public with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/OffsetTime;
    .locals 1

    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    check-cast p1, Lorg/threeten/bp/temporal/ChronoField;

    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {p1, p2, p3}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result p1

    invoke-static {p1}, Lorg/threeten/bp/ZoneOffset;->ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/threeten/bp/OffsetTime;->with(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/LocalTime;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    iget-object p2, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/OffsetTime;->with(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/TemporalField;->adjustInto(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/OffsetTime;

    return-object p1
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/threeten/bp/OffsetTime;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/OffsetTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/OffsetTime;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/OffsetTime;

    move-result-object p1

    return-object p1
.end method

.method public withHour(I)Lorg/threeten/bp/OffsetTime;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalTime;->withHour(I)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, p1, v0}, Lorg/threeten/bp/OffsetTime;->with(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    move-result-object p1

    return-object p1
.end method

.method public withMinute(I)Lorg/threeten/bp/OffsetTime;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalTime;->withMinute(I)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, p1, v0}, Lorg/threeten/bp/OffsetTime;->with(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    move-result-object p1

    return-object p1
.end method

.method public withNano(I)Lorg/threeten/bp/OffsetTime;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalTime;->withNano(I)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, p1, v0}, Lorg/threeten/bp/OffsetTime;->with(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    move-result-object p1

    return-object p1
.end method

.method public withOffsetSameInstant(Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;
    .locals 4

    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {p1, v0}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v0

    iget-object v1, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v1}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/threeten/bp/LocalTime;->plusSeconds(J)Lorg/threeten/bp/LocalTime;

    move-result-object v0

    new-instance v1, Lorg/threeten/bp/OffsetTime;

    invoke-direct {v1, v0, p1}, Lorg/threeten/bp/OffsetTime;-><init>(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)V

    return-object v1
.end method

.method public withOffsetSameLocal(Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {p1, v0}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/threeten/bp/OffsetTime;

    iget-object v1, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-direct {v0, v1, p1}, Lorg/threeten/bp/OffsetTime;-><init>(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)V

    :goto_0
    return-object v0
.end method

.method public withSecond(I)Lorg/threeten/bp/OffsetTime;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalTime;->withSecond(I)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, p1, v0}, Lorg/threeten/bp/OffsetTime;->with(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

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

    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalTime;->writeExternal(Ljava/io/DataOutput;)V

    iget-object v0, p0, Lorg/threeten/bp/OffsetTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/ZoneOffset;->writeExternal(Ljava/io/DataOutput;)V

    return-void
.end method
