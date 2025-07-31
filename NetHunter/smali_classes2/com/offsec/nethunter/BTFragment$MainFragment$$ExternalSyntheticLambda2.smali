.class public final synthetic Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/BTFragment$MainFragment;

.field public final synthetic f$1:Lcom/offsec/nethunter/utils/ShellExecuter;

.field public final synthetic f$2:Ljava/io/File;

.field public final synthetic f$3:Landroid/widget/ListView;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/BTFragment$MainFragment;Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/io/File;Landroid/widget/ListView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda2;->f$0:Lcom/offsec/nethunter/BTFragment$MainFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda2;->f$1:Lcom/offsec/nethunter/utils/ShellExecuter;

    iput-object p3, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda2;->f$2:Ljava/io/File;

    iput-object p4, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda2;->f$3:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda2;->f$0:Lcom/offsec/nethunter/BTFragment$MainFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda2;->f$1:Lcom/offsec/nethunter/utils/ShellExecuter;

    iget-object v2, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda2;->f$2:Ljava/io/File;

    iget-object v3, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda2;->f$3:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v3}, Lcom/offsec/nethunter/BTFragment$MainFragment;->lambda$onCreateView$12$com-offsec-nethunter-BTFragment$MainFragment(Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/io/File;Landroid/widget/ListView;)V

    return-void
.end method
