.class public final synthetic Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/WPSFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/WPSFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda5;->f$0:Lcom/offsec/nethunter/WPSFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda5;->f$0:Lcom/offsec/nethunter/WPSFragment;

    invoke-virtual {v0}, Lcom/offsec/nethunter/WPSFragment;->lambda$scanWifi$15$com-offsec-nethunter-WPSFragment()V

    return-void
.end method
