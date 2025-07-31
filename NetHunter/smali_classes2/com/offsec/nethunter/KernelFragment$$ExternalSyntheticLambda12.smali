.class public final synthetic Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/KernelFragment;

.field public final synthetic f$1:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/KernelFragment;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda12;->f$0:Lcom/offsec/nethunter/KernelFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda12;->f$1:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda12;->f$0:Lcom/offsec/nethunter/KernelFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda12;->f$1:Landroid/widget/EditText;

    invoke-virtual {v0, v1, p1}, Lcom/offsec/nethunter/KernelFragment;->lambda$onCreateView$2$com-offsec-nethunter-KernelFragment(Landroid/widget/EditText;Landroid/view/View;)V

    return-void
.end method
