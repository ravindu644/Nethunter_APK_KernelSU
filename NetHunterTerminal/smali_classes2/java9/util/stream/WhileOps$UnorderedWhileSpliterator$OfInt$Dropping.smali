.class final Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;
.super Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;
.source "WhileOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Dropping"
.end annotation


# direct methods
.method constructor <init>(Ljava9/util/Spliterator$OfInt;Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;-><init>(Ljava9/util/Spliterator$OfInt;Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;)V

    return-void
.end method

.method constructor <init>(Ljava9/util/Spliterator$OfInt;ZLjava9/util/function/IntPredicate;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;-><init>(Ljava9/util/Spliterator$OfInt;ZLjava9/util/function/IntPredicate;)V

    return-void
.end method


# virtual methods
.method makeSpliterator(Ljava9/util/Spliterator$OfInt;)Ljava9/util/Spliterator$OfInt;
    .locals 1

    new-instance v0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;

    invoke-direct {v0, p1, p0}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;-><init>(Ljava9/util/Spliterator$OfInt;Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;)V

    return-object v0
.end method

.method bridge synthetic makeSpliterator(Ljava9/util/Spliterator;)Ljava9/util/Spliterator;
    .locals 0

    check-cast p1, Ljava9/util/Spliterator$OfInt;

    invoke-virtual {p0, p1}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;->makeSpliterator(Ljava9/util/Spliterator$OfInt;)Ljava9/util/Spliterator$OfInt;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava9/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;->tryAdvance(Ljava9/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava9/util/function/IntConsumer;)Z
    .locals 5

    iget-boolean v0, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;->takeOrDrop:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;->takeOrDrop:Z

    :goto_0
    iget-object v1, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;->s:Ljava9/util/Spliterator;

    check-cast v1, Ljava9/util/Spliterator$OfInt;

    invoke-interface {v1, p0}, Ljava9/util/Spliterator$OfInt;->tryAdvance(Ljava9/util/function/IntConsumer;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;->checkCancelOnCount()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;->p:Ljava9/util/function/IntPredicate;

    iget v4, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;->t:I

    invoke-interface {v3, v4}, Ljava9/util/function/IntPredicate;->test(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    iget v0, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;->t:I

    invoke-interface {p1, v0}, Ljava9/util/function/IntConsumer;->accept(I)V

    :cond_2
    return v1

    :cond_3
    iget-object v0, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;->s:Ljava9/util/Spliterator;

    check-cast v0, Ljava9/util/Spliterator$OfInt;

    invoke-interface {v0, p1}, Ljava9/util/Spliterator$OfInt;->tryAdvance(Ljava9/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator$OfInt;
    .locals 1

    invoke-super {p0}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;->trySplit()Ljava9/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava9/util/Spliterator$OfInt;

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator$OfPrimitive;
    .locals 1

    invoke-super {p0}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;->trySplit()Ljava9/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava9/util/Spliterator$OfPrimitive;

    return-object v0
.end method
