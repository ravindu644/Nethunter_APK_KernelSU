.class final Lkotlinx/coroutines/flow/StartedWhileSubscribed;
.super Ljava/lang/Object;
.source "SharingStarted.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/SharingStarted;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSharingStarted.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharingStarted.kt\nkotlinx/coroutines/flow/StartedWhileSubscribed\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,209:1\n1#2:210\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\u001c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0016J\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\u0008\u0010\u0010\u001a\u00020\u000bH\u0016J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/StartedWhileSubscribed;",
        "Lkotlinx/coroutines/flow/SharingStarted;",
        "stopTimeout",
        "",
        "replayExpiration",
        "(JJ)V",
        "command",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lkotlinx/coroutines/flow/SharingCommand;",
        "subscriptionCount",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final replayExpiration:J

.field private final stopTimeout:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lkotlinx/coroutines/flow/StartedWhileSubscribed;->stopTimeout:J

    iput-wide p3, p0, Lkotlinx/coroutines/flow/StartedWhileSubscribed;->replayExpiration:J

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v5, " ms) cannot be negative"

    if-eqz v4, :cond_3

    cmp-long p1, p3, v2

    if-ltz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "replayExpiration("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "stopTimeout("

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method public static final synthetic access$getReplayExpiration$p(Lkotlinx/coroutines/flow/StartedWhileSubscribed;)J
    .locals 2

    iget-wide v0, p0, Lkotlinx/coroutines/flow/StartedWhileSubscribed;->replayExpiration:J

    return-wide v0
.end method

.method public static final synthetic access$getStopTimeout$p(Lkotlinx/coroutines/flow/StartedWhileSubscribed;)J
    .locals 2

    iget-wide v0, p0, Lkotlinx/coroutines/flow/StartedWhileSubscribed;->stopTimeout:J

    return-wide v0
.end method


# virtual methods
.method public command(Lkotlinx/coroutines/flow/StateFlow;)Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lkotlinx/coroutines/flow/SharingCommand;",
            ">;"
        }
    .end annotation

    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    new-instance v0, Lkotlinx/coroutines/flow/StartedWhileSubscribed$command$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlinx/coroutines/flow/StartedWhileSubscribed$command$1;-><init>(Lkotlinx/coroutines/flow/StartedWhileSubscribed;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance v0, Lkotlinx/coroutines/flow/StartedWhileSubscribed$command$2;

    invoke-direct {v0, v1}, Lkotlinx/coroutines/flow/StartedWhileSubscribed$command$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->dropWhile(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lkotlinx/coroutines/flow/StartedWhileSubscribed;->stopTimeout:J

    check-cast p1, Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    iget-wide v2, p1, Lkotlinx/coroutines/flow/StartedWhileSubscribed;->stopTimeout:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lkotlinx/coroutines/flow/StartedWhileSubscribed;->replayExpiration:J

    iget-wide v2, p1, Lkotlinx/coroutines/flow/StartedWhileSubscribed;->replayExpiration:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lkotlinx/coroutines/flow/StartedWhileSubscribed;->stopTimeout:J

    invoke-static {v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lkotlinx/coroutines/flow/StartedWhileSubscribed;->replayExpiration:J

    invoke-static {v1, v2}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->createListBuilder(I)Ljava/util/List;

    move-result-object v0

    iget-wide v1, p0, Lkotlinx/coroutines/flow/StartedWhileSubscribed;->stopTimeout:J

    const-wide/16 v3, 0x0

    const-string v5, "ms"

    cmp-long v6, v1, v3

    if-lez v6, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stopTimeout="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lkotlinx/coroutines/flow/StartedWhileSubscribed;->stopTimeout:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-wide v1, p0, Lkotlinx/coroutines/flow/StartedWhileSubscribed;->replayExpiration:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v6, v1, v3

    if-gez v6, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "replayExpiration="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lkotlinx/coroutines/flow/StartedWhileSubscribed;->replayExpiration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SharingStarted.WhileSubscribed("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3f

    const/4 v11, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
