.class final Ljava9/util/stream/Streams$RangeIntSpliterator;
.super Ljava/lang/Object;
.source "Streams.java"

# interfaces
.implements Ljava9/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RangeIntSpliterator"
.end annotation


# static fields
.field private static final BALANCED_SPLIT_THRESHOLD:I = 0x1000000

.field private static final RIGHT_BALANCED_SPLIT_RATIO:I = 0x8


# instance fields
.field private from:I

.field private last:I

.field private final upTo:I


# direct methods
.method private constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljava9/util/stream/Streams$RangeIntSpliterator;->from:I

    iput p2, p0, Ljava9/util/stream/Streams$RangeIntSpliterator;->upTo:I

    iput p3, p0, Ljava9/util/stream/Streams$RangeIntSpliterator;->last:I

    return-void
.end method

.method constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljava9/util/stream/Streams$RangeIntSpliterator;-><init>(III)V

    return-void
.end method

.method private splitPoint(J)I
    .locals 3

    const-wide/32 v0, 0x1000000

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    int-to-long v0, v0

    div-long/2addr p1, v0

    long-to-int p2, p1

    return p2
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    const/16 v0, 0x4555

    return v0
.end method

.method public estimateSize()J
    .locals 4

    iget v0, p0, Ljava9/util/stream/Streams$RangeIntSpliterator;->upTo:I

    int-to-long v0, v0

    iget v2, p0, Ljava9/util/stream/Streams$RangeIntSpliterator;->from:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iget v2, p0, Ljava9/util/stream/Streams$RangeIntSpliterator;->last:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava9/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava9/util/stream/Streams$RangeIntSpliterator;->forEachRemaining(Ljava9/util/function/IntConsumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava9/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Ljava9/util/Spliterator$OfInt$-CC;->$default$forEachRemaining(Ljava9/util/Spliterator$OfInt;Ljava9/util/function/Consumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava9/util/function/IntConsumer;)V
    .locals 4

    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Ljava9/util/stream/Streams$RangeIntSpliterator;->from:I

    iget v1, p0, Ljava9/util/stream/Streams$RangeIntSpliterator;->upTo:I

    iget v2, p0, Ljava9/util/stream/Streams$RangeIntSpliterator;->last:I

    iput v1, p0, Ljava9/util/stream/Streams$RangeIntSpliterator;->from:I

    const/4 v3, 0x0

    iput v3, p0, Ljava9/util/stream/Streams$RangeIntSpliterator;->last:I

    :goto_0
    if-ge v0, v1, :cond_0

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p1, v0}, Ljava9/util/function/IntConsumer;->accept(I)V

    move v0, v3

    goto :goto_0

    :cond_0
    if-lez v2, :cond_1

    invoke-interface {p1, v0}, Ljava9/util/function/IntConsumer;->accept(I)V

    :cond_1
    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic getExactSizeIfKnown()J
    .locals 2

    invoke-static {p0}, Ljava9/util/Spliterator$-CC;->$default$getExactSizeIfKnown(Ljava9/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic hasCharacteristics(I)Z
    .locals 0

    invoke-static {p0, p1}, Ljava9/util/Spliterator$-CC;->$default$hasCharacteristics(Ljava9/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava9/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava9/util/stream/Streams$RangeIntSpliterator;->tryAdvance(Ljava9/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public synthetic tryAdvance(Ljava9/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Ljava9/util/Spliterator$OfInt$-CC;->$default$tryAdvance(Ljava9/util/Spliterator$OfInt;Ljava9/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava9/util/function/IntConsumer;)Z
    .locals 4

    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Ljava9/util/stream/Streams$RangeIntSpliterator;->from:I

    iget v1, p0, Ljava9/util/stream/Streams$RangeIntSpliterator;->upTo:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava9/util/stream/Streams$RangeIntSpliterator;->from:I

    invoke-interface {p1, v0}, Ljava9/util/function/IntConsumer;->accept(I)V

    return v2

    :cond_0
    iget v1, p0, Ljava9/util/stream/Streams$RangeIntSpliterator;->last:I

    const/4 v3, 0x0

    if-lez v1, :cond_1

    iput v3, p0, Ljava9/util/stream/Streams$RangeIntSpliterator;->last:I

    invoke-interface {p1, v0}, Ljava9/util/function/IntConsumer;->accept(I)V

    return v2

    :cond_1
    return v3
.end method

.method public trySplit()Ljava9/util/Spliterator$OfInt;
    .locals 5

    invoke-virtual {p0}, Ljava9/util/stream/Streams$RangeIntSpliterator;->estimateSize()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava9/util/stream/Streams$RangeIntSpliterator;

    iget v3, p0, Ljava9/util/stream/Streams$RangeIntSpliterator;->from:I

    invoke-direct {p0, v0, v1}, Ljava9/util/stream/Streams$RangeIntSpliterator;->splitPoint(J)I

    move-result v0

    add-int/2addr v0, v3

    iput v0, p0, Ljava9/util/stream/Streams$RangeIntSpliterator;->from:I

    const/4 v1, 0x0

    invoke-direct {v2, v3, v0, v1}, Ljava9/util/stream/Streams$RangeIntSpliterator;-><init>(III)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator$OfPrimitive;
    .locals 1

    invoke-virtual {p0}, Ljava9/util/stream/Streams$RangeIntSpliterator;->trySplit()Ljava9/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator;
    .locals 1

    invoke-virtual {p0}, Ljava9/util/stream/Streams$RangeIntSpliterator;->trySplit()Ljava9/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method
