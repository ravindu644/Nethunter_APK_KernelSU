.class public final synthetic Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/SearchSploitFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/SearchSploitFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda8;->f$0:Lcom/offsec/nethunter/SearchSploitFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda8;->f$0:Lcom/offsec/nethunter/SearchSploitFragment;

    invoke-virtual {v0}, Lcom/offsec/nethunter/SearchSploitFragment;->lambda$loadExploits$7$com-offsec-nethunter-SearchSploitFragment()V

    return-void
.end method
