.class public final synthetic Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/BTFragment$MainFragment;

.field public final synthetic f$1:Landroid/widget/Button;

.field public final synthetic f$2:Ljava/io/File;

.field public final synthetic f$3:Ljava/io/File;

.field public final synthetic f$4:Ljava/io/File;

.field public final synthetic f$5:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/BTFragment$MainFragment;Landroid/widget/Button;Ljava/io/File;Ljava/io/File;Ljava/io/File;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda10;->f$0:Lcom/offsec/nethunter/BTFragment$MainFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda10;->f$1:Landroid/widget/Button;

    iput-object p3, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda10;->f$2:Ljava/io/File;

    iput-object p4, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda10;->f$3:Ljava/io/File;

    iput-object p5, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda10;->f$4:Ljava/io/File;

    iput-object p6, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda10;->f$5:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda10;->f$0:Lcom/offsec/nethunter/BTFragment$MainFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda10;->f$1:Landroid/widget/Button;

    iget-object v2, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda10;->f$2:Ljava/io/File;

    iget-object v3, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda10;->f$3:Ljava/io/File;

    iget-object v4, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda10;->f$4:Ljava/io/File;

    iget-object v5, p0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda10;->f$5:Landroid/view/View;

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/offsec/nethunter/BTFragment$MainFragment;->lambda$onCreateView$7$com-offsec-nethunter-BTFragment$MainFragment(Landroid/widget/Button;Ljava/io/File;Ljava/io/File;Ljava/io/File;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
