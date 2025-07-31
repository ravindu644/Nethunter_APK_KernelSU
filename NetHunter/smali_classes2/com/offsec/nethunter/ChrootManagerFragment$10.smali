.class Lcom/offsec/nethunter/ChrootManagerFragment$10;
.super Ljava/lang/Object;
.source "ChrootManagerFragment.java"

# interfaces
.implements Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/ChrootManagerFragment;->compatCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/ChrootManagerFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/ChrootManagerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment$10;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecutorFinished(ILjava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p2, p0, Lcom/offsec/nethunter/ChrootManagerFragment$10;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/offsec/nethunter/ChrootManagerFragment;->-$$Nest$mbroadcastBackPressedIntent(Lcom/offsec/nethunter/ChrootManagerFragment;Ljava/lang/Boolean;)V

    iget-object p2, p0, Lcom/offsec/nethunter/ChrootManagerFragment$10;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    invoke-static {p2, p1}, Lcom/offsec/nethunter/ChrootManagerFragment;->-$$Nest$msetButtonVisibility(Lcom/offsec/nethunter/ChrootManagerFragment;I)V

    iget-object p2, p0, Lcom/offsec/nethunter/ChrootManagerFragment$10;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    invoke-static {p2, p1}, Lcom/offsec/nethunter/ChrootManagerFragment;->-$$Nest$msetMountStatsTextView(Lcom/offsec/nethunter/ChrootManagerFragment;I)V

    iget-object p2, p0, Lcom/offsec/nethunter/ChrootManagerFragment$10;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    invoke-static {p2, v0}, Lcom/offsec/nethunter/ChrootManagerFragment;->-$$Nest$msetAllButtonEnable(Lcom/offsec/nethunter/ChrootManagerFragment;Z)V

    iget-object p2, p0, Lcom/offsec/nethunter/ChrootManagerFragment$10;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    invoke-static {p2}, Lcom/offsec/nethunter/ChrootManagerFragment;->-$$Nest$fgetcontext(Lcom/offsec/nethunter/ChrootManagerFragment;)Landroid/content/Context;

    move-result-object p2

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment$10;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/ChrootManagerFragment;->-$$Nest$fgetcontext(Lcom/offsec/nethunter/ChrootManagerFragment;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/offsec/nethunter/service/CompatCheckService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "RESULTCODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public onExecutorPrepare()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment$10;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/offsec/nethunter/ChrootManagerFragment;->-$$Nest$mbroadcastBackPressedIntent(Lcom/offsec/nethunter/ChrootManagerFragment;Ljava/lang/Boolean;)V

    return-void
.end method

.method public onExecutorProgressUpdate(I)V
    .locals 0

    return-void
.end method
