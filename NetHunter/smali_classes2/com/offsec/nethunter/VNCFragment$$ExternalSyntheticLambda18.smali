.class public final synthetic Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/VNCFragment;

.field public final synthetic f$1:Lcom/offsec/nethunter/utils/ShellExecuter;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/VNCFragment;Lcom/offsec/nethunter/utils/ShellExecuter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda18;->f$0:Lcom/offsec/nethunter/VNCFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda18;->f$1:Lcom/offsec/nethunter/utils/ShellExecuter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda18;->f$0:Lcom/offsec/nethunter/VNCFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda18;->f$1:Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-virtual {v0, v1, p1}, Lcom/offsec/nethunter/VNCFragment;->lambda$onCreateView$7$com-offsec-nethunter-VNCFragment(Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/view/View;)V

    return-void
.end method
