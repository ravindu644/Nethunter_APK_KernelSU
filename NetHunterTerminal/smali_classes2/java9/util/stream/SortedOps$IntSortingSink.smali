.class final Ljava9/util/stream/SortedOps$IntSortingSink;
.super Ljava9/util/stream/SortedOps$AbstractIntSortingSink;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/SortedOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IntSortingSink"
.end annotation


# instance fields
.field private b:Ljava9/util/stream/SpinedBuffer$OfInt;


# direct methods
.method constructor <init>(Ljava9/util/stream/Sink;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/stream/Sink<",
            "-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava9/util/stream/SortedOps$AbstractIntSortingSink;-><init>(Ljava9/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 1

    iget-object v0, p0, Ljava9/util/stream/SortedOps$IntSortingSink;->b:Ljava9/util/stream/SpinedBuffer$OfInt;

    invoke-virtual {v0, p1}, Ljava9/util/stream/SpinedBuffer$OfInt;->accept(I)V

    return-void
.end method

.method public begin(J)V
    .locals 3

    const-wide/32 v0, 0x7ffffff7

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    new-instance v0, Ljava9/util/stream/SpinedBuffer$OfInt;

    if-lez v2, :cond_0

    long-to-int p2, p1

    invoke-direct {v0, p2}, Ljava9/util/stream/SpinedBuffer$OfInt;-><init>(I)V

    goto :goto_0

    :cond_0
    invoke-direct {v0}, Ljava9/util/stream/SpinedBuffer$OfInt;-><init>()V

    :goto_0
    iput-object v0, p0, Ljava9/util/stream/SortedOps$IntSortingSink;->b:Ljava9/util/stream/SpinedBuffer$OfInt;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Stream size exceeds max array size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public end()V
    .locals 5

    iget-object v0, p0, Ljava9/util/stream/SortedOps$IntSortingSink;->b:Ljava9/util/stream/SpinedBuffer$OfInt;

    invoke-virtual {v0}, Ljava9/util/stream/SpinedBuffer$OfInt;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    iget-object v1, p0, Ljava9/util/stream/SortedOps$IntSortingSink;->downstream:Ljava9/util/stream/Sink;

    array-length v2, v0

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Ljava9/util/stream/Sink;->begin(J)V

    iget-boolean v1, p0, Ljava9/util/stream/SortedOps$IntSortingSink;->cancellationRequestedCalled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, v0, v2

    iget-object v4, p0, Ljava9/util/stream/SortedOps$IntSortingSink;->downstream:Ljava9/util/stream/Sink;

    invoke-interface {v4, v3}, Ljava9/util/stream/Sink;->accept(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_2

    aget v3, v0, v2

    iget-object v4, p0, Ljava9/util/stream/SortedOps$IntSortingSink;->downstream:Ljava9/util/stream/Sink;

    invoke-interface {v4}, Ljava9/util/stream/Sink;->cancellationRequested()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    iget-object v4, p0, Ljava9/util/stream/SortedOps$IntSortingSink;->downstream:Ljava9/util/stream/Sink;

    invoke-interface {v4, v3}, Ljava9/util/stream/Sink;->accept(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v0, p0, Ljava9/util/stream/SortedOps$IntSortingSink;->downstream:Ljava9/util/stream/Sink;

    invoke-interface {v0}, Ljava9/util/stream/Sink;->end()V

    return-void
.end method
