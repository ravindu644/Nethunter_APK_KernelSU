.class public final synthetic Lcom/offsec/nethunter/CANFragment$CANUSBFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/CANFragment$CANUSBFragment;

.field public final synthetic f$1:Landroid/widget/Spinner;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/CANFragment$CANUSBFragment;Landroid/widget/Spinner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/CANFragment$CANUSBFragment$$ExternalSyntheticLambda0;->f$0:Lcom/offsec/nethunter/CANFragment$CANUSBFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/CANFragment$CANUSBFragment$$ExternalSyntheticLambda0;->f$1:Landroid/widget/Spinner;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/CANFragment$CANUSBFragment$$ExternalSyntheticLambda0;->f$0:Lcom/offsec/nethunter/CANFragment$CANUSBFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/CANFragment$CANUSBFragment$$ExternalSyntheticLambda0;->f$1:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->lambda$onCreateView$1$com-offsec-nethunter-CANFragment$CANUSBFragment(Landroid/widget/Spinner;)V

    return-void
.end method
