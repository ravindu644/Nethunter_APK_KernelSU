.class final Ljava9/util/stream/ReduceOps$12;
.super Ljava9/util/stream/ReduceOps$ReduceOp;
.source "ReduceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava9/util/stream/ReduceOps;->makeLong(Ljava9/util/function/Supplier;Ljava9/util/function/ObjLongConsumer;Ljava9/util/function/BinaryOperator;)Ljava9/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava9/util/stream/ReduceOps$ReduceOp<",
        "Ljava/lang/Long;",
        "TR;",
        "Ljava9/util/stream/ReduceOps$10ReducingSink;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$accumulator:Ljava9/util/function/ObjLongConsumer;

.field final synthetic val$combiner:Ljava9/util/function/BinaryOperator;

.field final synthetic val$supplier:Ljava9/util/function/Supplier;


# direct methods
.method constructor <init>(Ljava9/util/stream/StreamShape;Ljava9/util/function/BinaryOperator;Ljava9/util/function/ObjLongConsumer;Ljava9/util/function/Supplier;)V
    .locals 0

    iput-object p2, p0, Ljava9/util/stream/ReduceOps$12;->val$combiner:Ljava9/util/function/BinaryOperator;

    iput-object p3, p0, Ljava9/util/stream/ReduceOps$12;->val$accumulator:Ljava9/util/function/ObjLongConsumer;

    iput-object p4, p0, Ljava9/util/stream/ReduceOps$12;->val$supplier:Ljava9/util/function/Supplier;

    invoke-direct {p0, p1}, Ljava9/util/stream/ReduceOps$ReduceOp;-><init>(Ljava9/util/stream/StreamShape;)V

    return-void
.end method


# virtual methods
.method public makeSink()Ljava9/util/stream/ReduceOps$10ReducingSink;
    .locals 4

    new-instance v0, Ljava9/util/stream/ReduceOps$10ReducingSink;

    iget-object v1, p0, Ljava9/util/stream/ReduceOps$12;->val$supplier:Ljava9/util/function/Supplier;

    iget-object v2, p0, Ljava9/util/stream/ReduceOps$12;->val$accumulator:Ljava9/util/function/ObjLongConsumer;

    iget-object v3, p0, Ljava9/util/stream/ReduceOps$12;->val$combiner:Ljava9/util/function/BinaryOperator;

    invoke-direct {v0, v1, v2, v3}, Ljava9/util/stream/ReduceOps$10ReducingSink;-><init>(Ljava9/util/function/Supplier;Ljava9/util/function/ObjLongConsumer;Ljava9/util/function/BinaryOperator;)V

    return-object v0
.end method

.method public bridge synthetic makeSink()Ljava9/util/stream/ReduceOps$AccumulatingSink;
    .locals 1

    invoke-virtual {p0}, Ljava9/util/stream/ReduceOps$12;->makeSink()Ljava9/util/stream/ReduceOps$10ReducingSink;

    move-result-object v0

    return-object v0
.end method
