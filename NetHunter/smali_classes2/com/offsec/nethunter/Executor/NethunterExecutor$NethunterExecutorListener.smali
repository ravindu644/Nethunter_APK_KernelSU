.class public interface abstract Lcom/offsec/nethunter/Executor/NethunterExecutor$NethunterExecutorListener;
.super Ljava/lang/Object;
.source "NethunterExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/Executor/NethunterExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NethunterExecutorListener"
.end annotation


# virtual methods
.method public abstract onFinished(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/NethunterModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onPrepare()V
.end method
