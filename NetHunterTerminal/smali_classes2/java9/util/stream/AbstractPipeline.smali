.class abstract Ljava9/util/stream/AbstractPipeline;
.super Ljava9/util/stream/PipelineHelper;
.source "AbstractPipeline.java"

# interfaces
.implements Ljava9/util/stream/BaseStream;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        "E_OUT:",
        "Ljava/lang/Object;",
        "S::",
        "Ljava9/util/stream/BaseStream<",
        "TE_OUT;TS;>;>",
        "Ljava9/util/stream/PipelineHelper<",
        "TE_OUT;>;",
        "Ljava9/util/stream/BaseStream<",
        "TE_OUT;TS;>;"
    }
.end annotation


# static fields
.field private static final MSG_CONSUMED:Ljava/lang/String; = "source already consumed or closed"

.field private static final MSG_STREAM_LINKED:Ljava/lang/String; = "stream has already been operated upon or closed"


# instance fields
.field private combinedFlags:I

.field private depth:I

.field private linkedOrConsumed:Z

.field private nextStage:Ljava9/util/stream/AbstractPipeline;

.field private parallel:Z

.field private final previousStage:Ljava9/util/stream/AbstractPipeline;

.field private sourceAnyStateful:Z

.field private sourceCloseAction:Ljava/lang/Runnable;

.field protected final sourceOrOpFlags:I

.field private sourceSpliterator:Ljava9/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/Spliterator<",
            "*>;"
        }
    .end annotation
.end field

.field private final sourceStage:Ljava9/util/stream/AbstractPipeline;

.field private sourceSupplier:Ljava9/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/function/Supplier<",
            "+",
            "Ljava9/util/Spliterator<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava9/util/Spliterator;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/Spliterator<",
            "*>;IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava9/util/stream/PipelineHelper;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava9/util/stream/AbstractPipeline;->previousStage:Ljava9/util/stream/AbstractPipeline;

    iput-object p1, p0, Ljava9/util/stream/AbstractPipeline;->sourceSpliterator:Ljava9/util/Spliterator;

    iput-object p0, p0, Ljava9/util/stream/AbstractPipeline;->sourceStage:Ljava9/util/stream/AbstractPipeline;

    sget p1, Ljava9/util/stream/StreamOpFlag;->STREAM_MASK:I

    and-int/2addr p1, p2

    iput p1, p0, Ljava9/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    shl-int/lit8 p1, p1, 0x1

    not-int p1, p1

    sget p2, Ljava9/util/stream/StreamOpFlag;->INITIAL_OPS_VALUE:I

    and-int/2addr p1, p2

    iput p1, p0, Ljava9/util/stream/AbstractPipeline;->combinedFlags:I

    const/4 p1, 0x0

    iput p1, p0, Ljava9/util/stream/AbstractPipeline;->depth:I

    iput-boolean p3, p0, Ljava9/util/stream/AbstractPipeline;->parallel:Z

    return-void
.end method

.method constructor <init>(Ljava9/util/function/Supplier;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Supplier<",
            "+",
            "Ljava9/util/Spliterator<",
            "*>;>;IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava9/util/stream/PipelineHelper;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava9/util/stream/AbstractPipeline;->previousStage:Ljava9/util/stream/AbstractPipeline;

    iput-object p1, p0, Ljava9/util/stream/AbstractPipeline;->sourceSupplier:Ljava9/util/function/Supplier;

    iput-object p0, p0, Ljava9/util/stream/AbstractPipeline;->sourceStage:Ljava9/util/stream/AbstractPipeline;

    sget p1, Ljava9/util/stream/StreamOpFlag;->STREAM_MASK:I

    and-int/2addr p1, p2

    iput p1, p0, Ljava9/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    shl-int/lit8 p1, p1, 0x1

    not-int p1, p1

    sget p2, Ljava9/util/stream/StreamOpFlag;->INITIAL_OPS_VALUE:I

    and-int/2addr p1, p2

    iput p1, p0, Ljava9/util/stream/AbstractPipeline;->combinedFlags:I

    const/4 p1, 0x0

    iput p1, p0, Ljava9/util/stream/AbstractPipeline;->depth:I

    iput-boolean p3, p0, Ljava9/util/stream/AbstractPipeline;->parallel:Z

    return-void
.end method

.method constructor <init>(Ljava9/util/stream/AbstractPipeline;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/stream/AbstractPipeline<",
            "*TE_IN;*>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava9/util/stream/PipelineHelper;-><init>()V

    iget-boolean v0, p1, Ljava9/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p1, Ljava9/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    iput-object p0, p1, Ljava9/util/stream/AbstractPipeline;->nextStage:Ljava9/util/stream/AbstractPipeline;

    iput-object p1, p0, Ljava9/util/stream/AbstractPipeline;->previousStage:Ljava9/util/stream/AbstractPipeline;

    sget v1, Ljava9/util/stream/StreamOpFlag;->OP_MASK:I

    and-int/2addr v1, p2

    iput v1, p0, Ljava9/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    iget v1, p1, Ljava9/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-static {p2, v1}, Ljava9/util/stream/StreamOpFlag;->combineOpFlags(II)I

    move-result p2

    iput p2, p0, Ljava9/util/stream/AbstractPipeline;->combinedFlags:I

    iget-object p2, p1, Ljava9/util/stream/AbstractPipeline;->sourceStage:Ljava9/util/stream/AbstractPipeline;

    iput-object p2, p0, Ljava9/util/stream/AbstractPipeline;->sourceStage:Ljava9/util/stream/AbstractPipeline;

    invoke-virtual {p0}, Ljava9/util/stream/AbstractPipeline;->opIsStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v0, p2, Ljava9/util/stream/AbstractPipeline;->sourceAnyStateful:Z

    :cond_0
    iget p1, p1, Ljava9/util/stream/AbstractPipeline;->depth:I

    add-int/2addr p1, v0

    iput p1, p0, Ljava9/util/stream/AbstractPipeline;->depth:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "stream has already been operated upon or closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic lambda$opEvaluateParallelLazy$43(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic lambda$wrapSpliterator$42(Ljava9/util/Spliterator;)Ljava9/util/Spliterator;
    .locals 0

    return-object p0
.end method

.method private sourceSpliterator(I)Ljava9/util/Spliterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava9/util/Spliterator<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Ljava9/util/stream/AbstractPipeline;->sourceStage:Ljava9/util/stream/AbstractPipeline;

    iget-object v1, v0, Ljava9/util/stream/AbstractPipeline;->sourceSpliterator:Ljava9/util/Spliterator;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-object v2, v0, Ljava9/util/stream/AbstractPipeline;->sourceSpliterator:Ljava9/util/Spliterator;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Ljava9/util/stream/AbstractPipeline;->sourceSupplier:Ljava9/util/function/Supplier;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava9/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava9/util/Spliterator;

    iget-object v0, p0, Ljava9/util/stream/AbstractPipeline;->sourceStage:Ljava9/util/stream/AbstractPipeline;

    iput-object v2, v0, Ljava9/util/stream/AbstractPipeline;->sourceSupplier:Ljava9/util/function/Supplier;

    :goto_0
    invoke-virtual {p0}, Ljava9/util/stream/AbstractPipeline;->isParallel()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ljava9/util/stream/AbstractPipeline;->sourceStage:Ljava9/util/stream/AbstractPipeline;

    iget-boolean v2, v0, Ljava9/util/stream/AbstractPipeline;->sourceAnyStateful:Z

    if-eqz v2, :cond_4

    iget-object v2, v0, Ljava9/util/stream/AbstractPipeline;->nextStage:Ljava9/util/stream/AbstractPipeline;

    const/4 v3, 0x1

    :goto_1
    if-eq v0, p0, :cond_4

    iget v4, v2, Ljava9/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    invoke-virtual {v2}, Ljava9/util/stream/AbstractPipeline;->opIsStateful()Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v3, Ljava9/util/stream/StreamOpFlag;->SHORT_CIRCUIT:Ljava9/util/stream/StreamOpFlag;

    invoke-virtual {v3, v4}, Ljava9/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v3

    if-eqz v3, :cond_1

    sget v3, Ljava9/util/stream/StreamOpFlag;->IS_SHORT_CIRCUIT:I

    not-int v3, v3

    and-int/2addr v4, v3

    :cond_1
    invoke-virtual {v2, v0, v1}, Ljava9/util/stream/AbstractPipeline;->opEvaluateParallelLazy(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;)Ljava9/util/Spliterator;

    move-result-object v1

    const/16 v3, 0x40

    invoke-interface {v1, v3}, Ljava9/util/Spliterator;->hasCharacteristics(I)Z

    move-result v3

    if-eqz v3, :cond_2

    sget v3, Ljava9/util/stream/StreamOpFlag;->NOT_SIZED:I

    not-int v3, v3

    and-int/2addr v3, v4

    sget v4, Ljava9/util/stream/StreamOpFlag;->IS_SIZED:I

    goto :goto_2

    :cond_2
    sget v3, Ljava9/util/stream/StreamOpFlag;->IS_SIZED:I

    not-int v3, v3

    and-int/2addr v3, v4

    sget v4, Ljava9/util/stream/StreamOpFlag;->NOT_SIZED:I

    :goto_2
    or-int/2addr v3, v4

    move v4, v3

    const/4 v3, 0x0

    :cond_3
    add-int/lit8 v5, v3, 0x1

    iput v3, v2, Ljava9/util/stream/AbstractPipeline;->depth:I

    iget v0, v0, Ljava9/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-static {v4, v0}, Ljava9/util/stream/StreamOpFlag;->combineOpFlags(II)I

    move-result v0

    iput v0, v2, Ljava9/util/stream/AbstractPipeline;->combinedFlags:I

    iget-object v0, v2, Ljava9/util/stream/AbstractPipeline;->nextStage:Ljava9/util/stream/AbstractPipeline;

    move v3, v5

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    iget v0, p0, Ljava9/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-static {p1, v0}, Ljava9/util/stream/StreamOpFlag;->combineOpFlags(II)I

    move-result p1

    iput p1, p0, Ljava9/util/stream/AbstractPipeline;->combinedFlags:I

    :cond_5
    return-object v1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "source already consumed or closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava9/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ljava9/util/stream/AbstractPipeline;->sourceSupplier:Ljava9/util/function/Supplier;

    iput-object v0, p0, Ljava9/util/stream/AbstractPipeline;->sourceSpliterator:Ljava9/util/Spliterator;

    iget-object v1, p0, Ljava9/util/stream/AbstractPipeline;->sourceStage:Ljava9/util/stream/AbstractPipeline;

    iget-object v2, v1, Ljava9/util/stream/AbstractPipeline;->sourceCloseAction:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    iput-object v0, v1, Ljava9/util/stream/AbstractPipeline;->sourceCloseAction:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method final copyInto(Ljava9/util/stream/Sink;Ljava9/util/Spliterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/stream/Sink<",
            "TP_IN;>;",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava9/util/stream/StreamOpFlag;->SHORT_CIRCUIT:Ljava9/util/stream/StreamOpFlag;

    invoke-virtual {p0}, Ljava9/util/stream/AbstractPipeline;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava9/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Ljava9/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava9/util/stream/Sink;->begin(J)V

    invoke-interface {p2, p1}, Ljava9/util/Spliterator;->forEachRemaining(Ljava9/util/function/Consumer;)V

    invoke-interface {p1}, Ljava9/util/stream/Sink;->end()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava9/util/stream/AbstractPipeline;->copyIntoWithCancel(Ljava9/util/stream/Sink;Ljava9/util/Spliterator;)Z

    :goto_0
    return-void
.end method

.method final copyIntoWithCancel(Ljava9/util/stream/Sink;Ljava9/util/Spliterator;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/stream/Sink<",
            "TP_IN;>;",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;)Z"
        }
    .end annotation

    move-object v0, p0

    :goto_0
    iget v1, v0, Ljava9/util/stream/AbstractPipeline;->depth:I

    if-lez v1, :cond_0

    iget-object v0, v0, Ljava9/util/stream/AbstractPipeline;->previousStage:Ljava9/util/stream/AbstractPipeline;

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava9/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v1

    invoke-interface {p1, v1, v2}, Ljava9/util/stream/Sink;->begin(J)V

    invoke-virtual {v0, p2, p1}, Ljava9/util/stream/AbstractPipeline;->forEachWithCancel(Ljava9/util/Spliterator;Ljava9/util/stream/Sink;)Z

    move-result p2

    invoke-interface {p1}, Ljava9/util/stream/Sink;->end()V

    return p2
.end method

.method final evaluate(Ljava9/util/stream/TerminalOp;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/stream/TerminalOp<",
            "TE_OUT;TR;>;)TR;"
        }
    .end annotation

    iget-boolean v0, p0, Ljava9/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava9/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    invoke-virtual {p0}, Ljava9/util/stream/AbstractPipeline;->isParallel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava9/util/stream/TerminalOp;->getOpFlags()I

    move-result v0

    invoke-direct {p0, v0}, Ljava9/util/stream/AbstractPipeline;->sourceSpliterator(I)Ljava9/util/Spliterator;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava9/util/stream/TerminalOp;->evaluateParallel(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava9/util/stream/TerminalOp;->getOpFlags()I

    move-result v0

    invoke-direct {p0, v0}, Ljava9/util/stream/AbstractPipeline;->sourceSpliterator(I)Ljava9/util/Spliterator;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava9/util/stream/TerminalOp;->evaluateSequential(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "stream has already been operated upon or closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final evaluate(Ljava9/util/Spliterator;ZLjava9/util/function/IntFunction;)Ljava9/util/stream/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;Z",
            "Ljava9/util/function/IntFunction<",
            "[TE_OUT;>;)",
            "Ljava9/util/stream/Node<",
            "TE_OUT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava9/util/stream/AbstractPipeline;->isParallel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p0, p1, p2, p3}, Ljava9/util/stream/AbstractPipeline;->evaluateToNode(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;ZLjava9/util/function/IntFunction;)Ljava9/util/stream/Node;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Ljava9/util/stream/AbstractPipeline;->exactOutputSizeIfKnown(Ljava9/util/Spliterator;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p3}, Ljava9/util/stream/AbstractPipeline;->makeNodeBuilder(JLjava9/util/function/IntFunction;)Ljava9/util/stream/Node$Builder;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Ljava9/util/stream/AbstractPipeline;->wrapAndCopyInto(Ljava9/util/stream/Sink;Ljava9/util/Spliterator;)Ljava9/util/stream/Sink;

    move-result-object p1

    check-cast p1, Ljava9/util/stream/Node$Builder;

    invoke-interface {p1}, Ljava9/util/stream/Node$Builder;->build()Ljava9/util/stream/Node;

    move-result-object p1

    return-object p1
.end method

.method final evaluateToArrayNode(Ljava9/util/function/IntFunction;)Ljava9/util/stream/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/IntFunction<",
            "[TE_OUT;>;)",
            "Ljava9/util/stream/Node<",
            "TE_OUT;>;"
        }
    .end annotation

    iget-boolean v0, p0, Ljava9/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava9/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    invoke-virtual {p0}, Ljava9/util/stream/AbstractPipeline;->isParallel()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava9/util/stream/AbstractPipeline;->previousStage:Ljava9/util/stream/AbstractPipeline;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava9/util/stream/AbstractPipeline;->opIsStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    iput v2, p0, Ljava9/util/stream/AbstractPipeline;->depth:I

    iget-object v0, p0, Ljava9/util/stream/AbstractPipeline;->previousStage:Ljava9/util/stream/AbstractPipeline;

    invoke-direct {v0, v2}, Ljava9/util/stream/AbstractPipeline;->sourceSpliterator(I)Ljava9/util/Spliterator;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Ljava9/util/stream/AbstractPipeline;->opEvaluateParallel(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;Ljava9/util/function/IntFunction;)Ljava9/util/stream/Node;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, v2}, Ljava9/util/stream/AbstractPipeline;->sourceSpliterator(I)Ljava9/util/Spliterator;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Ljava9/util/stream/AbstractPipeline;->evaluate(Ljava9/util/Spliterator;ZLjava9/util/function/IntFunction;)Ljava9/util/stream/Node;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "stream has already been operated upon or closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method abstract evaluateToNode(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;ZLjava9/util/function/IntFunction;)Ljava9/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/stream/PipelineHelper<",
            "TE_OUT;>;",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;Z",
            "Ljava9/util/function/IntFunction<",
            "[TE_OUT;>;)",
            "Ljava9/util/stream/Node<",
            "TE_OUT;>;"
        }
    .end annotation
.end method

.method final exactOutputSizeIfKnown(Ljava9/util/Spliterator;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;)J"
        }
    .end annotation

    sget-object v0, Ljava9/util/stream/StreamOpFlag;->SIZED:Ljava9/util/stream/StreamOpFlag;

    invoke-virtual {p0}, Ljava9/util/stream/AbstractPipeline;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava9/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava9/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method abstract forEachWithCancel(Ljava9/util/Spliterator;Ljava9/util/stream/Sink;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/Spliterator<",
            "TE_OUT;>;",
            "Ljava9/util/stream/Sink<",
            "TE_OUT;>;)Z"
        }
    .end annotation
.end method

.method abstract getOutputShape()Ljava9/util/stream/StreamShape;
.end method

.method final getSourceShape()Ljava9/util/stream/StreamShape;
    .locals 2

    move-object v0, p0

    :goto_0
    iget v1, v0, Ljava9/util/stream/AbstractPipeline;->depth:I

    if-lez v1, :cond_0

    iget-object v0, v0, Ljava9/util/stream/AbstractPipeline;->previousStage:Ljava9/util/stream/AbstractPipeline;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava9/util/stream/AbstractPipeline;->getOutputShape()Ljava9/util/stream/StreamShape;

    move-result-object v0

    return-object v0
.end method

.method final getStreamAndOpFlags()I
    .locals 1

    iget v0, p0, Ljava9/util/stream/AbstractPipeline;->combinedFlags:I

    return v0
.end method

.method final getStreamFlags()I
    .locals 1

    iget v0, p0, Ljava9/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-static {v0}, Ljava9/util/stream/StreamOpFlag;->toStreamFlags(I)I

    move-result v0

    return v0
.end method

.method final isOrdered()Z
    .locals 2

    sget-object v0, Ljava9/util/stream/StreamOpFlag;->ORDERED:Ljava9/util/stream/StreamOpFlag;

    iget v1, p0, Ljava9/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-virtual {v0, v1}, Ljava9/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    return v0
.end method

.method public final isParallel()Z
    .locals 1

    iget-object v0, p0, Ljava9/util/stream/AbstractPipeline;->sourceStage:Ljava9/util/stream/AbstractPipeline;

    iget-boolean v0, v0, Ljava9/util/stream/AbstractPipeline;->parallel:Z

    return v0
.end method

.method synthetic lambda$spliterator$41$java9-util-stream-AbstractPipeline()Ljava9/util/Spliterator;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava9/util/stream/AbstractPipeline;->sourceSpliterator(I)Ljava9/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method abstract lazySpliterator(Ljava9/util/function/Supplier;)Ljava9/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Supplier<",
            "+",
            "Ljava9/util/Spliterator<",
            "TE_OUT;>;>;)",
            "Ljava9/util/Spliterator<",
            "TE_OUT;>;"
        }
    .end annotation
.end method

.method abstract makeNodeBuilder(JLjava9/util/function/IntFunction;)Ljava9/util/stream/Node$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava9/util/function/IntFunction<",
            "[TE_OUT;>;)",
            "Ljava9/util/stream/Node$Builder<",
            "TE_OUT;>;"
        }
    .end annotation
.end method

.method public onClose(Ljava/lang/Runnable;)Ljava9/util/stream/BaseStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")TS;"
        }
    .end annotation

    iget-boolean v0, p0, Ljava9/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ljava9/util/stream/AbstractPipeline;->sourceStage:Ljava9/util/stream/AbstractPipeline;

    iget-object v1, v0, Ljava9/util/stream/AbstractPipeline;->sourceCloseAction:Ljava/lang/Runnable;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1, p1}, Ljava9/util/stream/Streams;->composeWithExceptions(Ljava/lang/Runnable;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    :goto_0
    iput-object p1, v0, Ljava9/util/stream/AbstractPipeline;->sourceCloseAction:Ljava/lang/Runnable;

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "stream has already been operated upon or closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method opEvaluateParallel(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;Ljava9/util/function/IntFunction;)Ljava9/util/stream/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/stream/PipelineHelper<",
            "TE_OUT;>;",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;",
            "Ljava9/util/function/IntFunction<",
            "[TE_OUT;>;)",
            "Ljava9/util/stream/Node<",
            "TE_OUT;>;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Parallel evaluation is not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method opEvaluateParallelLazy(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;)Ljava9/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/stream/PipelineHelper<",
            "TE_OUT;>;",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava9/util/Spliterator<",
            "TE_OUT;>;"
        }
    .end annotation

    new-instance v0, Ljava9/util/stream/AbstractPipeline$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava9/util/stream/AbstractPipeline$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Ljava9/util/stream/AbstractPipeline;->opEvaluateParallel(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;Ljava9/util/function/IntFunction;)Ljava9/util/stream/Node;

    move-result-object p1

    invoke-interface {p1}, Ljava9/util/stream/Node;->spliterator()Ljava9/util/Spliterator;

    move-result-object p1

    return-object p1
.end method

.method abstract opIsStateful()Z
.end method

.method abstract opWrapSink(ILjava9/util/stream/Sink;)Ljava9/util/stream/Sink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava9/util/stream/Sink<",
            "TE_OUT;>;)",
            "Ljava9/util/stream/Sink<",
            "TE_IN;>;"
        }
    .end annotation
.end method

.method public final parallel()Ljava9/util/stream/BaseStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    iget-object v0, p0, Ljava9/util/stream/AbstractPipeline;->sourceStage:Ljava9/util/stream/AbstractPipeline;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ljava9/util/stream/AbstractPipeline;->parallel:Z

    return-object p0
.end method

.method public final sequential()Ljava9/util/stream/BaseStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    iget-object v0, p0, Ljava9/util/stream/AbstractPipeline;->sourceStage:Ljava9/util/stream/AbstractPipeline;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ljava9/util/stream/AbstractPipeline;->parallel:Z

    return-object p0
.end method

.method final sourceStageSpliterator()Ljava9/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/Spliterator<",
            "TE_OUT;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava9/util/stream/AbstractPipeline;->sourceStage:Ljava9/util/stream/AbstractPipeline;

    if-ne p0, v0, :cond_3

    iget-boolean v1, p0, Ljava9/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava9/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    iget-object v1, v0, Ljava9/util/stream/AbstractPipeline;->sourceSpliterator:Ljava9/util/Spliterator;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-object v2, v0, Ljava9/util/stream/AbstractPipeline;->sourceSpliterator:Ljava9/util/Spliterator;

    return-object v1

    :cond_0
    iget-object v0, v0, Ljava9/util/stream/AbstractPipeline;->sourceSupplier:Ljava9/util/function/Supplier;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava9/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava9/util/Spliterator;

    iget-object v1, p0, Ljava9/util/stream/AbstractPipeline;->sourceStage:Ljava9/util/stream/AbstractPipeline;

    iput-object v2, v1, Ljava9/util/stream/AbstractPipeline;->sourceSupplier:Ljava9/util/function/Supplier;

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "source already consumed or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stream has already been operated upon or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public spliterator()Ljava9/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/Spliterator<",
            "TE_OUT;>;"
        }
    .end annotation

    iget-boolean v0, p0, Ljava9/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava9/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    iget-object v0, p0, Ljava9/util/stream/AbstractPipeline;->sourceStage:Ljava9/util/stream/AbstractPipeline;

    if-ne p0, v0, :cond_2

    iget-object v1, v0, Ljava9/util/stream/AbstractPipeline;->sourceSpliterator:Ljava9/util/Spliterator;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-object v2, v0, Ljava9/util/stream/AbstractPipeline;->sourceSpliterator:Ljava9/util/Spliterator;

    return-object v1

    :cond_0
    iget-object v1, v0, Ljava9/util/stream/AbstractPipeline;->sourceSupplier:Ljava9/util/function/Supplier;

    if-eqz v1, :cond_1

    iput-object v2, v0, Ljava9/util/stream/AbstractPipeline;->sourceSupplier:Ljava9/util/function/Supplier;

    invoke-virtual {p0, v1}, Ljava9/util/stream/AbstractPipeline;->lazySpliterator(Ljava9/util/function/Supplier;)Ljava9/util/Spliterator;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "source already consumed or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava9/util/stream/AbstractPipeline$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Ljava9/util/stream/AbstractPipeline$$ExternalSyntheticLambda2;-><init>(Ljava9/util/stream/AbstractPipeline;)V

    invoke-virtual {p0}, Ljava9/util/stream/AbstractPipeline;->isParallel()Z

    move-result v1

    invoke-virtual {p0, p0, v0, v1}, Ljava9/util/stream/AbstractPipeline;->wrap(Ljava9/util/stream/PipelineHelper;Ljava9/util/function/Supplier;Z)Ljava9/util/Spliterator;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stream has already been operated upon or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract wrap(Ljava9/util/stream/PipelineHelper;Ljava9/util/function/Supplier;Z)Ljava9/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/stream/PipelineHelper<",
            "TE_OUT;>;",
            "Ljava9/util/function/Supplier<",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;>;Z)",
            "Ljava9/util/Spliterator<",
            "TE_OUT;>;"
        }
    .end annotation
.end method

.method final wrapAndCopyInto(Ljava9/util/stream/Sink;Ljava9/util/Spliterator;)Ljava9/util/stream/Sink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            "S_::",
            "Ljava9/util/stream/Sink<",
            "TE_OUT;>;>(TS_;",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;)TS_;"
        }
    .end annotation

    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava9/util/stream/Sink;

    invoke-virtual {p0, v0}, Ljava9/util/stream/AbstractPipeline;->wrapSink(Ljava9/util/stream/Sink;)Ljava9/util/stream/Sink;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljava9/util/stream/AbstractPipeline;->copyInto(Ljava9/util/stream/Sink;Ljava9/util/Spliterator;)V

    return-object p1
.end method

.method final wrapSink(Ljava9/util/stream/Sink;)Ljava9/util/stream/Sink;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/stream/Sink<",
            "TE_OUT;>;)",
            "Ljava9/util/stream/Sink<",
            "TP_IN;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    :goto_0
    iget v1, v0, Ljava9/util/stream/AbstractPipeline;->depth:I

    if-lez v1, :cond_0

    iget-object v1, v0, Ljava9/util/stream/AbstractPipeline;->previousStage:Ljava9/util/stream/AbstractPipeline;

    iget v1, v1, Ljava9/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-virtual {v0, v1, p1}, Ljava9/util/stream/AbstractPipeline;->opWrapSink(ILjava9/util/stream/Sink;)Ljava9/util/stream/Sink;

    move-result-object p1

    iget-object v0, v0, Ljava9/util/stream/AbstractPipeline;->previousStage:Ljava9/util/stream/AbstractPipeline;

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method final wrapSpliterator(Ljava9/util/Spliterator;)Ljava9/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava9/util/Spliterator<",
            "TE_OUT;>;"
        }
    .end annotation

    iget v0, p0, Ljava9/util/stream/AbstractPipeline;->depth:I

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Ljava9/util/stream/AbstractPipeline$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Ljava9/util/stream/AbstractPipeline$$ExternalSyntheticLambda0;-><init>(Ljava9/util/Spliterator;)V

    invoke-virtual {p0}, Ljava9/util/stream/AbstractPipeline;->isParallel()Z

    move-result p1

    invoke-virtual {p0, p0, v0, p1}, Ljava9/util/stream/AbstractPipeline;->wrap(Ljava9/util/stream/PipelineHelper;Ljava9/util/function/Supplier;Z)Ljava9/util/Spliterator;

    move-result-object p1

    return-object p1
.end method
