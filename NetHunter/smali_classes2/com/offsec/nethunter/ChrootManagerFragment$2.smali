.class Lcom/offsec/nethunter/ChrootManagerFragment$2;
.super Ljava/lang/Object;
.source "ChrootManagerFragment.java"

# interfaces
.implements Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/ChrootManagerFragment;->lambda$setStartKaliButton$4$com-offsec-nethunter-ChrootManagerFragment(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment$2;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecutorFinished(ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment$2;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/offsec/nethunter/ChrootManagerFragment;->-$$Nest$msetButtonVisibility(Lcom/offsec/nethunter/ChrootManagerFragment;I)V

    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment$2;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    invoke-static {p1, p2}, Lcom/offsec/nethunter/ChrootManagerFragment;->-$$Nest$msetMountStatsTextView(Lcom/offsec/nethunter/ChrootManagerFragment;I)V

    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment$2;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/offsec/nethunter/ChrootManagerFragment;->-$$Nest$msetAllButtonEnable(Lcom/offsec/nethunter/ChrootManagerFragment;Z)V

    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment$2;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/ChrootManagerFragment;->-$$Nest$mcompatCheck(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment$2;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/ChrootManagerFragment;->-$$Nest$fgetcontext(Lcom/offsec/nethunter/ChrootManagerFragment;)Landroid/content/Context;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment$2;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/ChrootManagerFragment;->-$$Nest$fgetcontext(Lcom/offsec/nethunter/ChrootManagerFragment;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/offsec/nethunter/service/NotificationChannelService;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.offsec.nethunter.USENETHUNTER"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public onExecutorPrepare()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment$2;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/offsec/nethunter/ChrootManagerFragment;->-$$Nest$msetAllButtonEnable(Lcom/offsec/nethunter/ChrootManagerFragment;Z)V

    return-void
.end method

.method public onExecutorProgressUpdate(I)V
    .locals 0

    return-void
.end method
