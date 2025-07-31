.class public interface abstract Lcom/offsec/nethunter/Executor/KaliServicesExecutor$KaliServicesExecutorListener;
.super Ljava/lang/Object;
.source "KaliServicesExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/Executor/KaliServicesExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "KaliServicesExecutorListener"
.end annotation


# virtual methods
.method public abstract onTaskFinished(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/KaliServicesModel;",
            ">;)V"
        }
    .end annotation
.end method
