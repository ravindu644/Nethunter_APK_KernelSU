.class final Ljava9/util/concurrent/ForkJoinTask$RunnableExecuteAction;
.super Ljava9/util/concurrent/ForkJoinTask;
.source "ForkJoinTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/concurrent/ForkJoinTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RunnableExecuteAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava9/util/concurrent/ForkJoinTask<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x489d6925990d6e4eL


# instance fields
.field final runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava9/util/concurrent/ForkJoinTask;-><init>()V

    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    iput-object p1, p0, Ljava9/util/concurrent/ForkJoinTask$RunnableExecuteAction;->runnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final exec()Z
    .locals 1

    iget-object v0, p0, Ljava9/util/concurrent/ForkJoinTask$RunnableExecuteAction;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava9/util/concurrent/ForkJoinTask$RunnableExecuteAction;->getRawResult()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final getRawResult()Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method internalPropagateException(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p1}, Ljava9/util/concurrent/ForkJoinTask$RunnableExecuteAction;->rethrow(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic setRawResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ljava9/util/concurrent/ForkJoinTask$RunnableExecuteAction;->setRawResult(Ljava/lang/Void;)V

    return-void
.end method

.method public final setRawResult(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method
