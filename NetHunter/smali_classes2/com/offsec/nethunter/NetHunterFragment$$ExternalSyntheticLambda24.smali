.class public final synthetic Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/NetHunterFragment;

.field public final synthetic f$1:Landroidx/appcompat/app/AlertDialog;

.field public final synthetic f$2:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/NetHunterFragment;Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda24;->f$0:Lcom/offsec/nethunter/NetHunterFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda24;->f$1:Landroidx/appcompat/app/AlertDialog;

    iput-object p3, p0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda24;->f$2:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda24;->f$0:Lcom/offsec/nethunter/NetHunterFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda24;->f$1:Landroidx/appcompat/app/AlertDialog;

    iget-object v2, p0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda24;->f$2:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2, p1}, Lcom/offsec/nethunter/NetHunterFragment;->lambda$onOptionsItemSelected$10$com-offsec-nethunter-NetHunterFragment(Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/content/DialogInterface;)V

    return-void
.end method
