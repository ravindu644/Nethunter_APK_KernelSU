.class public final synthetic Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/KernelFragment;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/KernelFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda0;->f$0:Lcom/offsec/nethunter/KernelFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda0;->f$0:Lcom/offsec/nethunter/KernelFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/offsec/nethunter/KernelFragment;->lambda$checkKernel$4$com-offsec-nethunter-KernelFragment(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
