.class public final synthetic Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/ChrootManagerFragment;

.field public final synthetic f$1:Landroid/widget/EditText;

.field public final synthetic f$2:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/ChrootManagerFragment;Landroid/widget/EditText;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda17;->f$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda17;->f$1:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda17;->f$2:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda17;->f$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda17;->f$1:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda17;->f$2:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/offsec/nethunter/ChrootManagerFragment;->lambda$setBackupChrootButton$21$com-offsec-nethunter-ChrootManagerFragment(Landroid/widget/EditText;Landroidx/appcompat/app/AlertDialog;Landroid/content/DialogInterface;I)V

    return-void
.end method
