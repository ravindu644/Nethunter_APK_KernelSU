.class abstract Ljava9/util/stream/StreamSpliterators$SliceSpliterator;
.super Ljava/lang/Object;
.source "StreamSpliterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/StreamSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "SliceSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;,
        Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfLong;,
        Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfInt;,
        Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;,
        Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Ljava9/util/Spliterator<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field fence:J

.field index:J

.field s:Ljava9/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_SP",
            "LITR;"
        }
    .end annotation
.end field

.field final sliceFence:J

.field final sliceOrigin:J


# direct methods
.method constructor <init>(Ljava9/util/Spliterator;JJJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "JJJJ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava9/util/Spliterator;

    iput-wide p2, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    iput-wide p4, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;->sliceFence:J

    iput-wide p6, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    iput-wide p8, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    iget-object v0, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava9/util/Spliterator;

    invoke-interface {v0}, Ljava9/util/Spliterator;->characteristics()I

    move-result v0

    return v0
.end method

.method public estimateSize()J
    .locals 6

    iget-wide v0, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    iget-wide v2, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iget-wide v4, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sub-long/2addr v2, v0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2
.end method

.method protected abstract makeSpliterator(Ljava9/util/Spliterator;JJJJ)Ljava9/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "JJJJ)TT_SP",
            "LITR;"
        }
    .end annotation
.end method

.method public trySplit()Ljava9/util/Spliterator;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_SP",
            "LITR;"
        }
    .end annotation

    iget-wide v0, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    iget-wide v2, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-ltz v5, :cond_0

    return-object v4

    :cond_0
    iget-wide v0, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    cmp-long v5, v0, v2

    if-ltz v5, :cond_1

    return-object v4

    :cond_1
    :goto_0
    iget-object v0, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava9/util/Spliterator;

    invoke-interface {v0}, Ljava9/util/Spliterator;->trySplit()Ljava9/util/Spliterator;

    move-result-object v6

    if-nez v6, :cond_2

    return-object v4

    :cond_2
    iget-wide v0, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    invoke-interface {v6}, Ljava9/util/Spliterator;->estimateSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;->sliceFence:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    iget-wide v7, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    cmp-long v2, v7, v13

    if-ltz v2, :cond_3

    iput-wide v13, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    goto :goto_0

    :cond_3
    iget-wide v9, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;->sliceFence:J

    cmp-long v2, v13, v9

    if-ltz v2, :cond_4

    iput-object v6, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava9/util/Spliterator;

    iput-wide v13, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    goto :goto_0

    :cond_4
    iget-wide v11, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    cmp-long v2, v11, v7

    if-ltz v2, :cond_5

    cmp-long v2, v0, v9

    if-gtz v2, :cond_5

    iput-wide v13, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    return-object v6

    :cond_5
    iput-wide v13, p0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    move-object v5, p0

    invoke-virtual/range {v5 .. v14}, Ljava9/util/stream/StreamSpliterators$SliceSpliterator;->makeSpliterator(Ljava9/util/Spliterator;JJJJ)Ljava9/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
