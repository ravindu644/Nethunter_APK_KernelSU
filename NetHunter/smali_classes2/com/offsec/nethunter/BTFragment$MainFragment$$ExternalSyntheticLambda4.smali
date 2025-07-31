.class public final synthetic Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/BTFragment$MainFragment;

.field public final synthetic f$1:Landroid/widget/ListView;

.field public final synthetic f$2:Lcom/offsec/nethunter/utils/ShellExecuter;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/BTFragment$MainFragment;Landroid/widget/ListView;Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda4;->f$0:Lcom/offsec/nethunter/BTFragment$MainFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda4;->f$1:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda4;->f$2:Lcom/offsec/nethunter/utils/ShellExecuter;

    iput-object p4, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda4;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda4;->f$4:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda4;->f$0:Lcom/offsec/nethunter/BTFragment$MainFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda4;->f$1:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda4;->f$2:Lcom/offsec/nethunter/utils/ShellExecuter;

    iget-object v3, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda4;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda4;->f$4:Ljava/io/File;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/offsec/nethunter/BTFragment$MainFragment;->lambda$onCreateView$13$com-offsec-nethunter-BTFragment$MainFragment(Landroid/widget/ListView;Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method
