.class public final synthetic Ljava9/util/function/IntConsumer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava9/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Ljava9/util/function/IntConsumer;

.field public final synthetic f$1:Ljava9/util/function/IntConsumer;


# direct methods
.method public synthetic constructor <init>(Ljava9/util/function/IntConsumer;Ljava9/util/function/IntConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava9/util/function/IntConsumer$$ExternalSyntheticLambda0;->f$0:Ljava9/util/function/IntConsumer;

    iput-object p2, p0, Ljava9/util/function/IntConsumer$$ExternalSyntheticLambda0;->f$1:Ljava9/util/function/IntConsumer;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 2

    iget-object v0, p0, Ljava9/util/function/IntConsumer$$ExternalSyntheticLambda0;->f$0:Ljava9/util/function/IntConsumer;

    iget-object v1, p0, Ljava9/util/function/IntConsumer$$ExternalSyntheticLambda0;->f$1:Ljava9/util/function/IntConsumer;

    invoke-static {v0, v1, p1}, Ljava9/util/function/IntConsumer$-CC;->$private$lambda$andThen$5(Ljava9/util/function/IntConsumer;Ljava9/util/function/IntConsumer;I)V

    return-void
.end method

.method public synthetic andThen(Ljava9/util/function/IntConsumer;)Ljava9/util/function/IntConsumer;
    .locals 0

    invoke-static {p0, p1}, Ljava9/util/function/IntConsumer$-CC;->$default$andThen(Ljava9/util/function/IntConsumer;Ljava9/util/function/IntConsumer;)Ljava9/util/function/IntConsumer;

    move-result-object p1

    return-object p1
.end method
