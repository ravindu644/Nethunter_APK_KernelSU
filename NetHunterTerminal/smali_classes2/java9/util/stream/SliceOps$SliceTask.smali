.class final Ljava9/util/stream/SliceOps$SliceTask;
.super Ljava9/util/stream/AbstractShortCircuitTask;
.source "SliceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/SliceOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SliceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava9/util/stream/AbstractShortCircuitTask<",
        "TP_IN;TP_OUT;",
        "Ljava9/util/stream/Node<",
        "TP_OUT;>;",
        "Ljava9/util/stream/SliceOps$SliceTask<",
        "TP_IN;TP_OUT;>;>;"
    }
.end annotation


# instance fields
.field private volatile completed:Z

.field private final generator:Ljava9/util/function/IntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/function/IntFunction<",
            "[TP_OUT;>;"
        }
    .end annotation
.end field

.field private final op:Ljava9/util/stream/AbstractPipeline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/stream/AbstractPipeline<",
            "TP_OUT;TP_OUT;*>;"
        }
    .end annotation
.end field

.field private final targetOffset:J

.field private final targetSize:J

.field private thisNodeSize:J


# direct methods
.method constructor <init>(Ljava9/util/stream/AbstractPipeline;Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;Ljava9/util/function/IntFunction;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/stream/AbstractPipeline<",
            "TP_OUT;TP_OUT;*>;",
            "Ljava9/util/stream/PipelineHelper<",
            "TP_OUT;>;",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;",
            "Ljava9/util/function/IntFunction<",
            "[TP_OUT;>;JJ)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Ljava9/util/stream/AbstractShortCircuitTask;-><init>(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;)V

    iput-object p1, p0, Ljava9/util/stream/SliceOps$SliceTask;->op:Ljava9/util/stream/AbstractPipeline;

    iput-object p4, p0, Ljava9/util/stream/SliceOps$SliceTask;->generator:Ljava9/util/function/IntFunction;

    iput-wide p5, p0, Ljava9/util/stream/SliceOps$SliceTask;->targetOffset:J

    iput-wide p7, p0, Ljava9/util/stream/SliceOps$SliceTask;->targetSize:J

    return-void
.end method

.method constructor <init>(Ljava9/util/stream/SliceOps$SliceTask;Ljava9/util/Spliterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/stream/SliceOps$SliceTask<",
            "TP_IN;TP_OUT;>;",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava9/util/stream/AbstractShortCircuitTask;-><init>(Ljava9/util/stream/AbstractShortCircuitTask;Ljava9/util/Spliterator;)V

    iget-object p2, p1, Ljava9/util/stream/SliceOps$SliceTask;->op:Ljava9/util/stream/AbstractPipeline;

    iput-object p2, p0, Ljava9/util/stream/SliceOps$SliceTask;->op:Ljava9/util/stream/AbstractPipeline;

    iget-object p2, p1, Ljava9/util/stream/SliceOps$SliceTask;->generator:Ljava9/util/function/IntFunction;

    iput-object p2, p0, Ljava9/util/stream/SliceOps$SliceTask;->generator:Ljava9/util/function/IntFunction;

    iget-wide v0, p1, Ljava9/util/stream/SliceOps$SliceTask;->targetOffset:J

    iput-wide v0, p0, Ljava9/util/stream/SliceOps$SliceTask;->targetOffset:J

    iget-wide p1, p1, Ljava9/util/stream/SliceOps$SliceTask;->targetSize:J

    iput-wide p1, p0, Ljava9/util/stream/SliceOps$SliceTask;->targetSize:J

    return-void
.end method

.method private completedSize(J)J
    .locals 4

    iget-boolean v0, p0, Ljava9/util/stream/SliceOps$SliceTask;->completed:Z

    if-eqz v0, :cond_0

    iget-wide p1, p0, Ljava9/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    return-wide p1

    :cond_0
    iget-object v0, p0, Ljava9/util/stream/SliceOps$SliceTask;->leftChild:Ljava9/util/stream/AbstractTask;

    check-cast v0, Ljava9/util/stream/SliceOps$SliceTask;

    iget-object v1, p0, Ljava9/util/stream/SliceOps$SliceTask;->rightChild:Ljava9/util/stream/AbstractTask;

    check-cast v1, Ljava9/util/stream/SliceOps$SliceTask;

    if-eqz v0, :cond_3

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {v0, p1, p2}, Ljava9/util/stream/SliceOps$SliceTask;->completedSize(J)J

    move-result-wide v2

    cmp-long v0, v2, p1

    if-ltz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {v1, p1, p2}, Ljava9/util/stream/SliceOps$SliceTask;->completedSize(J)J

    move-result-wide p1

    add-long/2addr v2, p1

    :goto_0
    return-wide v2

    :cond_3
    :goto_1
    iget-wide p1, p0, Ljava9/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    return-wide p1
.end method

.method private doTruncate(Ljava9/util/stream/Node;)Ljava9/util/stream/Node;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/stream/Node<",
            "TP_OUT;>;)",
            "Ljava9/util/stream/Node<",
            "TP_OUT;>;"
        }
    .end annotation

    iget-wide v0, p0, Ljava9/util/stream/SliceOps$SliceTask;->targetSize:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    invoke-interface {p1}, Ljava9/util/stream/Node;->count()J

    move-result-wide v0

    iget-wide v2, p0, Ljava9/util/stream/SliceOps$SliceTask;->targetOffset:J

    iget-wide v4, p0, Ljava9/util/stream/SliceOps$SliceTask;->targetSize:J

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Ljava9/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    :goto_0
    move-wide v5, v0

    iget-wide v3, p0, Ljava9/util/stream/SliceOps$SliceTask;->targetOffset:J

    iget-object v7, p0, Ljava9/util/stream/SliceOps$SliceTask;->generator:Ljava9/util/function/IntFunction;

    move-object v2, p1

    invoke-interface/range {v2 .. v7}, Ljava9/util/stream/Node;->truncate(JJLjava9/util/function/IntFunction;)Ljava9/util/stream/Node;

    move-result-object p1

    return-object p1
.end method

.method private isLeftCompleted(J)Z
    .locals 7

    iget-boolean v0, p0, Ljava9/util/stream/SliceOps$SliceTask;->completed:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ljava9/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Ljava9/util/stream/SliceOps$SliceTask;->completedSize(J)J

    move-result-wide v0

    :goto_0
    const/4 v2, 0x1

    cmp-long v3, v0, p1

    if-ltz v3, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Ljava9/util/stream/SliceOps$SliceTask;->getParent()Ljava9/util/stream/AbstractTask;

    move-result-object v3

    check-cast v3, Ljava9/util/stream/SliceOps$SliceTask;

    move-object v4, p0

    :goto_1
    if-eqz v3, :cond_3

    iget-object v5, v3, Ljava9/util/stream/SliceOps$SliceTask;->rightChild:Ljava9/util/stream/AbstractTask;

    if-ne v4, v5, :cond_2

    iget-object v4, v3, Ljava9/util/stream/SliceOps$SliceTask;->leftChild:Ljava9/util/stream/AbstractTask;

    check-cast v4, Ljava9/util/stream/SliceOps$SliceTask;

    if-eqz v4, :cond_2

    invoke-direct {v4, p1, p2}, Ljava9/util/stream/SliceOps$SliceTask;->completedSize(J)J

    move-result-wide v4

    add-long/2addr v0, v4

    cmp-long v4, v0, p1

    if-ltz v4, :cond_2

    return v2

    :cond_2
    invoke-virtual {v3}, Ljava9/util/stream/SliceOps$SliceTask;->getParent()Ljava9/util/stream/AbstractTask;

    move-result-object v4

    check-cast v4, Ljava9/util/stream/SliceOps$SliceTask;

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    goto :goto_1

    :cond_3
    cmp-long v3, v0, p1

    if-ltz v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    return v2
.end method


# virtual methods
.method protected cancel()V
    .locals 1

    invoke-super {p0}, Ljava9/util/stream/AbstractShortCircuitTask;->cancel()V

    iget-boolean v0, p0, Ljava9/util/stream/SliceOps$SliceTask;->completed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava9/util/stream/SliceOps$SliceTask;->getEmptyResult()Ljava9/util/stream/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava9/util/stream/SliceOps$SliceTask;->setLocalResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic doLeaf()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava9/util/stream/SliceOps$SliceTask;->doLeaf()Ljava9/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method protected final doLeaf()Ljava9/util/stream/Node;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/stream/Node<",
            "TP_OUT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava9/util/stream/SliceOps$SliceTask;->isRoot()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_1

    sget-object v0, Ljava9/util/stream/StreamOpFlag;->SIZED:Ljava9/util/stream/StreamOpFlag;

    iget-object v3, p0, Ljava9/util/stream/SliceOps$SliceTask;->op:Ljava9/util/stream/AbstractPipeline;

    iget v3, v3, Ljava9/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    invoke-virtual {v0, v3}, Ljava9/util/stream/StreamOpFlag;->isPreserved(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava9/util/stream/SliceOps$SliceTask;->op:Ljava9/util/stream/AbstractPipeline;

    iget-object v1, p0, Ljava9/util/stream/SliceOps$SliceTask;->spliterator:Ljava9/util/Spliterator;

    invoke-virtual {v0, v1}, Ljava9/util/stream/AbstractPipeline;->exactOutputSizeIfKnown(Ljava9/util/Spliterator;)J

    move-result-wide v1

    :cond_0
    iget-object v0, p0, Ljava9/util/stream/SliceOps$SliceTask;->op:Ljava9/util/stream/AbstractPipeline;

    iget-object v3, p0, Ljava9/util/stream/SliceOps$SliceTask;->generator:Ljava9/util/function/IntFunction;

    invoke-virtual {v0, v1, v2, v3}, Ljava9/util/stream/AbstractPipeline;->makeNodeBuilder(JLjava9/util/function/IntFunction;)Ljava9/util/stream/Node$Builder;

    move-result-object v0

    iget-object v1, p0, Ljava9/util/stream/SliceOps$SliceTask;->op:Ljava9/util/stream/AbstractPipeline;

    iget-object v2, p0, Ljava9/util/stream/SliceOps$SliceTask;->helper:Ljava9/util/stream/PipelineHelper;

    invoke-virtual {v2}, Ljava9/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava9/util/stream/AbstractPipeline;->opWrapSink(ILjava9/util/stream/Sink;)Ljava9/util/stream/Sink;

    move-result-object v1

    iget-object v2, p0, Ljava9/util/stream/SliceOps$SliceTask;->helper:Ljava9/util/stream/PipelineHelper;

    iget-object v3, p0, Ljava9/util/stream/SliceOps$SliceTask;->helper:Ljava9/util/stream/PipelineHelper;

    invoke-virtual {v3, v1}, Ljava9/util/stream/PipelineHelper;->wrapSink(Ljava9/util/stream/Sink;)Ljava9/util/stream/Sink;

    move-result-object v1

    iget-object v3, p0, Ljava9/util/stream/SliceOps$SliceTask;->spliterator:Ljava9/util/Spliterator;

    invoke-virtual {v2, v1, v3}, Ljava9/util/stream/PipelineHelper;->copyIntoWithCancel(Ljava9/util/stream/Sink;Ljava9/util/Spliterator;)Z

    invoke-interface {v0}, Ljava9/util/stream/Node$Builder;->build()Ljava9/util/stream/Node;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Ljava9/util/stream/SliceOps$SliceTask;->op:Ljava9/util/stream/AbstractPipeline;

    iget-object v3, p0, Ljava9/util/stream/SliceOps$SliceTask;->generator:Ljava9/util/function/IntFunction;

    invoke-virtual {v0, v1, v2, v3}, Ljava9/util/stream/AbstractPipeline;->makeNodeBuilder(JLjava9/util/function/IntFunction;)Ljava9/util/stream/Node$Builder;

    move-result-object v0

    iget-wide v1, p0, Ljava9/util/stream/SliceOps$SliceTask;->targetOffset:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    iget-object v1, p0, Ljava9/util/stream/SliceOps$SliceTask;->op:Ljava9/util/stream/AbstractPipeline;

    iget-object v2, p0, Ljava9/util/stream/SliceOps$SliceTask;->helper:Ljava9/util/stream/PipelineHelper;

    invoke-virtual {v2}, Ljava9/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava9/util/stream/AbstractPipeline;->opWrapSink(ILjava9/util/stream/Sink;)Ljava9/util/stream/Sink;

    move-result-object v1

    iget-object v2, p0, Ljava9/util/stream/SliceOps$SliceTask;->helper:Ljava9/util/stream/PipelineHelper;

    iget-object v3, p0, Ljava9/util/stream/SliceOps$SliceTask;->helper:Ljava9/util/stream/PipelineHelper;

    invoke-virtual {v3, v1}, Ljava9/util/stream/PipelineHelper;->wrapSink(Ljava9/util/stream/Sink;)Ljava9/util/stream/Sink;

    move-result-object v1

    iget-object v3, p0, Ljava9/util/stream/SliceOps$SliceTask;->spliterator:Ljava9/util/Spliterator;

    invoke-virtual {v2, v1, v3}, Ljava9/util/stream/PipelineHelper;->copyIntoWithCancel(Ljava9/util/stream/Sink;Ljava9/util/Spliterator;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Ljava9/util/stream/SliceOps$SliceTask;->helper:Ljava9/util/stream/PipelineHelper;

    iget-object v2, p0, Ljava9/util/stream/SliceOps$SliceTask;->spliterator:Ljava9/util/Spliterator;

    invoke-virtual {v1, v0, v2}, Ljava9/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava9/util/stream/Sink;Ljava9/util/Spliterator;)Ljava9/util/stream/Sink;

    :goto_0
    invoke-interface {v0}, Ljava9/util/stream/Node$Builder;->build()Ljava9/util/stream/Node;

    move-result-object v0

    invoke-interface {v0}, Ljava9/util/stream/Node;->count()J

    move-result-wide v1

    iput-wide v1, p0, Ljava9/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava9/util/stream/SliceOps$SliceTask;->completed:Z

    const/4 v1, 0x0

    iput-object v1, p0, Ljava9/util/stream/SliceOps$SliceTask;->spliterator:Ljava9/util/Spliterator;

    return-object v0
.end method

.method protected bridge synthetic getEmptyResult()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava9/util/stream/SliceOps$SliceTask;->getEmptyResult()Ljava9/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method protected final getEmptyResult()Ljava9/util/stream/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/stream/Node<",
            "TP_OUT;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava9/util/stream/SliceOps$SliceTask;->op:Ljava9/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Ljava9/util/stream/AbstractPipeline;->getOutputShape()Ljava9/util/stream/StreamShape;

    move-result-object v0

    invoke-static {v0}, Ljava9/util/stream/Nodes;->emptyNode(Ljava9/util/stream/StreamShape;)Ljava9/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic makeChild(Ljava9/util/Spliterator;)Ljava9/util/stream/AbstractTask;
    .locals 0

    invoke-virtual {p0, p1}, Ljava9/util/stream/SliceOps$SliceTask;->makeChild(Ljava9/util/Spliterator;)Ljava9/util/stream/SliceOps$SliceTask;

    move-result-object p1

    return-object p1
.end method

.method protected makeChild(Ljava9/util/Spliterator;)Ljava9/util/stream/SliceOps$SliceTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava9/util/stream/SliceOps$SliceTask<",
            "TP_IN;TP_OUT;>;"
        }
    .end annotation

    new-instance v0, Ljava9/util/stream/SliceOps$SliceTask;

    invoke-direct {v0, p0, p1}, Ljava9/util/stream/SliceOps$SliceTask;-><init>(Ljava9/util/stream/SliceOps$SliceTask;Ljava9/util/Spliterator;)V

    return-object v0
.end method

.method public final onCompletion(Ljava9/util/concurrent/CountedCompleter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/CountedCompleter<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava9/util/stream/SliceOps$SliceTask;->isLeaf()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Ljava9/util/stream/SliceOps$SliceTask;->leftChild:Ljava9/util/stream/AbstractTask;

    check-cast v0, Ljava9/util/stream/SliceOps$SliceTask;

    iget-wide v3, v0, Ljava9/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    iget-object v0, p0, Ljava9/util/stream/SliceOps$SliceTask;->rightChild:Ljava9/util/stream/AbstractTask;

    check-cast v0, Ljava9/util/stream/SliceOps$SliceTask;

    iget-wide v5, v0, Ljava9/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Ljava9/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    iget-boolean v0, p0, Ljava9/util/stream/SliceOps$SliceTask;->canceled:Z

    if-eqz v0, :cond_0

    iput-wide v1, p0, Ljava9/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    invoke-virtual {p0}, Ljava9/util/stream/SliceOps$SliceTask;->getEmptyResult()Ljava9/util/stream/Node;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-wide v3, p0, Ljava9/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava9/util/stream/SliceOps$SliceTask;->getEmptyResult()Ljava9/util/stream/Node;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ljava9/util/stream/SliceOps$SliceTask;->leftChild:Ljava9/util/stream/AbstractTask;

    check-cast v0, Ljava9/util/stream/SliceOps$SliceTask;

    iget-wide v3, v0, Ljava9/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    iget-object v0, p0, Ljava9/util/stream/SliceOps$SliceTask;->rightChild:Ljava9/util/stream/AbstractTask;

    check-cast v0, Ljava9/util/stream/SliceOps$SliceTask;

    invoke-virtual {v0}, Ljava9/util/stream/SliceOps$SliceTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava9/util/stream/Node;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ljava9/util/stream/SliceOps$SliceTask;->op:Ljava9/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Ljava9/util/stream/AbstractPipeline;->getOutputShape()Ljava9/util/stream/StreamShape;

    move-result-object v0

    iget-object v3, p0, Ljava9/util/stream/SliceOps$SliceTask;->leftChild:Ljava9/util/stream/AbstractTask;

    check-cast v3, Ljava9/util/stream/SliceOps$SliceTask;

    invoke-virtual {v3}, Ljava9/util/stream/SliceOps$SliceTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava9/util/stream/Node;

    iget-object v4, p0, Ljava9/util/stream/SliceOps$SliceTask;->rightChild:Ljava9/util/stream/AbstractTask;

    check-cast v4, Ljava9/util/stream/SliceOps$SliceTask;

    invoke-virtual {v4}, Ljava9/util/stream/SliceOps$SliceTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava9/util/stream/Node;

    invoke-static {v0, v3, v4}, Ljava9/util/stream/Nodes;->conc(Ljava9/util/stream/StreamShape;Ljava9/util/stream/Node;Ljava9/util/stream/Node;)Ljava9/util/stream/Node;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Ljava9/util/stream/SliceOps$SliceTask;->isRoot()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v0}, Ljava9/util/stream/SliceOps$SliceTask;->doTruncate(Ljava9/util/stream/Node;)Ljava9/util/stream/Node;

    move-result-object v0

    :cond_3
    invoke-virtual {p0, v0}, Ljava9/util/stream/SliceOps$SliceTask;->setLocalResult(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava9/util/stream/SliceOps$SliceTask;->completed:Z

    :cond_4
    iget-wide v3, p0, Ljava9/util/stream/SliceOps$SliceTask;->targetSize:J

    cmp-long v0, v3, v1

    if-ltz v0, :cond_5

    invoke-virtual {p0}, Ljava9/util/stream/SliceOps$SliceTask;->isRoot()Z

    move-result v0

    if-nez v0, :cond_5

    iget-wide v0, p0, Ljava9/util/stream/SliceOps$SliceTask;->targetOffset:J

    iget-wide v2, p0, Ljava9/util/stream/SliceOps$SliceTask;->targetSize:J

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Ljava9/util/stream/SliceOps$SliceTask;->isLeftCompleted(J)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ljava9/util/stream/SliceOps$SliceTask;->cancelLaterNodes()V

    :cond_5
    invoke-super {p0, p1}, Ljava9/util/stream/AbstractShortCircuitTask;->onCompletion(Ljava9/util/concurrent/CountedCompleter;)V

    return-void
.end method
