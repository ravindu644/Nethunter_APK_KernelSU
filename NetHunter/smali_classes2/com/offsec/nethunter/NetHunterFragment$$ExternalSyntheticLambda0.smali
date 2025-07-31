.class public final synthetic Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/NetHunterFragment;

.field public final synthetic f$1:Landroid/widget/EditText;

.field public final synthetic f$2:Landroid/widget/EditText;

.field public final synthetic f$3:Landroid/widget/EditText;

.field public final synthetic f$4:Landroid/widget/CheckBox;

.field public final synthetic f$5:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/NetHunterFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda0;->f$0:Lcom/offsec/nethunter/NetHunterFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda0;->f$1:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda0;->f$2:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda0;->f$3:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda0;->f$4:Landroid/widget/CheckBox;

    iput-object p6, p0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda0;->f$5:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda0;->f$0:Lcom/offsec/nethunter/NetHunterFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda0;->f$1:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda0;->f$2:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda0;->f$3:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda0;->f$4:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda0;->f$5:Landroidx/appcompat/app/AlertDialog;

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/offsec/nethunter/NetHunterFragment;->lambda$onAddItemSetup$20$com-offsec-nethunter-NetHunterFragment(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method
