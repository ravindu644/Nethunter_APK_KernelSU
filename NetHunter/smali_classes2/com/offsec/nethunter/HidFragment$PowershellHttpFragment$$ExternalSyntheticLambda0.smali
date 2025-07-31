.class public final synthetic Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment;

.field public final synthetic f$1:Lcom/offsec/nethunter/utils/ShellExecuter;

.field public final synthetic f$2:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment$$ExternalSyntheticLambda0;->f$0:Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment$$ExternalSyntheticLambda0;->f$1:Lcom/offsec/nethunter/utils/ShellExecuter;

    iput-object p3, p0, Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment$$ExternalSyntheticLambda0;->f$2:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment$$ExternalSyntheticLambda0;->f$0:Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment$$ExternalSyntheticLambda0;->f$1:Lcom/offsec/nethunter/utils/ShellExecuter;

    iget-object v2, p0, Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment$$ExternalSyntheticLambda0;->f$2:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment;->lambda$loadOptions$1$com-offsec-nethunter-HidFragment$PowershellHttpFragment(Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/EditText;)V

    return-void
.end method
