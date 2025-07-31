.class public final synthetic Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/Spinner;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/Spinner;Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda11;->f$0:Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda11;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda11;->f$2:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda11;->f$0:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda11;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment$$ExternalSyntheticLambda11;->f$2:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;->lambda$refresh$29(Landroid/widget/Spinner;Landroid/app/Activity;Ljava/util/ArrayList;)V

    return-void
.end method
