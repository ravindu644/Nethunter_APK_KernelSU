.class public final synthetic Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/USBArsenalFragment;

.field public final synthetic f$1:Landroidx/appcompat/app/AlertDialog;

.field public final synthetic f$2:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/USBArsenalFragment;Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda17;->f$0:Lcom/offsec/nethunter/USBArsenalFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda17;->f$1:Landroidx/appcompat/app/AlertDialog;

    iput-object p3, p0, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda17;->f$2:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda17;->f$0:Lcom/offsec/nethunter/USBArsenalFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda17;->f$1:Landroidx/appcompat/app/AlertDialog;

    iget-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda17;->f$2:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2, p1}, Lcom/offsec/nethunter/USBArsenalFragment;->lambda$onOptionsItemSelected$26$com-offsec-nethunter-USBArsenalFragment(Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/content/DialogInterface;)V

    return-void
.end method
