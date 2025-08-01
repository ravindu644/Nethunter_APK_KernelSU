.class public final Lorg/threeten/bp/LocalTime;
.super Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;
.source "LocalTime.java"

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
        "Lorg/threeten/bp/LocalTime;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final FROM:Lorg/threeten/bp/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "Lorg/threeten/bp/LocalTime;",
            ">;"
        }
    .end annotation
.end field

.field private static final HOURS:[Lorg/threeten/bp/LocalTime;

.field static final HOURS_PER_DAY:I = 0x18

.field public static final MAX:Lorg/threeten/bp/LocalTime;

.field static final MICROS_PER_DAY:J = 0x141dd76000L

.field public static final MIDNIGHT:Lorg/threeten/bp/LocalTime;

.field static final MILLIS_PER_DAY:J = 0x5265c00L

.field public static final MIN:Lorg/threeten/bp/LocalTime;

.field static final MINUTES_PER_DAY:I = 0x5a0

.field static final MINUTES_PER_HOUR:I = 0x3c

.field static final NANOS_PER_DAY:J = 0x4e94914f0000L

.field static final NANOS_PER_HOUR:J = 0x34630b8a000L

.field static final NANOS_PER_MINUTE:J = 0xdf8475800L

.field static final NANOS_PER_SECOND:J = 0x3b9aca00L

.field public static final NOON:Lorg/threeten/bp/LocalTime;

.field static final SECONDS_PER_DAY:I = 0x15180

.field static final SECONDS_PER_HOUR:I = 0xe10

.field static final SECONDS_PER_MINUTE:I = 0x3c

.field private static final serialVersionUID:J = 0x5904a8b626e1a4f1L


# instance fields
.field private final hour:B

.field private final minute:B

.field private final nano:I

.field private final second:B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/threeten/bp/LocalTime$1;

    invoke-direct {v0}, Lorg/threeten/bp/LocalTime$1;-><init>()V

    sput-object v0, Lorg/threeten/bp/LocalTime;->FROM:Lorg/threeten/bp/temporal/TemporalQuery;

    const/16 v0, 0x18

    new-array v0, v0, [Lorg/threeten/bp/LocalTime;

    sput-object v0, Lorg/threeten/bp/LocalTime;->HOURS:[Lorg/threeten/bp/LocalTime;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lorg/threeten/bp/LocalTime;->HOURS:[Lorg/threeten/bp/LocalTime;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    new-instance v3, Lorg/threeten/bp/LocalTime;

    invoke-direct {v3, v1, v0, v0, v0}, Lorg/threeten/bp/LocalTime;-><init>(IIII)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    aget-object v0, v2, v0

    sput-object v0, Lorg/threeten/bp/LocalTime;->MIDNIGHT:Lorg/threeten/bp/LocalTime;

    const/16 v1, 0xc

    aget-object v1, v2, v1

    sput-object v1, Lorg/threeten/bp/LocalTime;->NOON:Lorg/threeten/bp/LocalTime;

    sput-object v0, Lorg/threeten/bp/LocalTime;->MIN:Lorg/threeten/bp/LocalTime;

    new-instance v0, Lorg/threeten/bp/LocalTime;

    const/16 v1, 0x17

    const v2, 0x3b9ac9ff

    const/16 v3, 0x3b

    invoke-direct {v0, v1, v3, v3, v2}, Lorg/threeten/bp/LocalTime;-><init>(IIII)V

    sput-object v0, Lorg/threeten/bp/LocalTime;->MAX:Lorg/threeten/bp/LocalTime;

    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;-><init>()V

    int-to-byte p1, p1

    iput-byte p1, p0, Lorg/threeten/bp/LocalTime;->hour:B

    int-to-byte p1, p2

    iput-byte p1, p0, Lorg/threeten/bp/LocalTime;->minute:B

    int-to-byte p1, p3

    iput-byte p1, p0, Lorg/threeten/bp/LocalTime;->second:B

    iput p4, p0, Lorg/threeten/bp/LocalTime;->nano:I

    return-void
.end method

.method private static create(IIII)Lorg/threeten/bp/LocalTime;
    .locals 1

    or-int v0, p1, p2

    or-int/2addr v0, p3

    if-nez v0, :cond_0

    sget-object p1, Lorg/threeten/bp/LocalTime;->HOURS:[Lorg/threeten/bp/LocalTime;

    aget-object p0, p1, p0

    return-object p0

    :cond_0
    new-instance v0, Lorg/threeten/bp/LocalTime;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/threeten/bp/LocalTime;-><init>(IIII)V

    return-object v0
.end method

.method public static from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/LocalTime;
    .locals 3

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->localTime()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/threeten/bp/temporal/TemporalAccessor;->query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/LocalTime;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to obtain LocalTime from TemporalAccessor: "

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

.method private get0(Lorg/threeten/bp/temporal/TemporalField;)I
    .locals 4

    sget-object v0, Lorg/threeten/bp/LocalTime$2;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v1}, Lorg/threeten/bp/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "Field too large for an int: "

    const/16 v2, 0xc

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported field: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-byte p1, p0, Lorg/threeten/bp/LocalTime;->hour:B

    div-int/2addr p1, v2

    return p1

    :pswitch_1
    iget-byte p1, p0, Lorg/threeten/bp/LocalTime;->hour:B

    if-nez p1, :cond_0

    const/16 p1, 0x18

    :cond_0
    return p1

    :pswitch_2
    iget-byte p1, p0, Lorg/threeten/bp/LocalTime;->hour:B

    return p1

    :pswitch_3
    iget-byte p1, p0, Lorg/threeten/bp/LocalTime;->hour:B

    rem-int/2addr p1, v2

    rem-int/lit8 v0, p1, 0xc

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, p1

    :goto_0
    return v2

    :pswitch_4
    iget-byte p1, p0, Lorg/threeten/bp/LocalTime;->hour:B

    rem-int/2addr p1, v2

    return p1

    :pswitch_5
    iget-byte p1, p0, Lorg/threeten/bp/LocalTime;->hour:B

    mul-int/lit8 p1, p1, 0x3c

    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->minute:B

    add-int/2addr p1, v0

    return p1

    :pswitch_6
    iget-byte p1, p0, Lorg/threeten/bp/LocalTime;->minute:B

    return p1

    :pswitch_7
    invoke-virtual {p0}, Lorg/threeten/bp/LocalTime;->toSecondOfDay()I

    move-result p1

    return p1

    :pswitch_8
    iget-byte p1, p0, Lorg/threeten/bp/LocalTime;->second:B

    return p1

    :pswitch_9
    invoke-virtual {p0}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    long-to-int p1, v0

    return p1

    :pswitch_a
    iget p1, p0, Lorg/threeten/bp/LocalTime;->nano:I

    const v0, 0xf4240

    div-int/2addr p1, v0

    return p1

    :pswitch_b
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_c
    iget p1, p0, Lorg/threeten/bp/LocalTime;->nano:I

    div-int/lit16 p1, p1, 0x3e8

    return p1

    :pswitch_d
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_e
    iget p1, p0, Lorg/threeten/bp/LocalTime;->nano:I

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static now()Lorg/threeten/bp/LocalTime;
    .locals 1

    invoke-static {}, Lorg/threeten/bp/Clock;->systemDefaultZone()Lorg/threeten/bp/Clock;

    move-result-object v0

    invoke-static {v0}, Lorg/threeten/bp/LocalTime;->now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public static now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/LocalTime;
    .locals 7

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

    invoke-virtual {v0}, Lorg/threeten/bp/Instant;->getEpochSecond()J

    move-result-wide v1

    const-wide/32 v3, 0x15180

    rem-long/2addr v1, v3

    invoke-virtual {p0}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result p0

    int-to-long v5, p0

    add-long/2addr v1, v5

    rem-long/2addr v1, v3

    const-wide/16 v5, 0x0

    cmp-long p0, v1, v5

    if-gez p0, :cond_0

    add-long/2addr v1, v3

    :cond_0
    invoke-virtual {v0}, Lorg/threeten/bp/Instant;->getNano()I

    move-result p0

    invoke-static {v1, v2, p0}, Lorg/threeten/bp/LocalTime;->ofSecondOfDay(JI)Lorg/threeten/bp/LocalTime;

    move-result-object p0

    return-object p0
.end method

.method public static now(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/LocalTime;
    .locals 0

    invoke-static {p0}, Lorg/threeten/bp/Clock;->system(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/Clock;

    move-result-object p0

    invoke-static {p0}, Lorg/threeten/bp/LocalTime;->now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/LocalTime;

    move-result-object p0

    return-object p0
.end method

.method public static of(II)Lorg/threeten/bp/LocalTime;
    .locals 3

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->HOUR_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    if-nez p1, :cond_0

    sget-object p1, Lorg/threeten/bp/LocalTime;->HOURS:[Lorg/threeten/bp/LocalTime;

    aget-object p0, p1, p0

    return-object p0

    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->MINUTE_OF_HOUR:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    new-instance v0, Lorg/threeten/bp/LocalTime;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, v1}, Lorg/threeten/bp/LocalTime;-><init>(IIII)V

    return-object v0
.end method

.method public static of(III)Lorg/threeten/bp/LocalTime;
    .locals 3

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->HOUR_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    or-int v0, p1, p2

    if-nez v0, :cond_0

    sget-object p1, Lorg/threeten/bp/LocalTime;->HOURS:[Lorg/threeten/bp/LocalTime;

    aget-object p0, p1, p0

    return-object p0

    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->MINUTE_OF_HOUR:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->SECOND_OF_MINUTE:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    new-instance v0, Lorg/threeten/bp/LocalTime;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/threeten/bp/LocalTime;-><init>(IIII)V

    return-object v0
.end method

.method public static of(IIII)Lorg/threeten/bp/LocalTime;
    .locals 3

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->HOUR_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->MINUTE_OF_HOUR:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->SECOND_OF_MINUTE:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    invoke-static {p0, p1, p2, p3}, Lorg/threeten/bp/LocalTime;->create(IIII)Lorg/threeten/bp/LocalTime;

    move-result-object p0

    return-object p0
.end method

.method public static ofNanoOfDay(J)Lorg/threeten/bp/LocalTime;
    .locals 8

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0, p0, p1}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    const-wide v0, 0x34630b8a000L

    div-long v2, p0, v0

    long-to-int v3, v2

    int-to-long v4, v3

    mul-long v4, v4, v0

    sub-long/2addr p0, v4

    const-wide v0, 0xdf8475800L

    div-long v4, p0, v0

    long-to-int v2, v4

    int-to-long v4, v2

    mul-long v4, v4, v0

    sub-long/2addr p0, v4

    const-wide/32 v0, 0x3b9aca00

    div-long v4, p0, v0

    long-to-int v5, v4

    int-to-long v6, v5

    mul-long v6, v6, v0

    sub-long/2addr p0, v6

    long-to-int p1, p0

    invoke-static {v3, v2, v5, p1}, Lorg/threeten/bp/LocalTime;->create(IIII)Lorg/threeten/bp/LocalTime;

    move-result-object p0

    return-object p0
.end method

.method public static ofSecondOfDay(J)Lorg/threeten/bp/LocalTime;
    .locals 4

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->SECOND_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0, p0, p1}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    const-wide/16 v0, 0xe10

    div-long v0, p0, v0

    long-to-int v1, v0

    mul-int/lit16 v0, v1, 0xe10

    int-to-long v2, v0

    sub-long/2addr p0, v2

    const-wide/16 v2, 0x3c

    div-long v2, p0, v2

    long-to-int v0, v2

    mul-int/lit8 v2, v0, 0x3c

    int-to-long v2, v2

    sub-long/2addr p0, v2

    long-to-int p1, p0

    const/4 p0, 0x0

    invoke-static {v1, v0, p1, p0}, Lorg/threeten/bp/LocalTime;->create(IIII)Lorg/threeten/bp/LocalTime;

    move-result-object p0

    return-object p0
.end method

.method static ofSecondOfDay(JI)Lorg/threeten/bp/LocalTime;
    .locals 4

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->SECOND_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0, p0, p1}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    const-wide/16 v0, 0xe10

    div-long v0, p0, v0

    long-to-int v1, v0

    mul-int/lit16 v0, v1, 0xe10

    int-to-long v2, v0

    sub-long/2addr p0, v2

    const-wide/16 v2, 0x3c

    div-long v2, p0, v2

    long-to-int v0, v2

    mul-int/lit8 v2, v0, 0x3c

    int-to-long v2, v2

    sub-long/2addr p0, v2

    long-to-int p1, p0

    invoke-static {v1, v0, p1, p2}, Lorg/threeten/bp/LocalTime;->create(IIII)Lorg/threeten/bp/LocalTime;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/CharSequence;)Lorg/threeten/bp/LocalTime;
    .locals 1

    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_LOCAL_TIME:Lorg/threeten/bp/format/DateTimeFormatter;

    invoke-static {p0, v0}, Lorg/threeten/bp/LocalTime;->parse(Ljava/lang/CharSequence;Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/LocalTime;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/CharSequence;Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/LocalTime;
    .locals 1

    const-string v0, "formatter"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lorg/threeten/bp/LocalTime;->FROM:Lorg/threeten/bp/temporal/TemporalQuery;

    invoke-virtual {p1, p0, v0}, Lorg/threeten/bp/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/threeten/bp/LocalTime;

    return-object p0
.end method

.method static readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/LocalTime;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    not-int v0, v0

    const/4 p0, 0x0

    :goto_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v2

    if-gez v2, :cond_1

    not-int p0, v2

    const/4 v2, 0x0

    move v1, p0

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v3

    if-gez v3, :cond_2

    not-int p0, v3

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    move p0, v3

    move v4, v2

    move v2, v1

    move v1, v4

    :goto_1
    invoke-static {v0, v1, p0, v2}, Lorg/threeten/bp/LocalTime;->of(IIII)Lorg/threeten/bp/LocalTime;

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

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;
    .locals 3

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/Temporal;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public atDate(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/LocalDateTime;
    .locals 0

    invoke-static {p1, p0}, Lorg/threeten/bp/LocalDateTime;->of(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public atOffset(Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;
    .locals 0

    invoke-static {p0, p1}, Lorg/threeten/bp/OffsetTime;->of(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/threeten/bp/LocalTime;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalTime;->compareTo(Lorg/threeten/bp/LocalTime;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/threeten/bp/LocalTime;)I
    .locals 2

    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->hour:B

    iget-byte v1, p1, Lorg/threeten/bp/LocalTime;->hour:B

    invoke-static {v0, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->compareInts(II)I

    move-result v0

    if-nez v0, :cond_0

    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->minute:B

    iget-byte v1, p1, Lorg/threeten/bp/LocalTime;->minute:B

    invoke-static {v0, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->compareInts(II)I

    move-result v0

    if-nez v0, :cond_0

    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->second:B

    iget-byte v1, p1, Lorg/threeten/bp/LocalTime;->second:B

    invoke-static {v0, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->compareInts(II)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/threeten/bp/LocalTime;->nano:I

    iget p1, p1, Lorg/threeten/bp/LocalTime;->nano:I

    invoke-static {v0, p1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->compareInts(II)I

    move-result v0

    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/threeten/bp/LocalTime;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lorg/threeten/bp/LocalTime;

    iget-byte v1, p0, Lorg/threeten/bp/LocalTime;->hour:B

    iget-byte v3, p1, Lorg/threeten/bp/LocalTime;->hour:B

    if-ne v1, v3, :cond_1

    iget-byte v1, p0, Lorg/threeten/bp/LocalTime;->minute:B

    iget-byte v3, p1, Lorg/threeten/bp/LocalTime;->minute:B

    if-ne v1, v3, :cond_1

    iget-byte v1, p0, Lorg/threeten/bp/LocalTime;->second:B

    iget-byte v3, p1, Lorg/threeten/bp/LocalTime;->second:B

    if-ne v1, v3, :cond_1

    iget v1, p0, Lorg/threeten/bp/LocalTime;->nano:I

    iget p1, p1, Lorg/threeten/bp/LocalTime;->nano:I

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
    .locals 1

    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/threeten/bp/LocalTime;->get0(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result p1

    return p1
.end method

.method public getHour()I
    .locals 1

    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->hour:B

    return v0
.end method

.method public getLong(Lorg/threeten/bp/temporal/TemporalField;)J
    .locals 4

    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_2

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    return-wide v0

    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->MICRO_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0

    :cond_1
    invoke-direct {p0, p1}, Lorg/threeten/bp/LocalTime;->get0(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_2
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->getFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinute()I
    .locals 1

    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->minute:B

    return v0
.end method

.method public getNano()I
    .locals 1

    iget v0, p0, Lorg/threeten/bp/LocalTime;->nano:I

    return v0
.end method

.method public getSecond()I
    .locals 1

    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->second:B

    return v0
.end method

.method public hashCode()I
    .locals 4

    invoke-virtual {p0}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public isAfter(Lorg/threeten/bp/LocalTime;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalTime;->compareTo(Lorg/threeten/bp/LocalTime;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isBefore(Lorg/threeten/bp/LocalTime;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalTime;->compareTo(Lorg/threeten/bp/LocalTime;)I

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
    .locals 1

    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalField;->isTimeBased()Z

    move-result p1

    return p1

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->isSupportedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
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

.method public minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalTime;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/LocalTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1, p3}, Lorg/threeten/bp/LocalTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/LocalTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/LocalTime;
    .locals 0

    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAmount;->subtractFrom(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/LocalTime;

    return-object p1
.end method

.method public bridge synthetic minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/LocalTime;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalTime;->minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public minusHours(J)Lorg/threeten/bp/LocalTime;
    .locals 2

    const-wide/16 v0, 0x18

    rem-long/2addr p1, v0

    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/LocalTime;->plusHours(J)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public minusMinutes(J)Lorg/threeten/bp/LocalTime;
    .locals 2

    const-wide/16 v0, 0x5a0

    rem-long/2addr p1, v0

    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/LocalTime;->plusMinutes(J)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public minusNanos(J)Lorg/threeten/bp/LocalTime;
    .locals 2

    const-wide v0, 0x4e94914f0000L

    rem-long/2addr p1, v0

    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/LocalTime;->plusNanos(J)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public minusSeconds(J)Lorg/threeten/bp/LocalTime;
    .locals 2

    const-wide/32 v0, 0x15180

    rem-long/2addr p1, v0

    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/LocalTime;->plusSeconds(J)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalTime;
    .locals 2

    instance-of v0, p3, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lorg/threeten/bp/temporal/ChronoUnit;

    sget-object v1, Lorg/threeten/bp/LocalTime$2;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ChronoUnit;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported unit: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const-wide/16 v0, 0x2

    rem-long/2addr p1, v0

    const-wide/16 v0, 0xc

    mul-long p1, p1, v0

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/LocalTime;->plusHours(J)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/LocalTime;->plusHours(J)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/LocalTime;->plusMinutes(J)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/LocalTime;->plusSeconds(J)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    return-object p1

    :pswitch_4
    const-wide/32 v0, 0x5265c00

    rem-long/2addr p1, v0

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/LocalTime;->plusNanos(J)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    return-object p1

    :pswitch_5
    const-wide v0, 0x141dd76000L

    rem-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/LocalTime;->plusNanos(J)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/LocalTime;->plusNanos(J)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lorg/threeten/bp/temporal/TemporalUnit;->addTo(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/LocalTime;

    return-object p1

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

.method public plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/LocalTime;
    .locals 0

    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAmount;->addTo(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/LocalTime;

    return-object p1
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/LocalTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalTime;->plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public plusHours(J)Lorg/threeten/bp/LocalTime;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    const-wide/16 v0, 0x18

    rem-long/2addr p1, v0

    long-to-int p2, p1

    iget-byte p1, p0, Lorg/threeten/bp/LocalTime;->hour:B

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x18

    rem-int/lit8 p2, p2, 0x18

    iget-byte p1, p0, Lorg/threeten/bp/LocalTime;->minute:B

    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->second:B

    iget v1, p0, Lorg/threeten/bp/LocalTime;->nano:I

    invoke-static {p2, p1, v0, v1}, Lorg/threeten/bp/LocalTime;->create(IIII)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public plusMinutes(J)Lorg/threeten/bp/LocalTime;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->hour:B

    mul-int/lit8 v0, v0, 0x3c

    iget-byte v1, p0, Lorg/threeten/bp/LocalTime;->minute:B

    add-int/2addr v0, v1

    const-wide/16 v1, 0x5a0

    rem-long/2addr p1, v1

    long-to-int p2, p1

    add-int/2addr p2, v0

    add-int/lit16 p2, p2, 0x5a0

    rem-int/lit16 p2, p2, 0x5a0

    if-ne v0, p2, :cond_1

    return-object p0

    :cond_1
    div-int/lit8 p1, p2, 0x3c

    rem-int/lit8 p2, p2, 0x3c

    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->second:B

    iget v1, p0, Lorg/threeten/bp/LocalTime;->nano:I

    invoke-static {p1, p2, v0, v1}, Lorg/threeten/bp/LocalTime;->create(IIII)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public plusNanos(J)Lorg/threeten/bp/LocalTime;
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    const-wide v2, 0x4e94914f0000L

    rem-long/2addr p1, v2

    add-long/2addr p1, v0

    add-long/2addr p1, v2

    rem-long/2addr p1, v2

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    return-object p0

    :cond_1
    const-wide v0, 0x34630b8a000L

    div-long v0, p1, v0

    long-to-int v1, v0

    const-wide v2, 0xdf8475800L

    div-long v2, p1, v2

    const-wide/16 v4, 0x3c

    rem-long/2addr v2, v4

    long-to-int v0, v2

    const-wide/32 v2, 0x3b9aca00

    div-long v6, p1, v2

    rem-long/2addr v6, v4

    long-to-int v4, v6

    rem-long/2addr p1, v2

    long-to-int p2, p1

    invoke-static {v1, v0, v4, p2}, Lorg/threeten/bp/LocalTime;->create(IIII)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public plusSeconds(J)Lorg/threeten/bp/LocalTime;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->hour:B

    mul-int/lit16 v0, v0, 0xe10

    iget-byte v1, p0, Lorg/threeten/bp/LocalTime;->minute:B

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    iget-byte v1, p0, Lorg/threeten/bp/LocalTime;->second:B

    add-int/2addr v0, v1

    const-wide/32 v1, 0x15180

    rem-long/2addr p1, v1

    long-to-int p2, p1

    add-int/2addr p2, v0

    const p1, 0x15180

    add-int/2addr p2, p1

    rem-int/2addr p2, p1

    if-ne v0, p2, :cond_1

    return-object p0

    :cond_1
    div-int/lit16 p1, p2, 0xe10

    div-int/lit8 v0, p2, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    rem-int/lit8 p2, p2, 0x3c

    iget v1, p0, Lorg/threeten/bp/LocalTime;->nano:I

    invoke-static {p1, v0, p2, v1}, Lorg/threeten/bp/LocalTime;->create(IIII)Lorg/threeten/bp/LocalTime;

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
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->localTime()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_1

    return-object p0

    :cond_1
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->chronology()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_3

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zoneId()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_3

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zone()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_3

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->offset()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_3

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->localDate()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalQuery;->queryFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 0

    invoke-super {p0, p1}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;->range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1
.end method

.method public toNanoOfDay()J
    .locals 6

    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->hour:B

    int-to-long v0, v0

    const-wide v2, 0x34630b8a000L

    mul-long v0, v0, v2

    iget-byte v2, p0, Lorg/threeten/bp/LocalTime;->minute:B

    int-to-long v2, v2

    const-wide v4, 0xdf8475800L

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    iget-byte v2, p0, Lorg/threeten/bp/LocalTime;->second:B

    int-to-long v2, v2

    const-wide/32 v4, 0x3b9aca00

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    iget v2, p0, Lorg/threeten/bp/LocalTime;->nano:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public toSecondOfDay()I
    .locals 2

    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->hour:B

    mul-int/lit16 v0, v0, 0xe10

    iget-byte v1, p0, Lorg/threeten/bp/LocalTime;->minute:B

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    iget-byte v1, p0, Lorg/threeten/bp/LocalTime;->second:B

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-byte v1, p0, Lorg/threeten/bp/LocalTime;->hour:B

    iget-byte v2, p0, Lorg/threeten/bp/LocalTime;->minute:B

    iget-byte v3, p0, Lorg/threeten/bp/LocalTime;->second:B

    iget v4, p0, Lorg/threeten/bp/LocalTime;->nano:I

    const/16 v5, 0xa

    if-ge v1, v5, :cond_0

    const-string v6, "0"

    goto :goto_0

    :cond_0
    const-string v6, ""

    :goto_0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":0"

    const-string v6, ":"

    if-ge v2, v5, :cond_1

    move-object v7, v1

    goto :goto_1

    :cond_1
    move-object v7, v6

    :goto_1
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-gtz v3, :cond_2

    if-lez v4, :cond_6

    :cond_2
    if-ge v3, v5, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, v6

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-lez v4, :cond_6

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v1, 0xf4240

    rem-int v2, v4, v1

    const/4 v3, 0x1

    if-nez v2, :cond_4

    div-int/2addr v4, v1

    add-int/lit16 v4, v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    rem-int/lit16 v2, v4, 0x3e8

    if-nez v2, :cond_5

    div-int/lit16 v4, v4, 0x3e8

    add-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    const v1, 0x3b9aca00

    add-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncatedTo(Lorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalTime;
    .locals 6

    sget-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->NANOS:Lorg/threeten/bp/temporal/ChronoUnit;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalUnit;->getDuration()Lorg/threeten/bp/Duration;

    move-result-object p1

    invoke-virtual {p1}, Lorg/threeten/bp/Duration;->getSeconds()J

    move-result-wide v0

    const-wide/32 v2, 0x15180

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    invoke-virtual {p1}, Lorg/threeten/bp/Duration;->toNanos()J

    move-result-wide v0

    const-wide v2, 0x4e94914f0000L

    rem-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v2

    div-long/2addr v2, v0

    mul-long v2, v2, v0

    invoke-static {v2, v3}, Lorg/threeten/bp/LocalTime;->ofNanoOfDay(J)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Lorg/threeten/bp/DateTimeException;

    const-string v0, "Unit must divide into a standard day without remainder"

    invoke-direct {p1, v0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/threeten/bp/DateTimeException;

    const-string v0, "Unit is too large to be used for truncation"

    invoke-direct {p1, v0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public until(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/TemporalUnit;)J
    .locals 4

    invoke-static {p1}, Lorg/threeten/bp/LocalTime;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    instance-of v0, p2, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-object p1, Lorg/threeten/bp/LocalTime$2;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

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

.method public with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/LocalTime;
    .locals 1

    instance-of v0, p1, Lorg/threeten/bp/LocalTime;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/threeten/bp/LocalTime;

    return-object p1

    :cond_0
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAdjuster;->adjustInto(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/LocalTime;

    return-object p1
.end method

.method public with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/LocalTime;
    .locals 5

    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0, p2, p3}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    sget-object v1, Lorg/threeten/bp/LocalTime$2;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ChronoField;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0xc

    packed-switch v0, :pswitch_data_0

    new-instance p2, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported field: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    iget-byte p1, p0, Lorg/threeten/bp/LocalTime;->hour:B

    div-int/lit8 p1, p1, 0xc

    int-to-long v0, p1

    sub-long/2addr p2, v0

    mul-long p2, p2, v3

    invoke-virtual {p0, p2, p3}, Lorg/threeten/bp/LocalTime;->plusHours(J)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    return-object p1

    :pswitch_1
    const-wide/16 v3, 0x18

    cmp-long p1, p2, v3

    if-nez p1, :cond_0

    move-wide p2, v1

    :cond_0
    long-to-int p1, p2

    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalTime;->withHour(I)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    return-object p1

    :pswitch_2
    long-to-int p1, p2

    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalTime;->withHour(I)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    return-object p1

    :pswitch_3
    cmp-long p1, p2, v3

    if-nez p1, :cond_1

    move-wide p2, v1

    :cond_1
    iget-byte p1, p0, Lorg/threeten/bp/LocalTime;->hour:B

    rem-int/lit8 p1, p1, 0xc

    int-to-long v0, p1

    sub-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Lorg/threeten/bp/LocalTime;->plusHours(J)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    return-object p1

    :pswitch_4
    iget-byte p1, p0, Lorg/threeten/bp/LocalTime;->hour:B

    rem-int/lit8 p1, p1, 0xc

    int-to-long v0, p1

    sub-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Lorg/threeten/bp/LocalTime;->plusHours(J)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    return-object p1

    :pswitch_5
    iget-byte p1, p0, Lorg/threeten/bp/LocalTime;->hour:B

    mul-int/lit8 p1, p1, 0x3c

    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->minute:B

    add-int/2addr p1, v0

    int-to-long v0, p1

    sub-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Lorg/threeten/bp/LocalTime;->plusMinutes(J)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    return-object p1

    :pswitch_6
    long-to-int p1, p2

    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalTime;->withMinute(I)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-virtual {p0}, Lorg/threeten/bp/LocalTime;->toSecondOfDay()I

    move-result p1

    int-to-long v0, p1

    sub-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Lorg/threeten/bp/LocalTime;->plusSeconds(J)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    return-object p1

    :pswitch_8
    long-to-int p1, p2

    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalTime;->withSecond(I)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    return-object p1

    :pswitch_9
    const-wide/32 v0, 0xf4240

    mul-long p2, p2, v0

    invoke-static {p2, p3}, Lorg/threeten/bp/LocalTime;->ofNanoOfDay(J)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    return-object p1

    :pswitch_a
    long-to-int p1, p2

    const p2, 0xf4240

    mul-int p1, p1, p2

    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalTime;->withNano(I)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    return-object p1

    :pswitch_b
    const-wide/16 v0, 0x3e8

    mul-long p2, p2, v0

    invoke-static {p2, p3}, Lorg/threeten/bp/LocalTime;->ofNanoOfDay(J)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    return-object p1

    :pswitch_c
    long-to-int p1, p2

    mul-int/lit16 p1, p1, 0x3e8

    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalTime;->withNano(I)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    return-object p1

    :pswitch_d
    invoke-static {p2, p3}, Lorg/threeten/bp/LocalTime;->ofNanoOfDay(J)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    return-object p1

    :pswitch_e
    long-to-int p1, p2

    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalTime;->withNano(I)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/TemporalField;->adjustInto(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/LocalTime;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalTime;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/LocalTime;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public withHour(I)Lorg/threeten/bp/LocalTime;
    .locals 3

    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->hour:B

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->HOUR_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->minute:B

    iget-byte v1, p0, Lorg/threeten/bp/LocalTime;->second:B

    iget v2, p0, Lorg/threeten/bp/LocalTime;->nano:I

    invoke-static {p1, v0, v1, v2}, Lorg/threeten/bp/LocalTime;->create(IIII)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public withMinute(I)Lorg/threeten/bp/LocalTime;
    .locals 3

    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->minute:B

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->MINUTE_OF_HOUR:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->hour:B

    iget-byte v1, p0, Lorg/threeten/bp/LocalTime;->second:B

    iget v2, p0, Lorg/threeten/bp/LocalTime;->nano:I

    invoke-static {v0, p1, v1, v2}, Lorg/threeten/bp/LocalTime;->create(IIII)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public withNano(I)Lorg/threeten/bp/LocalTime;
    .locals 3

    iget v0, p0, Lorg/threeten/bp/LocalTime;->nano:I

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->hour:B

    iget-byte v1, p0, Lorg/threeten/bp/LocalTime;->minute:B

    iget-byte v2, p0, Lorg/threeten/bp/LocalTime;->second:B

    invoke-static {v0, v1, v2, p1}, Lorg/threeten/bp/LocalTime;->create(IIII)Lorg/threeten/bp/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public withSecond(I)Lorg/threeten/bp/LocalTime;
    .locals 3

    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->second:B

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->SECOND_OF_MINUTE:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->hour:B

    iget-byte v1, p0, Lorg/threeten/bp/LocalTime;->minute:B

    iget v2, p0, Lorg/threeten/bp/LocalTime;->nano:I

    invoke-static {v0, v1, p1, v2}, Lorg/threeten/bp/LocalTime;->create(IIII)Lorg/threeten/bp/LocalTime;

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

    iget v0, p0, Lorg/threeten/bp/LocalTime;->nano:I

    if-nez v0, :cond_2

    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->second:B

    if-nez v0, :cond_1

    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->minute:B

    if-nez v0, :cond_0

    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->hour:B

    not-int v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_0

    :cond_0
    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->hour:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->minute:B

    not-int v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_0

    :cond_1
    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->hour:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->minute:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->second:B

    not-int v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_0

    :cond_2
    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->hour:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->minute:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->second:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget v0, p0, Lorg/threeten/bp/LocalTime;->nano:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    :goto_0
    return-void
.end method
