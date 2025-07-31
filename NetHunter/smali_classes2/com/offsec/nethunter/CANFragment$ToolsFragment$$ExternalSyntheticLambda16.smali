.class public final synthetic Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic f$0:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda16;->f$0:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/CANFragment$ToolsFragment$$ExternalSyntheticLambda16;->f$0:Landroid/widget/EditText;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-static {v0, p1}, Lcom/offsec/nethunter/CANFragment$ToolsFragment;->lambda$onCreateView$8(Landroid/widget/EditText;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method
