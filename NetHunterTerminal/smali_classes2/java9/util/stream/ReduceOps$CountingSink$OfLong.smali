.class final Ljava9/util/stream/ReduceOps$CountingSink$OfLong;
.super Ljava9/util/stream/ReduceOps$CountingSink;
.source "ReduceOps.java"

# interfaces
.implements Ljava9/util/stream/Sink$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/ReduceOps$CountingSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava9/util/stream/ReduceOps$CountingSink<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava9/util/stream/Sink$OfLong;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava9/util/stream/ReduceOps$CountingSink;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 2

    iget-wide p1, p0, Ljava9/util/stream/ReduceOps$CountingSink$OfLong;->count:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Ljava9/util/stream/ReduceOps$CountingSink$OfLong;->count:J

    return-void
.end method

.method public synthetic accept(Ljava/lang/Long;)V
    .locals 0

    invoke-static {p0, p1}, Ljava9/util/stream/Sink$OfLong$-CC;->$default$accept(Ljava9/util/stream/Sink$OfLong;Ljava/lang/Long;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Ljava9/util/stream/Sink$OfLong$-CC;->$default$accept(Ljava9/util/stream/Sink$OfLong;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic andThen(Ljava9/util/function/LongConsumer;)Ljava9/util/function/LongConsumer;
    .locals 0

    invoke-static {p0, p1}, Ljava9/util/function/LongConsumer$-CC;->$default$andThen(Ljava9/util/function/LongConsumer;Ljava9/util/function/LongConsumer;)Ljava9/util/function/LongConsumer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic combine(Ljava9/util/stream/ReduceOps$AccumulatingSink;)V
    .locals 0

    check-cast p1, Ljava9/util/stream/ReduceOps$CountingSink;

    invoke-super {p0, p1}, Ljava9/util/stream/ReduceOps$CountingSink;->combine(Ljava9/util/stream/ReduceOps$CountingSink;)V

    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Ljava9/util/stream/ReduceOps$CountingSink;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
