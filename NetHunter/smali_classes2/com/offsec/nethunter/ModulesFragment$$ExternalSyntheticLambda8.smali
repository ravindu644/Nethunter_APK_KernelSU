.class public final synthetic Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/ModulesFragment;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f$2:Landroid/widget/ListView;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/ModulesFragment;Ljava/util/concurrent/atomic/AtomicReference;Landroid/widget/ListView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda8;->f$0:Lcom/offsec/nethunter/ModulesFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda8;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda8;->f$2:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda8;->f$0:Lcom/offsec/nethunter/ModulesFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda8;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda8;->f$2:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2}, Lcom/offsec/nethunter/ModulesFragment;->lambda$refreshModules$14$com-offsec-nethunter-ModulesFragment(Ljava/util/concurrent/atomic/AtomicReference;Landroid/widget/ListView;)V

    return-void
.end method
