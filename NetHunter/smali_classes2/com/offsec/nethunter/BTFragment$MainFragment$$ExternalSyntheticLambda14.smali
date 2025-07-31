.class public final synthetic Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/BTFragment$MainFragment;

.field public final synthetic f$1:Lcom/offsec/nethunter/utils/ShellExecuter;

.field public final synthetic f$2:Landroid/widget/TextView;

.field public final synthetic f$3:Landroid/widget/ListView;

.field public final synthetic f$4:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/BTFragment$MainFragment;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/TextView;Landroid/widget/ListView;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda14;->f$0:Lcom/offsec/nethunter/BTFragment$MainFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda14;->f$1:Lcom/offsec/nethunter/utils/ShellExecuter;

    iput-object p3, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda14;->f$2:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda14;->f$3:Landroid/widget/ListView;

    iput-object p5, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda14;->f$4:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda14;->f$0:Lcom/offsec/nethunter/BTFragment$MainFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda14;->f$1:Lcom/offsec/nethunter/utils/ShellExecuter;

    iget-object v2, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda14;->f$2:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda14;->f$3:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda14;->f$4:Ljava/io/File;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/offsec/nethunter/BTFragment$MainFragment;->lambda$onCreateView$14$com-offsec-nethunter-BTFragment$MainFragment(Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/TextView;Landroid/widget/ListView;Ljava/io/File;Landroid/view/View;)V

    return-void
.end method
