.class public final synthetic Lcom/offsec/nethunter/DeAuthFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/DeAuthFragment;

.field public final synthetic f$1:Landroid/widget/CheckBox;

.field public final synthetic f$2:Landroid/widget/CheckBox;

.field public final synthetic f$3:Landroid/widget/Spinner;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/DeAuthFragment;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/Spinner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/DeAuthFragment$$ExternalSyntheticLambda3;->f$0:Lcom/offsec/nethunter/DeAuthFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/DeAuthFragment$$ExternalSyntheticLambda3;->f$1:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/offsec/nethunter/DeAuthFragment$$ExternalSyntheticLambda3;->f$2:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/offsec/nethunter/DeAuthFragment$$ExternalSyntheticLambda3;->f$3:Landroid/widget/Spinner;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/offsec/nethunter/DeAuthFragment$$ExternalSyntheticLambda3;->f$0:Lcom/offsec/nethunter/DeAuthFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/DeAuthFragment$$ExternalSyntheticLambda3;->f$1:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/offsec/nethunter/DeAuthFragment$$ExternalSyntheticLambda3;->f$2:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/offsec/nethunter/DeAuthFragment$$ExternalSyntheticLambda3;->f$3:Landroid/widget/Spinner;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/offsec/nethunter/DeAuthFragment;->lambda$onCreateView$3$com-offsec-nethunter-DeAuthFragment(Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/Spinner;Landroid/view/View;)V

    return-void
.end method
