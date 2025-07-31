.class public final synthetic Lcom/offsec/nethunter/DuckHunterFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/DuckHunterFragment;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/DuckHunterFragment;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/DuckHunterFragment$$ExternalSyntheticLambda0;->f$0:Lcom/offsec/nethunter/DuckHunterFragment;

    iput-boolean p2, p0, Lcom/offsec/nethunter/DuckHunterFragment$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterFragment$$ExternalSyntheticLambda0;->f$0:Lcom/offsec/nethunter/DuckHunterFragment;

    iget-boolean v1, p0, Lcom/offsec/nethunter/DuckHunterFragment$$ExternalSyntheticLambda0;->f$1:Z

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/DuckHunterFragment;->lambda$onOptionsItemSelected$1$com-offsec-nethunter-DuckHunterFragment(Z)V

    return-void
.end method
