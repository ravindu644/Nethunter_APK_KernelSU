.class public abstract Lorg/joda/time/base/AbstractDuration;
.super Ljava/lang/Object;
.source "AbstractDuration.java"

# interfaces
.implements Lorg/joda/time/ReadableDuration;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/joda/time/ReadableDuration;

    invoke-virtual {p0, p1}, Lorg/joda/time/base/AbstractDuration;->compareTo(Lorg/joda/time/ReadableDuration;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/joda/time/ReadableDuration;)I
    .locals 4

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDuration;->getMillis()J

    move-result-wide v0

    invoke-interface {p1}, Lorg/joda/time/ReadableDuration;->getMillis()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/joda/time/ReadableDuration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/joda/time/ReadableDuration;

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDuration;->getMillis()J

    move-result-wide v3

    invoke-interface {p1}, Lorg/joda/time/ReadableDuration;->getMillis()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDuration;->getMillis()J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public isEqual(Lorg/joda/time/ReadableDuration;)Z
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lorg/joda/time/Duration;->ZERO:Lorg/joda/time/Duration;

    :cond_0
    invoke-virtual {p0, p1}, Lorg/joda/time/base/AbstractDuration;->compareTo(Lorg/joda/time/ReadableDuration;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isLongerThan(Lorg/joda/time/ReadableDuration;)Z
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lorg/joda/time/Duration;->ZERO:Lorg/joda/time/Duration;

    :cond_0
    invoke-virtual {p0, p1}, Lorg/joda/time/base/AbstractDuration;->compareTo(Lorg/joda/time/ReadableDuration;)I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isShorterThan(Lorg/joda/time/ReadableDuration;)Z
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lorg/joda/time/Duration;->ZERO:Lorg/joda/time/Duration;

    :cond_0
    invoke-virtual {p0, p1}, Lorg/joda/time/base/AbstractDuration;->compareTo(Lorg/joda/time/ReadableDuration;)I

    move-result p1

    if-gez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toDuration()Lorg/joda/time/Duration;
    .locals 3

    new-instance v0, Lorg/joda/time/Duration;

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDuration;->getMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/joda/time/Duration;-><init>(J)V

    return-object v0
.end method

.method public toPeriod()Lorg/joda/time/Period;
    .locals 3

    new-instance v0, Lorg/joda/time/Period;

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDuration;->getMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/joda/time/Period;-><init>(J)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9
    .annotation runtime Lorg/joda/convert/ToString;
    .end annotation

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDuration;->getMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "PT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v2, v0, v1}, Lorg/joda/time/format/FormatUtils;->appendUnpaddedInteger(Ljava/lang/StringBuffer;J)V

    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-eqz v3, :cond_1

    const/4 v5, 0x7

    goto :goto_2

    :cond_1
    const/4 v5, 0x6

    :goto_2
    const/4 v6, 0x3

    if-ge v4, v5, :cond_3

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    const/4 v6, 0x2

    :goto_3
    const-string v4, "0"

    invoke-virtual {v2, v6, v4}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    const-wide/16 v3, 0x3e8

    div-long v7, v0, v3

    mul-long v7, v7, v3

    cmp-long v3, v7, v0

    if-nez v3, :cond_4

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    sub-int/2addr v0, v6

    const-string v1, "."

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    :goto_4
    const/16 v0, 0x53

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
