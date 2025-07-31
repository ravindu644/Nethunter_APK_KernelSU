.class public final synthetic Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/KernelFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/KernelFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda7;->f$0:Lcom/offsec/nethunter/KernelFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda7;->f$0:Lcom/offsec/nethunter/KernelFragment;

    invoke-virtual {v0}, Lcom/offsec/nethunter/KernelFragment;->lambda$checkKernel$7$com-offsec-nethunter-KernelFragment()V

    return-void
.end method
