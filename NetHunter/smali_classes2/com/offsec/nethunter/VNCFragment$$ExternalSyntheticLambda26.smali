.class public final synthetic Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/SharedPreferences;

.field public final synthetic f$1:Landroidx/appcompat/app/AlertDialog;

.field public final synthetic f$2:Landroid/os/CountDownTimer;


# direct methods
.method public synthetic constructor <init>(Landroid/content/SharedPreferences;Landroidx/appcompat/app/AlertDialog;Landroid/os/CountDownTimer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda26;->f$0:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda26;->f$1:Landroidx/appcompat/app/AlertDialog;

    iput-object p3, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda26;->f$2:Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda26;->f$0:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda26;->f$1:Landroidx/appcompat/app/AlertDialog;

    iget-object v2, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda26;->f$2:Landroid/os/CountDownTimer;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/offsec/nethunter/VNCFragment;->lambda$confirmDialog$30(Landroid/content/SharedPreferences;Landroidx/appcompat/app/AlertDialog;Landroid/os/CountDownTimer;Landroid/content/DialogInterface;I)V

    return-void
.end method
