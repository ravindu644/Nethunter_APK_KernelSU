.class public final synthetic Lcom/offsec/nethunter/Executor/KaliServicesExecutor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/Executor/KaliServicesExecutor;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/Executor/KaliServicesExecutor;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor$$ExternalSyntheticLambda0;->f$0:Lcom/offsec/nethunter/Executor/KaliServicesExecutor;

    iput-object p2, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor$$ExternalSyntheticLambda0;->f$0:Lcom/offsec/nethunter/Executor/KaliServicesExecutor;

    iget-object v1, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->lambda$execute$0$com-offsec-nethunter-Executor-KaliServicesExecutor(Ljava/util/List;)V

    return-void
.end method
