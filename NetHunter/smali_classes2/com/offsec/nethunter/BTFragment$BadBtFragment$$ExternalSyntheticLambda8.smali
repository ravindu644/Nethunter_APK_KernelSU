.class public final synthetic Lcom/offsec/nethunter/BTFragment$BadBtFragment$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

.field public final synthetic f$1:Landroid/widget/TextView;

.field public final synthetic f$2:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/BTFragment$BadBtFragment;Landroid/widget/TextView;Landroid/widget/Button;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$$ExternalSyntheticLambda8;->f$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$$ExternalSyntheticLambda8;->f$1:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$$ExternalSyntheticLambda8;->f$2:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$$ExternalSyntheticLambda8;->f$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$$ExternalSyntheticLambda8;->f$1:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$$ExternalSyntheticLambda8;->f$2:Landroid/widget/Button;

    invoke-virtual {v0, v1, v2}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->lambda$refresh_badbt$8$com-offsec-nethunter-BTFragment$BadBtFragment(Landroid/widget/TextView;Landroid/widget/Button;)V

    return-void
.end method
