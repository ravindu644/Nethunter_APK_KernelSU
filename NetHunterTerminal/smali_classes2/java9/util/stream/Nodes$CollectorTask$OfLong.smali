.class final Ljava9/util/stream/Nodes$CollectorTask$OfLong;
.super Ljava9/util/stream/Nodes$CollectorTask;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/Nodes$CollectorTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava9/util/stream/Nodes$CollectorTask<",
        "TP_IN;",
        "Ljava/lang/Long;",
        "Ljava9/util/stream/Node$OfLong;",
        "Ljava9/util/stream/Node$Builder$OfLong;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/stream/PipelineHelper<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    new-instance v0, Ljava9/util/stream/Nodes$CollectorTask$OfLong$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava9/util/stream/Nodes$CollectorTask$OfLong$$ExternalSyntheticLambda0;-><init>()V

    new-instance v1, Ljava9/util/stream/Nodes$CollectorTask$OfLong$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ljava9/util/stream/Nodes$CollectorTask$OfLong$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Ljava9/util/stream/Nodes$CollectorTask;-><init>(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;Ljava9/util/function/LongFunction;Ljava9/util/function/BinaryOperator;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doLeaf()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Ljava9/util/stream/Nodes$CollectorTask;->doLeaf()Ljava9/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic makeChild(Ljava9/util/Spliterator;)Ljava9/util/stream/AbstractTask;
    .locals 0

    invoke-super {p0, p1}, Ljava9/util/stream/Nodes$CollectorTask;->makeChild(Ljava9/util/Spliterator;)Ljava9/util/stream/Nodes$CollectorTask;

    move-result-object p1

    return-object p1
.end method
