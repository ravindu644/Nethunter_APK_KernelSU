.class final Ljava9/util/stream/SliceOps$4;
.super Ljava9/util/stream/DoublePipeline$StatefulOp;
.source "SliceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava9/util/stream/SliceOps;->makeDouble(Ljava9/util/stream/AbstractPipeline;JJ)Ljava9/util/stream/DoubleStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava9/util/stream/DoublePipeline$StatefulOp<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$limit:J

.field final synthetic val$skip:J


# direct methods
.method constructor <init>(Ljava9/util/stream/AbstractPipeline;Ljava9/util/stream/StreamShape;IJJ)V
    .locals 0

    iput-wide p4, p0, Ljava9/util/stream/SliceOps$4;->val$skip:J

    iput-wide p6, p0, Ljava9/util/stream/SliceOps$4;->val$limit:J

    invoke-direct {p0, p1, p2, p3}, Ljava9/util/stream/DoublePipeline$StatefulOp;-><init>(Ljava9/util/stream/AbstractPipeline;Ljava9/util/stream/StreamShape;I)V

    return-void
.end method


# virtual methods
.method opEvaluateParallel(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;Ljava9/util/function/IntFunction;)Ljava9/util/stream/Node;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/stream/PipelineHelper<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;",
            "Ljava9/util/function/IntFunction<",
            "[",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava9/util/stream/Node<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    move-object/from16 v9, p0

    invoke-virtual/range {p1 .. p2}, Ljava9/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava9/util/Spliterator;)J

    move-result-wide v6

    const-wide/16 v0, 0x0

    const/4 v8, 0x1

    cmp-long v2, v6, v0

    if-lez v2, :cond_1

    const/16 v0, 0x4000

    move-object/from16 v3, p2

    invoke-interface {v3, v0}, Ljava9/util/Spliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava9/util/stream/PipelineHelper;->getSourceShape()Ljava9/util/stream/StreamShape;

    move-result-object v10

    iget-wide v12, v9, Ljava9/util/stream/SliceOps$4;->val$skip:J

    iget-wide v14, v9, Ljava9/util/stream/SliceOps$4;->val$limit:J

    move-object/from16 v11, p2

    invoke-static/range {v10 .. v15}, Ljava9/util/stream/SliceOps;->sliceSpliterator(Ljava9/util/stream/StreamShape;Ljava9/util/Spliterator;JJ)Ljava9/util/Spliterator;

    move-result-object v0

    move-object/from16 v2, p1

    invoke-static {v2, v0, v8}, Ljava9/util/stream/Nodes;->collectDouble(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;Z)Ljava9/util/stream/Node$OfDouble;

    move-result-object v0

    return-object v0

    :cond_0
    move-object/from16 v2, p1

    goto :goto_0

    :cond_1
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    :goto_0
    sget-object v0, Ljava9/util/stream/StreamOpFlag;->ORDERED:Ljava9/util/stream/StreamOpFlag;

    invoke-virtual/range {p1 .. p1}, Ljava9/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava9/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual/range {p1 .. p2}, Ljava9/util/stream/PipelineHelper;->wrapSpliterator(Ljava9/util/Spliterator;)Ljava9/util/Spliterator;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava9/util/Spliterator$OfDouble;

    iget-wide v2, v9, Ljava9/util/stream/SliceOps$4;->val$skip:J

    iget-wide v4, v9, Ljava9/util/stream/SliceOps$4;->val$limit:J

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Ljava9/util/stream/SliceOps$4;->unorderedSkipLimitSpliterator(Ljava9/util/Spliterator$OfDouble;JJJ)Ljava9/util/Spliterator$OfDouble;

    move-result-object v0

    invoke-static {v9, v0, v8}, Ljava9/util/stream/Nodes;->collectDouble(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;Z)Ljava9/util/stream/Node$OfDouble;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v10, Ljava9/util/stream/SliceOps$SliceTask;

    iget-wide v5, v9, Ljava9/util/stream/SliceOps$4;->val$skip:J

    iget-wide v7, v9, Ljava9/util/stream/SliceOps$4;->val$limit:J

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v8}, Ljava9/util/stream/SliceOps$SliceTask;-><init>(Ljava9/util/stream/AbstractPipeline;Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;Ljava9/util/function/IntFunction;JJ)V

    invoke-virtual {v10}, Ljava9/util/stream/SliceOps$SliceTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava9/util/stream/Node;

    return-object v0
.end method

.method opEvaluateParallelLazy(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;)Ljava9/util/Spliterator;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/stream/PipelineHelper<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava9/util/Spliterator<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    move-object/from16 v9, p0

    invoke-virtual/range {p1 .. p2}, Ljava9/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava9/util/Spliterator;)J

    move-result-wide v6

    const-wide/16 v0, 0x0

    cmp-long v2, v6, v0

    if-lez v2, :cond_0

    const/16 v0, 0x4000

    move-object/from16 v3, p2

    invoke-interface {v3, v0}, Ljava9/util/Spliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;

    invoke-virtual/range {p1 .. p2}, Ljava9/util/stream/PipelineHelper;->wrapSpliterator(Ljava9/util/Spliterator;)Ljava9/util/Spliterator;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava9/util/Spliterator$OfDouble;

    iget-wide v12, v9, Ljava9/util/stream/SliceOps$4;->val$skip:J

    iget-wide v1, v9, Ljava9/util/stream/SliceOps$4;->val$limit:J

    invoke-static {v12, v13, v1, v2}, Ljava9/util/stream/SliceOps;->calcSliceFence(JJ)J

    move-result-wide v14

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;-><init>(Ljava9/util/Spliterator$OfDouble;JJ)V

    return-object v0

    :cond_0
    move-object/from16 v3, p2

    :cond_1
    sget-object v0, Ljava9/util/stream/StreamOpFlag;->ORDERED:Ljava9/util/stream/StreamOpFlag;

    invoke-virtual/range {p1 .. p1}, Ljava9/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava9/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual/range {p1 .. p2}, Ljava9/util/stream/PipelineHelper;->wrapSpliterator(Ljava9/util/Spliterator;)Ljava9/util/Spliterator;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava9/util/Spliterator$OfDouble;

    iget-wide v2, v9, Ljava9/util/stream/SliceOps$4;->val$skip:J

    iget-wide v4, v9, Ljava9/util/stream/SliceOps$4;->val$limit:J

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Ljava9/util/stream/SliceOps$4;->unorderedSkipLimitSpliterator(Ljava9/util/Spliterator$OfDouble;JJJ)Ljava9/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v10, Ljava9/util/stream/SliceOps$SliceTask;

    sget-object v4, Ljava9/util/stream/WhileOps;->DOUBLE_ARR_GEN:Ljava9/util/function/IntFunction;

    iget-wide v5, v9, Ljava9/util/stream/SliceOps$4;->val$skip:J

    iget-wide v7, v9, Ljava9/util/stream/SliceOps$4;->val$limit:J

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v8}, Ljava9/util/stream/SliceOps$SliceTask;-><init>(Ljava9/util/stream/AbstractPipeline;Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;Ljava9/util/function/IntFunction;JJ)V

    invoke-virtual {v10}, Ljava9/util/stream/SliceOps$SliceTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava9/util/stream/Node;

    invoke-interface {v0}, Ljava9/util/stream/Node;->spliterator()Ljava9/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method opWrapSink(ILjava9/util/stream/Sink;)Ljava9/util/stream/Sink;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava9/util/stream/Sink<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava9/util/stream/Sink<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava9/util/stream/SliceOps$4$1;

    invoke-direct {p1, p0, p2}, Ljava9/util/stream/SliceOps$4$1;-><init>(Ljava9/util/stream/SliceOps$4;Ljava9/util/stream/Sink;)V

    return-object p1
.end method

.method unorderedSkipLimitSpliterator(Ljava9/util/Spliterator$OfDouble;JJJ)Ljava9/util/Spliterator$OfDouble;
    .locals 8

    cmp-long v0, p2, p6

    if-gtz v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    sub-long/2addr p6, p2

    if-ltz v2, :cond_0

    invoke-static {p4, p5, p6, p7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    move-wide p4, p2

    goto :goto_0

    :cond_0
    move-wide p4, p6

    :goto_0
    move-wide v6, p4

    move-wide v4, v0

    goto :goto_1

    :cond_1
    move-wide v4, p2

    move-wide v6, p4

    :goto_1
    new-instance p2, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;-><init>(Ljava9/util/Spliterator$OfDouble;JJ)V

    return-object p2
.end method
