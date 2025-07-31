.class public final synthetic Lcom/offsec/nethunter/BTFragment$CWFragment$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/io/File;

.field public final synthetic f$1:Landroid/media/AudioTrack;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Landroid/media/AudioTrack;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/BTFragment$CWFragment$$ExternalSyntheticLambda6;->f$0:Ljava/io/File;

    iput-object p2, p0, Lcom/offsec/nethunter/BTFragment$CWFragment$$ExternalSyntheticLambda6;->f$1:Landroid/media/AudioTrack;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$CWFragment$$ExternalSyntheticLambda6;->f$0:Ljava/io/File;

    iget-object v1, p0, Lcom/offsec/nethunter/BTFragment$CWFragment$$ExternalSyntheticLambda6;->f$1:Landroid/media/AudioTrack;

    invoke-static {v0, v1}, Lcom/offsec/nethunter/BTFragment$CWFragment;->lambda$onCreateView$4(Ljava/io/File;Landroid/media/AudioTrack;)V

    return-void
.end method
