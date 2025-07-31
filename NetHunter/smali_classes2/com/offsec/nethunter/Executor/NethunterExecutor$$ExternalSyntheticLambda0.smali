.class public final synthetic Lcom/offsec/nethunter/Executor/NethunterExecutor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/Executor/NethunterExecutor$NethunterExecutorListener;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/Executor/NethunterExecutor$NethunterExecutorListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor$$ExternalSyntheticLambda0;->f$0:Lcom/offsec/nethunter/Executor/NethunterExecutor$NethunterExecutorListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor$$ExternalSyntheticLambda0;->f$0:Lcom/offsec/nethunter/Executor/NethunterExecutor$NethunterExecutorListener;

    invoke-interface {v0}, Lcom/offsec/nethunter/Executor/NethunterExecutor$NethunterExecutorListener;->onPrepare()V

    return-void
.end method
