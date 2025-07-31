.class public final synthetic Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/BTFragment$MainFragment;

.field public final synthetic f$1:Landroid/widget/ListView;

.field public final synthetic f$2:Lcom/offsec/nethunter/utils/ShellExecuter;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/BTFragment$MainFragment;Landroid/widget/ListView;Lcom/offsec/nethunter/utils/ShellExecuter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda15;->f$0:Lcom/offsec/nethunter/BTFragment$MainFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda15;->f$1:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda15;->f$2:Lcom/offsec/nethunter/utils/ShellExecuter;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8

    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda15;->f$0:Lcom/offsec/nethunter/BTFragment$MainFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda15;->f$1:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda15;->f$2:Lcom/offsec/nethunter/utils/ShellExecuter;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/offsec/nethunter/BTFragment$MainFragment;->lambda$onCreateView$15$com-offsec-nethunter-BTFragment$MainFragment(Landroid/widget/ListView;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
