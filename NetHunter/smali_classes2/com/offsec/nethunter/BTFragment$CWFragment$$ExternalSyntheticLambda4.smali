.class public final synthetic Lcom/offsec/nethunter/BTFragment$CWFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/BTFragment$CWFragment;

.field public final synthetic f$1:Landroid/media/AudioTrack;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/BTFragment$CWFragment;Landroid/media/AudioTrack;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/BTFragment$CWFragment$$ExternalSyntheticLambda4;->f$0:Lcom/offsec/nethunter/BTFragment$CWFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/BTFragment$CWFragment$$ExternalSyntheticLambda4;->f$1:Landroid/media/AudioTrack;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$CWFragment$$ExternalSyntheticLambda4;->f$0:Lcom/offsec/nethunter/BTFragment$CWFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/BTFragment$CWFragment$$ExternalSyntheticLambda4;->f$1:Landroid/media/AudioTrack;

    invoke-virtual {v0, v1, p1}, Lcom/offsec/nethunter/BTFragment$CWFragment;->lambda$onCreateView$5$com-offsec-nethunter-BTFragment$CWFragment(Landroid/media/AudioTrack;Landroid/view/View;)V

    return-void
.end method
