.class public final synthetic Lcom/offsec/nethunter/BTFragment$ToolsFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/BTFragment$ToolsFragment;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/offsec/nethunter/utils/ShellExecuter;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/BTFragment$ToolsFragment;Ljava/lang/String;Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/BTFragment$ToolsFragment$$ExternalSyntheticLambda0;->f$0:Lcom/offsec/nethunter/BTFragment$ToolsFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/BTFragment$ToolsFragment$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/offsec/nethunter/BTFragment$ToolsFragment$$ExternalSyntheticLambda0;->f$2:Lcom/offsec/nethunter/utils/ShellExecuter;

    iput-object p4, p0, Lcom/offsec/nethunter/BTFragment$ToolsFragment$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/offsec/nethunter/BTFragment$ToolsFragment$$ExternalSyntheticLambda0;->f$4:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$ToolsFragment$$ExternalSyntheticLambda0;->f$0:Lcom/offsec/nethunter/BTFragment$ToolsFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/BTFragment$ToolsFragment$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/offsec/nethunter/BTFragment$ToolsFragment$$ExternalSyntheticLambda0;->f$2:Lcom/offsec/nethunter/utils/ShellExecuter;

    iget-object v3, p0, Lcom/offsec/nethunter/BTFragment$ToolsFragment$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/offsec/nethunter/BTFragment$ToolsFragment$$ExternalSyntheticLambda0;->f$4:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/offsec/nethunter/BTFragment$ToolsFragment;->lambda$startSDPtool$9$com-offsec-nethunter-BTFragment$ToolsFragment(Ljava/lang/String;Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/lang/String;Landroid/widget/TextView;)V

    return-void
.end method
