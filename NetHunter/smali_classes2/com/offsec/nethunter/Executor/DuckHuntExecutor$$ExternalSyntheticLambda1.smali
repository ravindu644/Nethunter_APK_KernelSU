.class public final synthetic Lcom/offsec/nethunter/Executor/DuckHuntExecutor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/Executor/DuckHuntExecutor;

.field public final synthetic f$1:I

.field public final synthetic f$2:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/Executor/DuckHuntExecutor;I[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/Executor/DuckHuntExecutor$$ExternalSyntheticLambda1;->f$0:Lcom/offsec/nethunter/Executor/DuckHuntExecutor;

    iput p2, p0, Lcom/offsec/nethunter/Executor/DuckHuntExecutor$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/offsec/nethunter/Executor/DuckHuntExecutor$$ExternalSyntheticLambda1;->f$2:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/Executor/DuckHuntExecutor$$ExternalSyntheticLambda1;->f$0:Lcom/offsec/nethunter/Executor/DuckHuntExecutor;

    iget v1, p0, Lcom/offsec/nethunter/Executor/DuckHuntExecutor$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Lcom/offsec/nethunter/Executor/DuckHuntExecutor$$ExternalSyntheticLambda1;->f$2:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/offsec/nethunter/Executor/DuckHuntExecutor;->lambda$execute$1$com-offsec-nethunter-Executor-DuckHuntExecutor(I[Ljava/lang/Object;)V

    return-void
.end method
