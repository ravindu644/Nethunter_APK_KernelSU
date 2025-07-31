.class public final synthetic Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/NetHunterFragment;

.field public final synthetic f$1:Landroidx/appcompat/app/AlertDialog;

.field public final synthetic f$2:Landroid/widget/Spinner;

.field public final synthetic f$3:Landroid/widget/Spinner;

.field public final synthetic f$4:Landroid/widget/Spinner;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/NetHunterFragment;Landroidx/appcompat/app/AlertDialog;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda16;->f$0:Lcom/offsec/nethunter/NetHunterFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda16;->f$1:Landroidx/appcompat/app/AlertDialog;

    iput-object p3, p0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda16;->f$2:Landroid/widget/Spinner;

    iput-object p4, p0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda16;->f$3:Landroid/widget/Spinner;

    iput-object p5, p0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda16;->f$4:Landroid/widget/Spinner;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 6

    iget-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda16;->f$0:Lcom/offsec/nethunter/NetHunterFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda16;->f$1:Landroidx/appcompat/app/AlertDialog;

    iget-object v2, p0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda16;->f$2:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda16;->f$3:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda16;->f$4:Landroid/widget/Spinner;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/offsec/nethunter/NetHunterFragment;->lambda$onMoveItemSetup$31$com-offsec-nethunter-NetHunterFragment(Landroidx/appcompat/app/AlertDialog;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/content/DialogInterface;)V

    return-void
.end method
