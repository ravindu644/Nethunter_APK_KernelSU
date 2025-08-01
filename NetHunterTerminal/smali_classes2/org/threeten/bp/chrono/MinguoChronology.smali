.class public final Lorg/threeten/bp/chrono/MinguoChronology;
.super Lorg/threeten/bp/chrono/Chronology;
.source "MinguoChronology.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final INSTANCE:Lorg/threeten/bp/chrono/MinguoChronology;

.field static final YEARS_DIFFERENCE:I = 0x777

.field private static final serialVersionUID:J = 0xe6dfcf4568e9fbbL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/threeten/bp/chrono/MinguoChronology;

    invoke-direct {v0}, Lorg/threeten/bp/chrono/MinguoChronology;-><init>()V

    sput-object v0, Lorg/threeten/bp/chrono/MinguoChronology;->INSTANCE:Lorg/threeten/bp/chrono/MinguoChronology;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/threeten/bp/chrono/Chronology;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/threeten/bp/chrono/MinguoChronology;->INSTANCE:Lorg/threeten/bp/chrono/MinguoChronology;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic date(III)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/MinguoChronology;->date(III)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic date(Lorg/threeten/bp/chrono/Era;III)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/threeten/bp/chrono/MinguoChronology;->date(Lorg/threeten/bp/chrono/Era;III)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic date(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/MinguoChronology;->date(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public date(III)Lorg/threeten/bp/chrono/MinguoDate;
    .locals 1

    new-instance v0, Lorg/threeten/bp/chrono/MinguoDate;

    add-int/lit16 p1, p1, 0x777

    invoke-static {p1, p2, p3}, Lorg/threeten/bp/LocalDate;->of(III)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/threeten/bp/chrono/MinguoDate;-><init>(Lorg/threeten/bp/LocalDate;)V

    return-object v0
.end method

.method public date(Lorg/threeten/bp/chrono/Era;III)Lorg/threeten/bp/chrono/MinguoDate;
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lorg/threeten/bp/chrono/Chronology;->date(Lorg/threeten/bp/chrono/Era;III)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/chrono/MinguoDate;

    return-object p1
.end method

.method public date(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/MinguoDate;
    .locals 1

    instance-of v0, p1, Lorg/threeten/bp/chrono/MinguoDate;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/threeten/bp/chrono/MinguoDate;

    return-object p1

    :cond_0
    new-instance v0, Lorg/threeten/bp/chrono/MinguoDate;

    invoke-static {p1}, Lorg/threeten/bp/LocalDate;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/threeten/bp/chrono/MinguoDate;-><init>(Lorg/threeten/bp/LocalDate;)V

    return-object v0
.end method

.method public bridge synthetic dateEpochDay(J)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/MinguoChronology;->dateEpochDay(J)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public dateEpochDay(J)Lorg/threeten/bp/chrono/MinguoDate;
    .locals 1

    new-instance v0, Lorg/threeten/bp/chrono/MinguoDate;

    invoke-static {p1, p2}, Lorg/threeten/bp/LocalDate;->ofEpochDay(J)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/threeten/bp/chrono/MinguoDate;-><init>(Lorg/threeten/bp/LocalDate;)V

    return-object v0
.end method

.method public bridge synthetic dateNow()Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/MinguoChronology;->dateNow()Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateNow(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/MinguoChronology;->dateNow(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dateNow(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/MinguoChronology;->dateNow(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public dateNow()Lorg/threeten/bp/chrono/MinguoDate;
    .locals 1

    invoke-super {p0}, Lorg/threeten/bp/chrono/Chronology;->dateNow()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/MinguoDate;

    return-object v0
.end method

.method public dateNow(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/chrono/MinguoDate;
    .locals 1

    const-string v0, "clock"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/Chronology;->dateNow(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/chrono/MinguoDate;

    return-object p1
.end method

.method public dateNow(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/MinguoDate;
    .locals 0

    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/Chronology;->dateNow(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/chrono/MinguoDate;

    return-object p1
.end method

.method public bridge synthetic dateYearDay(II)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/MinguoChronology;->dateYearDay(II)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dateYearDay(Lorg/threeten/bp/chrono/Era;II)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/MinguoChronology;->dateYearDay(Lorg/threeten/bp/chrono/Era;II)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public dateYearDay(II)Lorg/threeten/bp/chrono/MinguoDate;
    .locals 1

    new-instance v0, Lorg/threeten/bp/chrono/MinguoDate;

    add-int/lit16 p1, p1, 0x777

    invoke-static {p1, p2}, Lorg/threeten/bp/LocalDate;->ofYearDay(II)Lorg/threeten/bp/LocalDate;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/threeten/bp/chrono/MinguoDate;-><init>(Lorg/threeten/bp/LocalDate;)V

    return-object v0
.end method

.method public dateYearDay(Lorg/threeten/bp/chrono/Era;II)Lorg/threeten/bp/chrono/MinguoDate;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/Chronology;->dateYearDay(Lorg/threeten/bp/chrono/Era;II)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/chrono/MinguoDate;

    return-object p1
.end method

.method public bridge synthetic eraOf(I)Lorg/threeten/bp/chrono/Era;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/MinguoChronology;->eraOf(I)Lorg/threeten/bp/chrono/MinguoEra;

    move-result-object p1

    return-object p1
.end method

.method public eraOf(I)Lorg/threeten/bp/chrono/MinguoEra;
    .locals 0

    invoke-static {p1}, Lorg/threeten/bp/chrono/MinguoEra;->of(I)Lorg/threeten/bp/chrono/MinguoEra;

    move-result-object p1

    return-object p1
.end method

.method public eras()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/threeten/bp/chrono/Era;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/threeten/bp/chrono/MinguoEra;->values()[Lorg/threeten/bp/chrono/MinguoEra;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarType()Ljava/lang/String;
    .locals 1

    const-string v0, "roc"

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "Minguo"

    return-object v0
.end method

.method public isLeapYear(J)Z
    .locals 3

    sget-object v0, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    const-wide/16 v1, 0x777

    add-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/chrono/IsoChronology;->isLeapYear(J)Z

    move-result p1

    return p1
.end method

.method public localDateTime(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/TemporalAccessor;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTime<",
            "Lorg/threeten/bp/chrono/MinguoDate;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/Chronology;->localDateTime(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public prolepticYear(Lorg/threeten/bp/chrono/Era;I)I
    .locals 1

    instance-of v0, p1, Lorg/threeten/bp/chrono/MinguoEra;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/threeten/bp/chrono/MinguoEra;->ROC:Lorg/threeten/bp/chrono/MinguoEra;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    rsub-int/lit8 p2, p2, 0x1

    :goto_0
    return p2

    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    const-string p2, "Era must be MinguoEra"

    invoke-direct {p1, p2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public range(Lorg/threeten/bp/temporal/ChronoField;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 10

    sget-object v0, Lorg/threeten/bp/chrono/MinguoChronology$1;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    invoke-virtual {p1}, Lorg/threeten/bp/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    const-wide/16 v2, 0x777

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/threeten/bp/temporal/ChronoField;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p1}, Lorg/threeten/bp/temporal/ChronoField;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    invoke-virtual {p1}, Lorg/threeten/bp/temporal/ValueRange;->getMinimum()J

    move-result-wide v0

    sub-long/2addr v0, v2

    invoke-virtual {p1}, Lorg/threeten/bp/temporal/ValueRange;->getMaximum()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {v0, v1, v4, v5}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object p1, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p1}, Lorg/threeten/bp/temporal/ChronoField;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    const-wide/16 v4, 0x1

    invoke-virtual {p1}, Lorg/threeten/bp/temporal/ValueRange;->getMaximum()J

    move-result-wide v0

    sub-long v6, v0, v2

    invoke-virtual {p1}, Lorg/threeten/bp/temporal/ValueRange;->getMinimum()J

    move-result-wide v0

    neg-long v0, v0

    const-wide/16 v8, 0x1

    add-long/2addr v0, v8

    add-long v8, v0, v2

    invoke-static/range {v4 .. v9}, Lorg/threeten/bp/temporal/ValueRange;->of(JJJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    :cond_2
    sget-object p1, Lorg/threeten/bp/temporal/ChronoField;->PROLEPTIC_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p1}, Lorg/threeten/bp/temporal/ChronoField;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    invoke-virtual {p1}, Lorg/threeten/bp/temporal/ValueRange;->getMinimum()J

    move-result-wide v0

    const-wide/16 v2, 0x5994

    sub-long/2addr v0, v2

    invoke-virtual {p1}, Lorg/threeten/bp/temporal/ValueRange;->getMaximum()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {v0, v1, v4, v5}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic resolveDate(Ljava/util/Map;Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/MinguoChronology;->resolveDate(Ljava/util/Map;Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public resolveDate(Ljava/util/Map;Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/chrono/MinguoDate;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/threeten/bp/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/threeten/bp/format/ResolverStyle;",
            ")",
            "Lorg/threeten/bp/chrono/MinguoDate;"
        }
    .end annotation

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->EPOCH_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p2, Lorg/threeten/bp/temporal/ChronoField;->EPOCH_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/MinguoChronology;->dateEpochDay(J)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->PROLEPTIC_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    sget-object v2, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    if-eq p2, v2, :cond_1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->PROLEPTIC_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    :cond_1
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/16 v5, 0xc

    invoke-static {v3, v4, v5}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorMod(JI)I

    move-result v3

    add-int/2addr v3, v1

    int-to-long v3, v3

    invoke-virtual {p0, p1, v2, v3, v4}, Lorg/threeten/bp/chrono/MinguoChronology;->updateResolveMap(Ljava/util/Map;Lorg/threeten/bp/temporal/ChronoField;J)V

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0xc

    invoke-static {v3, v4, v5, v6}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorDiv(JJ)J

    move-result-wide v3

    invoke-virtual {p0, p1, v2, v3, v4}, Lorg/threeten/bp/chrono/MinguoChronology;->updateResolveMap(Ljava/util/Map;Lorg/threeten/bp/temporal/ChronoField;J)V

    :cond_2
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->YEAR_OF_ERA:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const-wide/16 v2, 0x1

    if-eqz v0, :cond_c

    sget-object v4, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    if-eq p2, v4, :cond_3

    sget-object v4, Lorg/threeten/bp/temporal/ChronoField;->YEAR_OF_ERA:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    :cond_3
    sget-object v4, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    const-wide/16 v5, 0x0

    if-nez v4, :cond_9

    sget-object v4, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    sget-object v7, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    if-ne p2, v7, :cond_6

    if-eqz v4, :cond_5

    sget-object v7, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v4, v8, v5

    if-lez v4, :cond_4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v4

    :goto_0
    invoke-virtual {p0, p1, v7, v4, v5}, Lorg/threeten/bp/chrono/MinguoChronology;->updateResolveMap(Ljava/util/Map;Lorg/threeten/bp/temporal/ChronoField;J)V

    goto/16 :goto_3

    :cond_5
    sget-object v4, Lorg/threeten/bp/temporal/ChronoField;->YEAR_OF_ERA:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_6
    sget-object v7, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v4, v8, v5

    if-lez v4, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v4

    goto :goto_2

    :cond_8
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_2
    invoke-virtual {p0, p1, v7, v4, v5}, Lorg/threeten/bp/chrono/MinguoChronology;->updateResolveMap(Ljava/util/Map;Lorg/threeten/bp/temporal/ChronoField;J)V

    goto :goto_3

    :cond_9
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v9, v7, v2

    if-nez v9, :cond_a

    sget-object v4, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p0, p1, v4, v5, v6}, Lorg/threeten/bp/chrono/MinguoChronology;->updateResolveMap(Ljava/util/Map;Lorg/threeten/bp/temporal/ChronoField;J)V

    goto :goto_3

    :cond_a
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v9, v7, v5

    if-nez v9, :cond_b

    sget-object v4, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v2, v3, v5, v6}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v5

    invoke-virtual {p0, p1, v4, v5, v6}, Lorg/threeten/bp/chrono/MinguoChronology;->updateResolveMap(Ljava/util/Map;Lorg/threeten/bp/temporal/ChronoField;J)V

    goto :goto_3

    :cond_b
    new-instance p1, Lorg/threeten/bp/DateTimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid value for era: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v4, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    :cond_d
    :goto_3
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "Strict mode rejected date parsed to a different month"

    if-eqz v0, :cond_18

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v4, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v0

    sget-object v4, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    if-ne p2, v4, :cond_e

    sget-object p2, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5, v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v4

    sget-object p2, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2, v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide p1

    invoke-virtual {p0, v0, v1, v1}, Lorg/threeten/bp/chrono/MinguoChronology;->date(III)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lorg/threeten/bp/chrono/MinguoDate;->plusMonths(J)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/chrono/MinguoDate;->plusDays(J)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object p1

    return-object p1

    :cond_e
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, v2}, Lorg/threeten/bp/chrono/MinguoChronology;->range(Lorg/threeten/bp/temporal/ChronoField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v5, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v2, v3, v4, v5}, Lorg/threeten/bp/temporal/ValueRange;->checkValidIntValue(JLorg/threeten/bp/temporal/TemporalField;)I

    move-result v2

    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, v3}, Lorg/threeten/bp/chrono/MinguoChronology;->range(Lorg/threeten/bp/temporal/ChronoField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v3

    sget-object v4, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object p1, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v3, v4, v5, p1}, Lorg/threeten/bp/temporal/ValueRange;->checkValidIntValue(JLorg/threeten/bp/temporal/TemporalField;)I

    move-result p1

    sget-object v3, Lorg/threeten/bp/format/ResolverStyle;->SMART:Lorg/threeten/bp/format/ResolverStyle;

    if-ne p2, v3, :cond_f

    const/16 p2, 0x1c

    if-le p1, p2, :cond_f

    invoke-virtual {p0, v0, v2, v1}, Lorg/threeten/bp/chrono/MinguoChronology;->date(III)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object p2

    invoke-virtual {p2}, Lorg/threeten/bp/chrono/MinguoDate;->lengthOfMonth()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_f
    invoke-virtual {p0, v0, v2, p1}, Lorg/threeten/bp/chrono/MinguoChronology;->date(III)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object p1

    return-object p1

    :cond_10
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v5, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v0

    sget-object v5, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    if-ne p2, v5, :cond_11

    sget-object p2, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5, v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v4

    sget-object p2, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7, v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v6

    sget-object p2, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2, v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide p1

    invoke-virtual {p0, v0, v1, v1}, Lorg/threeten/bp/chrono/MinguoChronology;->date(III)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v0, v4, v5, v1}, Lorg/threeten/bp/chrono/MinguoDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v0, v6, v7, v1}, Lorg/threeten/bp/chrono/MinguoDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v0, p1, p2, v1}, Lorg/threeten/bp/chrono/MinguoDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object p1

    return-object p1

    :cond_11
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v2

    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v5, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v3

    sget-object v5, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v6, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result p1

    invoke-virtual {p0, v0, v2, v1}, Lorg/threeten/bp/chrono/MinguoChronology;->date(III)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v0

    sub-int/2addr v3, v1

    mul-int/lit8 v3, v3, 0x7

    sub-int/2addr p1, v1

    add-int/2addr v3, p1

    int-to-long v5, v3

    sget-object p1, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v0, v5, v6, p1}, Lorg/threeten/bp/chrono/MinguoDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object p1

    sget-object v0, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    if-ne p2, v0, :cond_13

    sget-object p2, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p1, p2}, Lorg/threeten/bp/chrono/MinguoDate;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result p2

    if-ne p2, v2, :cond_12

    goto :goto_4

    :cond_12
    new-instance p1, Lorg/threeten/bp/DateTimeException;

    invoke-direct {p1, v4}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    :goto_4
    return-object p1

    :cond_14
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v5, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v0

    sget-object v5, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    if-ne p2, v5, :cond_15

    sget-object p2, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5, v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v4

    sget-object p2, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7, v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v6

    sget-object p2, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2, v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide p1

    invoke-virtual {p0, v0, v1, v1}, Lorg/threeten/bp/chrono/MinguoChronology;->date(III)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v0, v4, v5, v1}, Lorg/threeten/bp/chrono/MinguoDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v0, v6, v7, v1}, Lorg/threeten/bp/chrono/MinguoDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v0, p1, p2, v1}, Lorg/threeten/bp/chrono/MinguoDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object p1

    return-object p1

    :cond_15
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v2

    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v5, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v3

    sget-object v5, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v6, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result p1

    invoke-virtual {p0, v0, v2, v1}, Lorg/threeten/bp/chrono/MinguoChronology;->date(III)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v0

    sub-int/2addr v3, v1

    int-to-long v5, v3

    sget-object v1, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v0, v5, v6, v1}, Lorg/threeten/bp/chrono/MinguoDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v0

    invoke-static {p1}, Lorg/threeten/bp/DayOfWeek;->of(I)Lorg/threeten/bp/DayOfWeek;

    move-result-object p1

    invoke-static {p1}, Lorg/threeten/bp/temporal/TemporalAdjusters;->nextOrSame(Lorg/threeten/bp/DayOfWeek;)Lorg/threeten/bp/temporal/TemporalAdjuster;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/MinguoDate;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object p1

    sget-object v0, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    if-ne p2, v0, :cond_17

    sget-object p2, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p1, p2}, Lorg/threeten/bp/chrono/MinguoDate;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result p2

    if-ne p2, v2, :cond_16

    goto :goto_5

    :cond_16
    new-instance p1, Lorg/threeten/bp/DateTimeException;

    invoke-direct {p1, v4}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    :goto_5
    return-object p1

    :cond_18
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v4, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v0

    sget-object v4, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    if-ne p2, v4, :cond_19

    sget-object p2, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2, v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide p1

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/chrono/MinguoChronology;->dateYearDay(II)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/chrono/MinguoDate;->plusDays(J)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object p1

    return-object p1

    :cond_19
    sget-object p2, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/threeten/bp/chrono/MinguoChronology;->dateYearDay(II)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object p1

    return-object p1

    :cond_1a
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v4, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v0

    sget-object v4, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    if-ne p2, v4, :cond_1b

    sget-object p2, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5, v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v4

    sget-object p2, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2, v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide p1

    invoke-virtual {p0, v0, v1, v1}, Lorg/threeten/bp/chrono/MinguoChronology;->date(III)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v0, v4, v5, v1}, Lorg/threeten/bp/chrono/MinguoDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v0, p1, p2, v1}, Lorg/threeten/bp/chrono/MinguoDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object p1

    return-object p1

    :cond_1b
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v2

    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v4, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result p1

    invoke-virtual {p0, v0, v1, v1}, Lorg/threeten/bp/chrono/MinguoChronology;->date(III)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v3

    sub-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x7

    sub-int/2addr p1, v1

    add-int/2addr v2, p1

    int-to-long v1, v2

    invoke-virtual {v3, v1, v2}, Lorg/threeten/bp/chrono/MinguoDate;->plusDays(J)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object p1

    sget-object v1, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    if-ne p2, v1, :cond_1d

    sget-object p2, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p1, p2}, Lorg/threeten/bp/chrono/MinguoDate;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result p2

    if-ne p2, v0, :cond_1c

    goto :goto_6

    :cond_1c
    new-instance p1, Lorg/threeten/bp/DateTimeException;

    const-string p2, "Strict mode rejected date parsed to a different year"

    invoke-direct {p1, p2}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1d
    :goto_6
    return-object p1

    :cond_1e
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v5, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v0

    sget-object v5, Lorg/threeten/bp/format/ResolverStyle;->LENIENT:Lorg/threeten/bp/format/ResolverStyle;

    if-ne p2, v5, :cond_1f

    sget-object p2, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5, v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v4

    sget-object p2, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2, v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide p1

    invoke-virtual {p0, v0, v1, v1}, Lorg/threeten/bp/chrono/MinguoChronology;->date(III)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v0, v4, v5, v1}, Lorg/threeten/bp/chrono/MinguoDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v0, p1, p2, v1}, Lorg/threeten/bp/chrono/MinguoDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object p1

    return-object p1

    :cond_1f
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v2

    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v5, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result p1

    invoke-virtual {p0, v0, v1, v1}, Lorg/threeten/bp/chrono/MinguoChronology;->date(III)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v3

    sub-int/2addr v2, v1

    int-to-long v1, v2

    sget-object v5, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v3, v1, v2, v5}, Lorg/threeten/bp/chrono/MinguoDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object v1

    invoke-static {p1}, Lorg/threeten/bp/DayOfWeek;->of(I)Lorg/threeten/bp/DayOfWeek;

    move-result-object p1

    invoke-static {p1}, Lorg/threeten/bp/temporal/TemporalAdjusters;->nextOrSame(Lorg/threeten/bp/DayOfWeek;)Lorg/threeten/bp/temporal/TemporalAdjuster;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/threeten/bp/chrono/MinguoDate;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/MinguoDate;

    move-result-object p1

    sget-object v1, Lorg/threeten/bp/format/ResolverStyle;->STRICT:Lorg/threeten/bp/format/ResolverStyle;

    if-ne p2, v1, :cond_21

    sget-object p2, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p1, p2}, Lorg/threeten/bp/chrono/MinguoDate;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result p2

    if-ne p2, v0, :cond_20

    goto :goto_7

    :cond_20
    new-instance p1, Lorg/threeten/bp/DateTimeException;

    invoke-direct {p1, v4}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_21
    :goto_7
    return-object p1

    :cond_22
    const/4 p1, 0x0

    return-object p1
.end method

.method public zonedDateTime(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/Instant;",
            "Lorg/threeten/bp/ZoneId;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoZonedDateTime<",
            "Lorg/threeten/bp/chrono/MinguoDate;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lorg/threeten/bp/chrono/Chronology;->zonedDateTime(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public zonedDateTime(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/TemporalAccessor;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoZonedDateTime<",
            "Lorg/threeten/bp/chrono/MinguoDate;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/Chronology;->zonedDateTime(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;

    move-result-object p1

    return-object p1
.end method
