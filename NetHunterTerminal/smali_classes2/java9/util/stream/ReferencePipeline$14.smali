.class Ljava9/util/stream/ReferencePipeline$14;
.super Ljava9/util/stream/DoublePipeline$StatelessOp;
.source "ReferencePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava9/util/stream/ReferencePipeline;->mapMultiToDouble(Ljava9/util/function/BiConsumer;)Ljava9/util/stream/DoubleStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava9/util/stream/DoublePipeline$StatelessOp<",
        "TP_OUT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava9/util/stream/ReferencePipeline;

.field final synthetic val$mapper:Ljava9/util/function/BiConsumer;


# direct methods
.method constructor <init>(Ljava9/util/stream/ReferencePipeline;Ljava9/util/stream/AbstractPipeline;Ljava9/util/stream/StreamShape;ILjava9/util/function/BiConsumer;)V
    .locals 0

    iput-object p1, p0, Ljava9/util/stream/ReferencePipeline$14;->this$0:Ljava9/util/stream/ReferencePipeline;

    iput-object p5, p0, Ljava9/util/stream/ReferencePipeline$14;->val$mapper:Ljava9/util/function/BiConsumer;

    invoke-direct {p0, p2, p3, p4}, Ljava9/util/stream/DoublePipeline$StatelessOp;-><init>(Ljava9/util/stream/AbstractPipeline;Ljava9/util/stream/StreamShape;I)V

    return-void
.end method


# virtual methods
.method opWrapSink(ILjava9/util/stream/Sink;)Ljava9/util/stream/Sink;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava9/util/stream/Sink<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava9/util/stream/Sink<",
            "TP_OUT;>;"
        }
    .end annotation

    new-instance p1, Ljava9/util/stream/ReferencePipeline$14$1;

    invoke-direct {p1, p0, p2}, Ljava9/util/stream/ReferencePipeline$14$1;-><init>(Ljava9/util/stream/ReferencePipeline$14;Ljava9/util/stream/Sink;)V

    return-object p1
.end method
