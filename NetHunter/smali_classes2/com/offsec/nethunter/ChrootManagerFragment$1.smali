.class Lcom/offsec/nethunter/ChrootManagerFragment$1;
.super Ljava/lang/Object;
.source "ChrootManagerFragment.java"

# interfaces
.implements Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/ChrootManagerFragment;->lambda$onViewCreated$1$com-offsec-nethunter-ChrootManagerFragment(Landroidx/activity/result/ActivityResult;)V
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

    iput-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment$1;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecutorFinished(ILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment$1;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/offsec/nethunter/ChrootManagerFragment;->-$$Nest$mbroadcastBackPressedIntent(Lcom/offsec/nethunter/ChrootManagerFragment;Ljava/lang/Boolean;)V

    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment$1;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    invoke-static {p1, p2}, Lcom/offsec/nethunter/ChrootManagerFragment;->-$$Nest$msetAllButtonEnable(Lcom/offsec/nethunter/ChrootManagerFragment;Z)V

    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment$1;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/ChrootManagerFragment;->-$$Nest$mcompatCheck(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    return-void
.end method

.method public onExecutorPrepare()V
    .locals 4

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment$1;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/ChrootManagerFragment;->-$$Nest$fgetcontext(Lcom/offsec/nethunter/ChrootManagerFragment;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment$1;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/ChrootManagerFragment;->-$$Nest$fgetcontext(Lcom/offsec/nethunter/ChrootManagerFragment;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/offsec/nethunter/ChrootManagerFragment$1;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/ChrootManagerFragment;->-$$Nest$fgetcontext(Lcom/offsec/nethunter/ChrootManagerFragment;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/offsec/nethunter/service/NotificationChannelService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.offsec.nethunter.INSTALLING"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment$1;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/offsec/nethunter/ChrootManagerFragment;->-$$Nest$mbroadcastBackPressedIntent(Lcom/offsec/nethunter/ChrootManagerFragment;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment$1;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    invoke-static {v0, v1}, Lcom/offsec/nethunter/ChrootManagerFragment;->-$$Nest$msetAllButtonEnable(Lcom/offsec/nethunter/ChrootManagerFragment;Z)V

    return-void
.end method

.method public onExecutorProgressUpdate(I)V
    .locals 0

    return-void
.end method
