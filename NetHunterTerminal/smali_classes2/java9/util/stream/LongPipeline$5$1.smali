.class Ljava9/util/stream/LongPipeline$5$1;
.super Ljava9/util/stream/Sink$ChainedLong;
.source "LongPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava9/util/stream/LongPipeline$5;->opWrapSink(ILjava9/util/stream/Sink;)Ljava9/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava9/util/stream/Sink$ChainedLong<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava9/util/stream/LongPipeline$5;


# direct methods
.method constructor <init>(Ljava9/util/stream/LongPipeline$5;Ljava9/util/stream/Sink;)V
    .locals 0

    iput-object p1, p0, Ljava9/util/stream/LongPipeline$5$1;->this$1:Ljava9/util/stream/LongPipeline$5;

    invoke-direct {p0, p2}, Ljava9/util/stream/Sink$ChainedLong;-><init>(Ljava9/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 2

    iget-object v0, p0, Ljava9/util/stream/LongPipeline$5$1;->downstream:Ljava9/util/stream/Sink;

    iget-object v1, p0, Ljava9/util/stream/LongPipeline$5$1;->this$1:Ljava9/util/stream/LongPipeline$5;

    iget-object v1, v1, Ljava9/util/stream/LongPipeline$5;->val$mapper:Ljava9/util/function/LongToDoubleFunction;

    invoke-interface {v1, p1, p2}, Ljava9/util/function/LongToDoubleFunction;->applyAsDouble(J)D

    move-result-wide p1

    invoke-interface {v0, p1, p2}, Ljava9/util/stream/Sink;->accept(D)V

    return-void
.end method
