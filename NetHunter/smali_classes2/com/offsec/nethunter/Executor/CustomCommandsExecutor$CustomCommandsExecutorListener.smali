.class public interface abstract Lcom/offsec/nethunter/Executor/CustomCommandsExecutor$CustomCommandsExecutorListener;
.super Ljava/lang/Object;
.source "CustomCommandsExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CustomCommandsExecutorListener"
.end annotation


# virtual methods
.method public abstract onTaskFinished(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/CustomCommandsModel;",
            ">;)V"
        }
    .end annotation
.end method
