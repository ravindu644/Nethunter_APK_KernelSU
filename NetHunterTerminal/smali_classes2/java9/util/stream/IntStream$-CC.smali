.class public final synthetic Ljava9/util/stream/IntStream$-CC;
.super Ljava/lang/Object;
.source "IntStream.java"


# annotations
.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    kind = 0x8
    versionHash = "b9fe669522e76a1913eadf452da56796d42e756f2af239d12ad6b753581fecaa"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static $default$dropWhile(Ljava9/util/stream/IntStream;Ljava9/util/function/IntPredicate;)Ljava9/util/stream/IntStream;
    .locals 3
    .param p0, "_this"    # Ljava9/util/stream/IntStream;

    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;

    invoke-interface {p0}, Ljava9/util/stream/IntStream;->spliterator()Ljava9/util/Spliterator$OfInt;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;-><init>(Ljava9/util/Spliterator$OfInt;ZLjava9/util/function/IntPredicate;)V

    invoke-interface {p0}, Ljava9/util/stream/IntStream;->isParallel()Z

    move-result p1

    invoke-static {v0, p1}, Ljava9/util/stream/StreamSupport;->intStream(Ljava9/util/Spliterator$OfInt;Z)Ljava9/util/stream/IntStream;

    move-result-object p1

    invoke-static {p0}, Ljava9/util/stream/StreamSupport;->closeHandler(Ljava9/util/stream/BaseStream;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava9/util/stream/IntStream;->onClose(Ljava/lang/Runnable;)Ljava9/util/stream/BaseStream;

    move-result-object p1

    check-cast p1, Ljava9/util/stream/IntStream;

    return-object p1
.end method

.method public static bridge synthetic $default$iterator(Ljava9/util/stream/IntStream;)Ljava/util/Iterator;
    .locals 1
    .param p0, "_this"    # Ljava9/util/stream/IntStream;

    invoke-interface {p0}, Ljava9/util/stream/IntStream;->iterator()Ljava9/util/PrimitiveIterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public static $default$mapMulti(Ljava9/util/stream/IntStream;Ljava9/util/stream/IntStream$IntMapMultiConsumer;)Ljava9/util/stream/IntStream;
    .locals 1
    .param p0, "_this"    # Ljava9/util/stream/IntStream;

    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava9/util/stream/IntStream$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Ljava9/util/stream/IntStream$$ExternalSyntheticLambda0;-><init>(Ljava9/util/stream/IntStream$IntMapMultiConsumer;)V

    invoke-interface {p0, v0}, Ljava9/util/stream/IntStream;->flatMap(Ljava9/util/function/IntFunction;)Ljava9/util/stream/IntStream;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$parallel(Ljava9/util/stream/IntStream;)Ljava9/util/stream/BaseStream;
    .locals 1
    .param p0, "_this"    # Ljava9/util/stream/IntStream;

    invoke-interface {p0}, Ljava9/util/stream/IntStream;->parallel()Ljava9/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$sequential(Ljava9/util/stream/IntStream;)Ljava9/util/stream/BaseStream;
    .locals 1
    .param p0, "_this"    # Ljava9/util/stream/IntStream;

    invoke-interface {p0}, Ljava9/util/stream/IntStream;->sequential()Ljava9/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$spliterator(Ljava9/util/stream/IntStream;)Ljava9/util/Spliterator;
    .locals 1
    .param p0, "_this"    # Ljava9/util/stream/IntStream;

    invoke-interface {p0}, Ljava9/util/stream/IntStream;->spliterator()Ljava9/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public static $default$takeWhile(Ljava9/util/stream/IntStream;Ljava9/util/function/IntPredicate;)Ljava9/util/stream/IntStream;
    .locals 3
    .param p0, "_this"    # Ljava9/util/stream/IntStream;

    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;

    invoke-interface {p0}, Ljava9/util/stream/IntStream;->spliterator()Ljava9/util/Spliterator$OfInt;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;-><init>(Ljava9/util/Spliterator$OfInt;ZLjava9/util/function/IntPredicate;)V

    invoke-interface {p0}, Ljava9/util/stream/IntStream;->isParallel()Z

    move-result p1

    invoke-static {v0, p1}, Ljava9/util/stream/StreamSupport;->intStream(Ljava9/util/Spliterator$OfInt;Z)Ljava9/util/stream/IntStream;

    move-result-object p1

    invoke-static {p0}, Ljava9/util/stream/StreamSupport;->closeHandler(Ljava9/util/stream/BaseStream;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava9/util/stream/IntStream;->onClose(Ljava/lang/Runnable;)Ljava9/util/stream/BaseStream;

    move-result-object p1

    check-cast p1, Ljava9/util/stream/IntStream;

    return-object p1
.end method

.method public static builder()Ljava9/util/stream/IntStream$Builder;
    .locals 1

    new-instance v0, Ljava9/util/stream/Streams$IntStreamBuilderImpl;

    invoke-direct {v0}, Ljava9/util/stream/Streams$IntStreamBuilderImpl;-><init>()V

    return-object v0
.end method

.method public static concat(Ljava9/util/stream/IntStream;Ljava9/util/stream/IntStream;)Ljava9/util/stream/IntStream;
    .locals 3

    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava9/util/stream/Streams$ConcatSpliterator$OfInt;

    invoke-interface {p0}, Ljava9/util/stream/IntStream;->spliterator()Ljava9/util/Spliterator$OfInt;

    move-result-object v1

    invoke-interface {p1}, Ljava9/util/stream/IntStream;->spliterator()Ljava9/util/Spliterator$OfInt;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava9/util/stream/Streams$ConcatSpliterator$OfInt;-><init>(Ljava9/util/Spliterator$OfInt;Ljava9/util/Spliterator$OfInt;)V

    invoke-interface {p0}, Ljava9/util/stream/IntStream;->isParallel()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Ljava9/util/stream/IntStream;->isParallel()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->intStream(Ljava9/util/Spliterator$OfInt;Z)Ljava9/util/stream/IntStream;

    move-result-object v0

    invoke-static {p0, p1}, Ljava9/util/stream/Streams;->composedClose(Ljava9/util/stream/BaseStream;Ljava9/util/stream/BaseStream;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava9/util/stream/IntStream;->onClose(Ljava/lang/Runnable;)Ljava9/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava9/util/stream/IntStream;

    return-object p0
.end method

.method public static empty()Ljava9/util/stream/IntStream;
    .locals 2

    invoke-static {}, Ljava9/util/Spliterators;->emptyIntSpliterator()Ljava9/util/Spliterator$OfInt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->intStream(Ljava9/util/Spliterator$OfInt;Z)Ljava9/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static generate(Ljava9/util/function/IntSupplier;)Ljava9/util/stream/IntStream;
    .locals 3

    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava9/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2, p0}, Ljava9/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;-><init>(JLjava9/util/function/IntSupplier;)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Ljava9/util/stream/StreamSupport;->intStream(Ljava9/util/Spliterator$OfInt;Z)Ljava9/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public static iterate(ILjava9/util/function/IntPredicate;Ljava9/util/function/IntUnaryOperator;)Ljava9/util/stream/IntStream;
    .locals 8

    invoke-static {p2}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Ljava9/util/stream/IntStream$2;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x510

    move-object v0, v7

    move-object v4, p2

    move v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Ljava9/util/stream/IntStream$2;-><init>(JILjava9/util/function/IntUnaryOperator;ILjava9/util/function/IntPredicate;)V

    const/4 p0, 0x0

    invoke-static {v7, p0}, Ljava9/util/stream/StreamSupport;->intStream(Ljava9/util/Spliterator$OfInt;Z)Ljava9/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public static iterate(ILjava9/util/function/IntUnaryOperator;)Ljava9/util/stream/IntStream;
    .locals 7

    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava9/util/stream/IntStream$1;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x510

    move-object v0, v6

    move-object v4, p1

    move v5, p0

    invoke-direct/range {v0 .. v5}, Ljava9/util/stream/IntStream$1;-><init>(JILjava9/util/function/IntUnaryOperator;I)V

    const/4 p0, 0x0

    invoke-static {v6, p0}, Ljava9/util/stream/StreamSupport;->intStream(Ljava9/util/Spliterator$OfInt;Z)Ljava9/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$mapMulti$6(Ljava9/util/stream/IntStream$IntMapMultiConsumer;I)Ljava9/util/stream/IntStream;
    .locals 1

    new-instance v0, Ljava9/util/stream/SpinedBuffer$OfInt;

    invoke-direct {v0}, Ljava9/util/stream/SpinedBuffer$OfInt;-><init>()V

    invoke-interface {p0, p1, v0}, Ljava9/util/stream/IntStream$IntMapMultiConsumer;->accept(ILjava9/util/function/IntConsumer;)V

    invoke-virtual {v0}, Ljava9/util/stream/SpinedBuffer$OfInt;->spliterator()Ljava9/util/Spliterator$OfInt;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ljava9/util/stream/StreamSupport;->intStream(Ljava9/util/Spliterator$OfInt;Z)Ljava9/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public static of(I)Ljava9/util/stream/IntStream;
    .locals 1

    new-instance v0, Ljava9/util/stream/Streams$IntStreamBuilderImpl;

    invoke-direct {v0, p0}, Ljava9/util/stream/Streams$IntStreamBuilderImpl;-><init>(I)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Ljava9/util/stream/StreamSupport;->intStream(Ljava9/util/Spliterator$OfInt;Z)Ljava9/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public static varargs of([I)Ljava9/util/stream/IntStream;
    .locals 0

    invoke-static {p0}, Ljava9/util/J8Arrays;->stream([I)Ljava9/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public static range(II)Ljava9/util/stream/IntStream;
    .locals 2

    if-lt p0, p1, :cond_0

    invoke-static {}, Ljava9/util/stream/IntStream$-CC;->empty()Ljava9/util/stream/IntStream;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava9/util/stream/Streams$RangeIntSpliterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ljava9/util/stream/Streams$RangeIntSpliterator;-><init>(IIZ)V

    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->intStream(Ljava9/util/Spliterator$OfInt;Z)Ljava9/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public static rangeClosed(II)Ljava9/util/stream/IntStream;
    .locals 2

    if-le p0, p1, :cond_0

    invoke-static {}, Ljava9/util/stream/IntStream$-CC;->empty()Ljava9/util/stream/IntStream;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava9/util/stream/Streams$RangeIntSpliterator;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Ljava9/util/stream/Streams$RangeIntSpliterator;-><init>(IIZ)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Ljava9/util/stream/StreamSupport;->intStream(Ljava9/util/Spliterator$OfInt;Z)Ljava9/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method
