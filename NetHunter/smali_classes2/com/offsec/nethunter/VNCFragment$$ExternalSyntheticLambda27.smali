.class public final synthetic Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/VNCFragment;

.field public final synthetic f$1:Landroid/widget/EditText;

.field public final synthetic f$2:Landroid/widget/EditText;

.field public final synthetic f$3:Landroid/widget/EditText;

.field public final synthetic f$4:Lcom/offsec/nethunter/utils/ShellExecuter;

.field public final synthetic f$5:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/VNCFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda27;->f$0:Lcom/offsec/nethunter/VNCFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda27;->f$1:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda27;->f$2:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda27;->f$3:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda27;->f$4:Lcom/offsec/nethunter/utils/ShellExecuter;

    iput-object p6, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda27;->f$5:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    iget-object v0, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda27;->f$0:Lcom/offsec/nethunter/VNCFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda27;->f$1:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda27;->f$2:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda27;->f$3:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda27;->f$4:Lcom/offsec/nethunter/utils/ShellExecuter;

    iget-object v5, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda27;->f$5:Ljava/io/File;

    move-object v6, p1

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/offsec/nethunter/VNCFragment;->lambda$openResolutionDialog$26$com-offsec-nethunter-VNCFragment(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/io/File;Landroid/content/DialogInterface;I)V

    return-void
.end method
