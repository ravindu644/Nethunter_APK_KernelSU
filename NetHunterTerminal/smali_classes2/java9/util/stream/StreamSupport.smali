.class public final Ljava9/util/stream/StreamSupport;
.super Ljava/lang/Object;
.source "StreamSupport.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static closeHandler(Ljava9/util/stream/BaseStream;)Ljava/lang/Runnable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/stream/BaseStream<",
            "**>;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava9/util/stream/StreamSupport$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Ljava9/util/stream/StreamSupport$$ExternalSyntheticLambda0;-><init>(Ljava9/util/stream/BaseStream;)V

    return-object v0
.end method

.method public static doubleStream(Ljava9/util/Spliterator$OfDouble;Z)Ljava9/util/stream/DoubleStream;
    .locals 2

    new-instance v0, Ljava9/util/stream/DoublePipeline$Head;

    invoke-static {p0}, Ljava9/util/stream/StreamOpFlag;->fromCharacteristics(Ljava9/util/Spliterator;)I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Ljava9/util/stream/DoublePipeline$Head;-><init>(Ljava9/util/Spliterator;IZ)V

    return-object v0
.end method

.method public static doubleStream(Ljava9/util/function/Supplier;IZ)Ljava9/util/stream/DoubleStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Supplier<",
            "+",
            "Ljava9/util/Spliterator$OfDouble;",
            ">;IZ)",
            "Ljava9/util/stream/DoubleStream;"
        }
    .end annotation

    new-instance v0, Ljava9/util/stream/DoublePipeline$Head;

    invoke-static {p1}, Ljava9/util/stream/StreamOpFlag;->fromCharacteristics(I)I

    move-result p1

    invoke-direct {v0, p0, p1, p2}, Ljava9/util/stream/DoublePipeline$Head;-><init>(Ljava9/util/function/Supplier;IZ)V

    return-object v0
.end method

.method public static intStream(Ljava9/util/Spliterator$OfInt;Z)Ljava9/util/stream/IntStream;
    .locals 2

    new-instance v0, Ljava9/util/stream/IntPipeline$Head;

    invoke-static {p0}, Ljava9/util/stream/StreamOpFlag;->fromCharacteristics(Ljava9/util/Spliterator;)I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Ljava9/util/stream/IntPipeline$Head;-><init>(Ljava9/util/Spliterator;IZ)V

    return-object v0
.end method

.method public static intStream(Ljava9/util/function/Supplier;IZ)Ljava9/util/stream/IntStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Supplier<",
            "+",
            "Ljava9/util/Spliterator$OfInt;",
            ">;IZ)",
            "Ljava9/util/stream/IntStream;"
        }
    .end annotation

    new-instance v0, Ljava9/util/stream/IntPipeline$Head;

    invoke-static {p1}, Ljava9/util/stream/StreamOpFlag;->fromCharacteristics(I)I

    move-result p1

    invoke-direct {v0, p0, p1, p2}, Ljava9/util/stream/IntPipeline$Head;-><init>(Ljava9/util/function/Supplier;IZ)V

    return-object v0
.end method

.method public static longStream(Ljava9/util/Spliterator$OfLong;Z)Ljava9/util/stream/LongStream;
    .locals 2

    new-instance v0, Ljava9/util/stream/LongPipeline$Head;

    invoke-static {p0}, Ljava9/util/stream/StreamOpFlag;->fromCharacteristics(Ljava9/util/Spliterator;)I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Ljava9/util/stream/LongPipeline$Head;-><init>(Ljava9/util/Spliterator;IZ)V

    return-object v0
.end method

.method public static longStream(Ljava9/util/function/Supplier;IZ)Ljava9/util/stream/LongStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Supplier<",
            "+",
            "Ljava9/util/Spliterator$OfLong;",
            ">;IZ)",
            "Ljava9/util/stream/LongStream;"
        }
    .end annotation

    new-instance v0, Ljava9/util/stream/LongPipeline$Head;

    invoke-static {p1}, Ljava9/util/stream/StreamOpFlag;->fromCharacteristics(I)I

    move-result p1

    invoke-direct {v0, p0, p1, p2}, Ljava9/util/stream/LongPipeline$Head;-><init>(Ljava9/util/function/Supplier;IZ)V

    return-object v0
.end method

.method public static parallelStream(Ljava/util/Collection;)Ljava9/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;)",
            "Ljava9/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Ljava9/util/Spliterators;->spliterator(Ljava/util/Collection;)Ljava9/util/Spliterator;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava9/util/stream/StreamSupport;->stream(Ljava9/util/Spliterator;Z)Ljava9/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static stream(Ljava/util/Collection;)Ljava9/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;)",
            "Ljava9/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Ljava9/util/Spliterators;->spliterator(Ljava/util/Collection;)Ljava9/util/Spliterator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava9/util/stream/StreamSupport;->stream(Ljava9/util/Spliterator;Z)Ljava9/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static stream(Ljava/util/Collection;I)Ljava9/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;I)",
            "Ljava9/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava9/util/stream/StreamSupport;->stream(Ljava/util/Collection;IZ)Ljava9/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static stream(Ljava/util/Collection;IZ)Ljava9/util/stream/Stream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;IZ)",
            "Ljava9/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava9/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava9/util/Spliterator;

    move-result-object p0

    invoke-static {p0, p2}, Ljava9/util/stream/StreamSupport;->stream(Ljava9/util/Spliterator;Z)Ljava9/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static stream(Ljava9/util/Spliterator;Z)Ljava9/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/Spliterator<",
            "TT;>;Z)",
            "Ljava9/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava9/util/stream/ReferencePipeline$Head;

    invoke-static {p0}, Ljava9/util/stream/StreamOpFlag;->fromCharacteristics(Ljava9/util/Spliterator;)I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Ljava9/util/stream/ReferencePipeline$Head;-><init>(Ljava9/util/Spliterator;IZ)V

    return-object v0
.end method

.method public static stream(Ljava9/util/function/Supplier;IZ)Ljava9/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/Supplier<",
            "+",
            "Ljava9/util/Spliterator<",
            "TT;>;>;IZ)",
            "Ljava9/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava9/util/stream/ReferencePipeline$Head;

    invoke-static {p1}, Ljava9/util/stream/StreamOpFlag;->fromCharacteristics(I)I

    move-result p1

    invoke-direct {v0, p0, p1, p2}, Ljava9/util/stream/ReferencePipeline$Head;-><init>(Ljava9/util/function/Supplier;IZ)V

    return-object v0
.end method
