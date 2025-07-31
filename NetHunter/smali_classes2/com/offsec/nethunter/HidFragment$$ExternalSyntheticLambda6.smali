.class public final synthetic Lcom/offsec/nethunter/HidFragment$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/HidFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/HidFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/HidFragment$$ExternalSyntheticLambda6;->f$0:Lcom/offsec/nethunter/HidFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/HidFragment$$ExternalSyntheticLambda6;->f$0:Lcom/offsec/nethunter/HidFragment;

    invoke-virtual {v0}, Lcom/offsec/nethunter/HidFragment;->lambda$check_HID_enable$6$com-offsec-nethunter-HidFragment()V

    return-void
.end method
