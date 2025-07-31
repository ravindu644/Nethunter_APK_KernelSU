.class public final synthetic Lcom/offsec/nethunter/DeAuthFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/DeAuthFragment;

.field public final synthetic f$1:Landroid/widget/Spinner;

.field public final synthetic f$2:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/DeAuthFragment;Landroid/widget/Spinner;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/DeAuthFragment$$ExternalSyntheticLambda2;->f$0:Lcom/offsec/nethunter/DeAuthFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/DeAuthFragment$$ExternalSyntheticLambda2;->f$1:Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/offsec/nethunter/DeAuthFragment$$ExternalSyntheticLambda2;->f$2:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/DeAuthFragment$$ExternalSyntheticLambda2;->f$0:Lcom/offsec/nethunter/DeAuthFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/DeAuthFragment$$ExternalSyntheticLambda2;->f$1:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/offsec/nethunter/DeAuthFragment$$ExternalSyntheticLambda2;->f$2:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2, p1}, Lcom/offsec/nethunter/DeAuthFragment;->lambda$onCreateView$2$com-offsec-nethunter-DeAuthFragment(Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/view/View;)V

    return-void
.end method
