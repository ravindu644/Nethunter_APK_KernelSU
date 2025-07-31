.class public final synthetic Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

.field public final synthetic f$1:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$$ExternalSyntheticLambda1;->f$0:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    iput-object p2, p0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$$ExternalSyntheticLambda1;->f$1:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$$ExternalSyntheticLambda1;->f$0:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    iget-object v1, p0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$$ExternalSyntheticLambda1;->f$1:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->lambda$execute$0$com-offsec-nethunter-Executor-ChrootManagerExecutor([Ljava/lang/Object;)V

    return-void
.end method
