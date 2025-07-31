.class public final synthetic Lcom/offsec/nethunter/CANFragment$CANICSIMFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Landroid/widget/Spinner;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;Ljava/util/ArrayList;Landroid/widget/Spinner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment$$ExternalSyntheticLambda1;->f$0:Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment$$ExternalSyntheticLambda1;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment$$ExternalSyntheticLambda1;->f$2:Landroid/widget/Spinner;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment$$ExternalSyntheticLambda1;->f$0:Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment$$ExternalSyntheticLambda1;->f$1:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment$$ExternalSyntheticLambda1;->f$2:Landroid/widget/Spinner;

    invoke-virtual {v0, v1, v2}, Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;->lambda$onCreateView$0$com-offsec-nethunter-CANFragment$CANICSIMFragment(Ljava/util/ArrayList;Landroid/widget/Spinner;)V

    return-void
.end method
