.class public final Lkotlin/time/TestTimeSource;
.super Lkotlin/time/AbstractLongTimeSource;
.source "TimeSources.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimeSources.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TimeSources.kt\nkotlin/time/TestTimeSource\n+ 2 longSaturatedMath.kt\nkotlin/time/LongSaturatedMathKt\n*L\n1#1,199:1\n80#2:200\n80#2:201\n*S KotlinDebug\n*F\n+ 1 TimeSources.kt\nkotlin/time/TestTimeSource\n*L\n173#1:200\n180#1:201\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001b\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0086\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000c\u0010\nJ\u0008\u0010\r\u001a\u00020\u0004H\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000e"
    }
    d2 = {
        "Lkotlin/time/TestTimeSource;",
        "Lkotlin/time/AbstractLongTimeSource;",
        "()V",
        "reading",
        "",
        "overflow",
        "",
        "duration",
        "Lkotlin/time/Duration;",
        "overflow-LRDsOJo",
        "(J)V",
        "plusAssign",
        "plusAssign-LRDsOJo",
        "read",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private reading:J


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    invoke-direct {p0, v0}, Lkotlin/time/AbstractLongTimeSource;-><init>(Lkotlin/time/DurationUnit;)V

    invoke-virtual {p0}, Lkotlin/time/TestTimeSource;->markNow()Lkotlin/time/ComparableTimeMark;

    return-void
.end method

.method private final overflow-LRDsOJo(J)V
    .locals 4

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TestTimeSource will overflow if its reading "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lkotlin/time/TestTimeSource;->reading:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/time/TestTimeSource;->getUnit()Lkotlin/time/DurationUnit;

    move-result-object v2

    invoke-static {v2}, Lkotlin/time/DurationUnitKt;->shortName(Lkotlin/time/DurationUnit;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is advanced by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final plusAssign-LRDsOJo(J)V
    .locals 11

    invoke-virtual {p0}, Lkotlin/time/TestTimeSource;->getUnit()Lkotlin/time/DurationUnit;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    or-long/2addr v4, v2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v10, v4, v8

    if-nez v10, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_2

    iget-wide v2, p0, Lkotlin/time/TestTimeSource;->reading:J

    add-long v4, v2, v0

    xor-long/2addr v0, v2

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-ltz v8, :cond_1

    xor-long v0, v2, v4

    cmp-long v2, v0, v6

    if-gez v2, :cond_1

    invoke-direct {p0, p1, p2}, Lkotlin/time/TestTimeSource;->overflow-LRDsOJo(J)V

    :cond_1
    iput-wide v4, p0, Lkotlin/time/TestTimeSource;->reading:J

    goto :goto_2

    :cond_2
    const/4 v0, 0x2

    invoke-static {p1, p2, v0}, Lkotlin/time/Duration;->div-UwyO8pc(JI)J

    move-result-wide v0

    invoke-virtual {p0}, Lkotlin/time/TestTimeSource;->getUnit()Lkotlin/time/DurationUnit;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    move-result-wide v4

    sub-long/2addr v4, v2

    or-long/2addr v2, v4

    cmp-long v4, v2, v8

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_4

    iget-wide v2, p0, Lkotlin/time/TestTimeSource;->reading:J

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lkotlin/time/TestTimeSource;->plusAssign-LRDsOJo(J)V

    invoke-static {p1, p2, v0, v1}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lkotlin/time/TestTimeSource;->plusAssign-LRDsOJo(J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    iput-wide v2, p0, Lkotlin/time/TestTimeSource;->reading:J

    throw p1

    :cond_4
    invoke-direct {p0, p1, p2}, Lkotlin/time/TestTimeSource;->overflow-LRDsOJo(J)V

    :goto_2
    return-void
.end method

.method protected read()J
    .locals 2

    iget-wide v0, p0, Lkotlin/time/TestTimeSource;->reading:J

    return-wide v0
.end method
