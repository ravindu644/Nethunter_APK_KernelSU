.class public final synthetic Lcom/offsec/nethunter/AudioFragment$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/AudioFragment$1;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/AudioFragment$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/AudioFragment$1$$ExternalSyntheticLambda0;->f$0:Lcom/offsec/nethunter/AudioFragment$1;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment$1$$ExternalSyntheticLambda0;->f$0:Lcom/offsec/nethunter/AudioFragment$1;

    check-cast p1, Lcom/offsec/nethunter/AudioPlayState;

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/AudioFragment$1;->lambda$onServiceConnected$0$com-offsec-nethunter-AudioFragment$1(Lcom/offsec/nethunter/AudioPlayState;)V

    return-void
.end method
