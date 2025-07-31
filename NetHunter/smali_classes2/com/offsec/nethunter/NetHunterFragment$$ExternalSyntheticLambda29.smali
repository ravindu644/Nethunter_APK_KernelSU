.class public final synthetic Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/NetHunterFragment;

.field public final synthetic f$1:Landroidx/appcompat/app/AlertDialog;

.field public final synthetic f$2:Landroid/widget/EditText;

.field public final synthetic f$3:Landroid/widget/EditText;

.field public final synthetic f$4:Landroid/widget/EditText;

.field public final synthetic f$5:Landroid/widget/CheckBox;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/NetHunterFragment;Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda29;->f$0:Lcom/offsec/nethunter/NetHunterFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda29;->f$1:Landroidx/appcompat/app/AlertDialog;

    iput-object p3, p0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda29;->f$2:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda29;->f$3:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda29;->f$4:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda29;->f$5:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 7

    iget-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda29;->f$0:Lcom/offsec/nethunter/NetHunterFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda29;->f$1:Landroidx/appcompat/app/AlertDialog;

    iget-object v2, p0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda29;->f$2:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda29;->f$3:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda29;->f$4:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda29;->f$5:Landroid/widget/CheckBox;

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/offsec/nethunter/NetHunterFragment;->lambda$onAddItemSetup$21$com-offsec-nethunter-NetHunterFragment(Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/content/DialogInterface;)V

    return-void
.end method
