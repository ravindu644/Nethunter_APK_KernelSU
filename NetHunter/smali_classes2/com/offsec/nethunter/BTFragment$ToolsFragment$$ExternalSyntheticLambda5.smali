.class public final synthetic Lcom/offsec/nethunter/BTFragment$ToolsFragment$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/BTFragment$ToolsFragment;

.field public final synthetic f$1:Landroid/widget/EditText;

.field public final synthetic f$2:Landroid/widget/EditText;

.field public final synthetic f$3:Landroid/widget/EditText;

.field public final synthetic f$4:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/BTFragment$ToolsFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/BTFragment$ToolsFragment$$ExternalSyntheticLambda5;->f$0:Lcom/offsec/nethunter/BTFragment$ToolsFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/BTFragment$ToolsFragment$$ExternalSyntheticLambda5;->f$1:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/offsec/nethunter/BTFragment$ToolsFragment$$ExternalSyntheticLambda5;->f$2:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/offsec/nethunter/BTFragment$ToolsFragment$$ExternalSyntheticLambda5;->f$3:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/offsec/nethunter/BTFragment$ToolsFragment$$ExternalSyntheticLambda5;->f$4:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$ToolsFragment$$ExternalSyntheticLambda5;->f$0:Lcom/offsec/nethunter/BTFragment$ToolsFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/BTFragment$ToolsFragment$$ExternalSyntheticLambda5;->f$1:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/offsec/nethunter/BTFragment$ToolsFragment$$ExternalSyntheticLambda5;->f$2:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/offsec/nethunter/BTFragment$ToolsFragment$$ExternalSyntheticLambda5;->f$3:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/offsec/nethunter/BTFragment$ToolsFragment$$ExternalSyntheticLambda5;->f$4:Landroid/widget/EditText;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/offsec/nethunter/BTFragment$ToolsFragment;->lambda$onCreateView$3$com-offsec-nethunter-BTFragment$ToolsFragment(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;)V

    return-void
.end method
