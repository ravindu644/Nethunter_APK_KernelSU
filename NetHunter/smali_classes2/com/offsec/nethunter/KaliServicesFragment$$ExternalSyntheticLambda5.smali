.class public final synthetic Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/KaliServicesFragment;

.field public final synthetic f$1:Landroid/widget/Spinner;

.field public final synthetic f$2:Landroid/widget/Spinner;

.field public final synthetic f$3:Landroid/widget/Spinner;

.field public final synthetic f$4:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/KaliServicesFragment;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda5;->f$0:Lcom/offsec/nethunter/KaliServicesFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda5;->f$1:Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda5;->f$2:Landroid/widget/Spinner;

    iput-object p4, p0, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda5;->f$3:Landroid/widget/Spinner;

    iput-object p5, p0, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda5;->f$4:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda5;->f$0:Lcom/offsec/nethunter/KaliServicesFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda5;->f$1:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda5;->f$2:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda5;->f$3:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda5;->f$4:Landroidx/appcompat/app/AlertDialog;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/offsec/nethunter/KaliServicesFragment;->lambda$onMoveItemSetup$31$com-offsec-nethunter-KaliServicesFragment(Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method
