.class public interface abstract Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;
.super Ljava/lang/Object;
.source "ChrootManagerExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ChrootManagerExecutorListener"
.end annotation


# virtual methods
.method public abstract onExecutorFinished(ILjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onExecutorPrepare()V
.end method

.method public abstract onExecutorProgressUpdate(I)V
.end method
