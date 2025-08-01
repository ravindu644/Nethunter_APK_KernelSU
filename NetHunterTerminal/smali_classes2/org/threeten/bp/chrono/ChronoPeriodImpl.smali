.class final Lorg/threeten/bp/chrono/ChronoPeriodImpl;
.super Lorg/threeten/bp/chrono/ChronoPeriod;
.source "ChronoPeriodImpl.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x402c2826a5L


# instance fields
.field private final chronology:Lorg/threeten/bp/chrono/Chronology;

.field private final days:I

.field private final months:I

.field private final years:I


# direct methods
.method public constructor <init>(Lorg/threeten/bp/chrono/Chronology;III)V
    .locals 0

    invoke-direct {p0}, Lorg/threeten/bp/chrono/ChronoPeriod;-><init>()V

    iput-object p1, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->chronology:Lorg/threeten/bp/chrono/Chronology;

    iput p2, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->years:I

    iput p3, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->months:I

    iput p4, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->days:I

    return-void
.end method


# virtual methods
.method public addTo(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;
    .locals 3

    const-string v0, "temporal"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->chronology()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/Temporal;->query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/Chronology;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->chronology:Lorg/threeten/bp/chrono/Chronology;

    invoke-virtual {v1, v0}, Lorg/threeten/bp/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid chronology, required: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->chronology:Lorg/threeten/bp/chrono/Chronology;

    invoke-virtual {v2}, Lorg/threeten/bp/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", but was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget v0, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->years:I

    if-eqz v0, :cond_2

    int-to-long v0, v0

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->YEARS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/Temporal;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    :cond_2
    iget v0, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->months:I

    if-eqz v0, :cond_3

    int-to-long v0, v0

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/Temporal;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    :cond_3
    iget v0, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->days:I

    if-eqz v0, :cond_4

    int-to-long v0, v0

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/Temporal;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    :cond_4
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/threeten/bp/chrono/ChronoPeriodImpl;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lorg/threeten/bp/chrono/ChronoPeriodImpl;

    iget v1, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->years:I

    iget v3, p1, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->years:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->months:I

    iget v3, p1, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->months:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->days:I

    iget v3, p1, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->days:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->chronology:Lorg/threeten/bp/chrono/Chronology;

    iget-object p1, p1, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->chronology:Lorg/threeten/bp/chrono/Chronology;

    invoke-virtual {v1, p1}, Lorg/threeten/bp/chrono/Chronology;->equals(Ljava/lang/Object;)Z

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

.method public get(Lorg/threeten/bp/temporal/TemporalUnit;)J
    .locals 3

    sget-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->YEARS:Lorg/threeten/bp/temporal/ChronoUnit;

    if-ne p1, v0, :cond_0

    iget p1, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->years:I

    :goto_0
    int-to-long v0, p1

    return-wide v0

    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    if-ne p1, v0, :cond_1

    iget p1, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->months:I

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    if-ne p1, v0, :cond_2

    iget p1, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->days:I

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported unit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChronology()Lorg/threeten/bp/chrono/Chronology;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->chronology:Lorg/threeten/bp/chrono/Chronology;

    return-object v0
.end method

.method public getUnits()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/threeten/bp/temporal/TemporalUnit;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/threeten/bp/temporal/TemporalUnit;

    const/4 v1, 0x0

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->YEARS:Lorg/threeten/bp/temporal/ChronoUnit;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->chronology:Lorg/threeten/bp/chrono/Chronology;

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/Chronology;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->years:I

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->months:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->days:I

    add-int/2addr v0, v1

    return v0
.end method

.method public minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/ChronoPeriod;
    .locals 5

    instance-of v0, p1, Lorg/threeten/bp/chrono/ChronoPeriodImpl;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v1

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/threeten/bp/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Lorg/threeten/bp/chrono/ChronoPeriodImpl;

    iget-object v1, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->chronology:Lorg/threeten/bp/chrono/Chronology;

    iget v2, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->years:I

    iget v3, v0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->years:I

    invoke-static {v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(II)I

    move-result v2

    iget v3, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->months:I

    iget v4, v0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->months:I

    invoke-static {v3, v4}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(II)I

    move-result v3

    iget v4, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->days:I

    iget v0, v0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->days:I

    invoke-static {v4, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(II)I

    move-result v0

    invoke-direct {p1, v1, v2, v3, v0}, Lorg/threeten/bp/chrono/ChronoPeriodImpl;-><init>(Lorg/threeten/bp/chrono/Chronology;III)V

    return-object p1

    :cond_0
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to subtract amount: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public multipliedBy(I)Lorg/threeten/bp/chrono/ChronoPeriod;
    .locals 5

    new-instance v0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;

    iget-object v1, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->chronology:Lorg/threeten/bp/chrono/Chronology;

    iget v2, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->years:I

    invoke-static {v2, p1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(II)I

    move-result v2

    iget v3, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->months:I

    invoke-static {v3, p1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(II)I

    move-result v3

    iget v4, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->days:I

    invoke-static {v4, p1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(II)I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/threeten/bp/chrono/ChronoPeriodImpl;-><init>(Lorg/threeten/bp/chrono/Chronology;III)V

    return-object v0
.end method

.method public normalized()Lorg/threeten/bp/chrono/ChronoPeriod;
    .locals 6

    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->chronology:Lorg/threeten/bp/chrono/Chronology;

    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/Chronology;->range(Lorg/threeten/bp/temporal/ChronoField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ValueRange;->isFixed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->chronology:Lorg/threeten/bp/chrono/Chronology;

    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/Chronology;->range(Lorg/threeten/bp/temporal/ChronoField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ValueRange;->getMaximum()J

    move-result-wide v0

    iget-object v2, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->chronology:Lorg/threeten/bp/chrono/Chronology;

    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/chrono/Chronology;->range(Lorg/threeten/bp/temporal/ChronoField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/temporal/ValueRange;->getMinimum()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget v2, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->years:I

    int-to-long v2, v2

    mul-long v2, v2, v0

    iget v4, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->months:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    div-long v4, v2, v0

    invoke-static {v4, v5}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeToInt(J)I

    move-result v4

    rem-long/2addr v2, v0

    invoke-static {v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeToInt(J)I

    move-result v0

    new-instance v1, Lorg/threeten/bp/chrono/ChronoPeriodImpl;

    iget-object v2, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->chronology:Lorg/threeten/bp/chrono/Chronology;

    iget v3, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->days:I

    invoke-direct {v1, v2, v4, v0, v3}, Lorg/threeten/bp/chrono/ChronoPeriodImpl;-><init>(Lorg/threeten/bp/chrono/Chronology;III)V

    return-object v1

    :cond_0
    return-object p0
.end method

.method public plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/ChronoPeriod;
    .locals 5

    instance-of v0, p1, Lorg/threeten/bp/chrono/ChronoPeriodImpl;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v1

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/threeten/bp/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Lorg/threeten/bp/chrono/ChronoPeriodImpl;

    iget-object v1, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->chronology:Lorg/threeten/bp/chrono/Chronology;

    iget v2, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->years:I

    iget v3, v0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->years:I

    invoke-static {v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(II)I

    move-result v2

    iget v3, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->months:I

    iget v4, v0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->months:I

    invoke-static {v3, v4}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(II)I

    move-result v3

    iget v4, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->days:I

    iget v0, v0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->days:I

    invoke-static {v4, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(II)I

    move-result v0

    invoke-direct {p1, v1, v2, v3, v0}, Lorg/threeten/bp/chrono/ChronoPeriodImpl;-><init>(Lorg/threeten/bp/chrono/Chronology;III)V

    return-object p1

    :cond_0
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to add amount: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public subtractFrom(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;
    .locals 3

    const-string v0, "temporal"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->chronology()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/Temporal;->query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/Chronology;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->chronology:Lorg/threeten/bp/chrono/Chronology;

    invoke-virtual {v1, v0}, Lorg/threeten/bp/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid chronology, required: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->chronology:Lorg/threeten/bp/chrono/Chronology;

    invoke-virtual {v2}, Lorg/threeten/bp/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", but was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget v0, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->years:I

    if-eqz v0, :cond_2

    int-to-long v0, v0

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->YEARS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/Temporal;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    :cond_2
    iget v0, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->months:I

    if-eqz v0, :cond_3

    int-to-long v0, v0

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/Temporal;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    :cond_3
    iget v0, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->days:I

    if-eqz v0, :cond_4

    int-to-long v0, v0

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/Temporal;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    :cond_4
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->chronology:Lorg/threeten/bp/chrono/Chronology;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " P0D"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->chronology:Lorg/threeten/bp/chrono/Chronology;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " P"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->years:I

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    iget v1, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->months:I

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    iget v1, p0, Lorg/threeten/bp/chrono/ChronoPeriodImpl;->days:I

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
