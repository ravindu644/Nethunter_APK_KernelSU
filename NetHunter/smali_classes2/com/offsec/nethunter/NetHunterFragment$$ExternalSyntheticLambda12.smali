.class public final synthetic Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/NetHunterFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/NetHunterFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda12;->f$0:Lcom/offsec/nethunter/NetHunterFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda12;->f$0:Lcom/offsec/nethunter/NetHunterFragment;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/NetHunterFragment;->lambda$onViewCreated$0$com-offsec-nethunter-NetHunterFragment(Ljava/util/List;)V

    return-void
.end method
