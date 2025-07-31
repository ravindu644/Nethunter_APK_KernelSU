.class public final synthetic Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/Spinner;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:[Ljava/lang/String;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Landroid/widget/Spinner;Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda0;->f$0:Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda0;->f$2:[Ljava/lang/String;

    iput p4, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda0;->f$0:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda0;->f$2:[Ljava/lang/String;

    iget v3, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda0;->f$3:I

    invoke-static {v0, v1, v2, v3}, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->lambda$refresh$24(Landroid/widget/Spinner;Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method
