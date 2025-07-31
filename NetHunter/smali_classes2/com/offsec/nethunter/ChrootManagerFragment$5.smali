.class Lcom/offsec/nethunter/ChrootManagerFragment$5;
.super Ljava/lang/Object;
.source "ChrootManagerFragment.java"

# interfaces
.implements Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/ChrootManagerFragment;->restoreChrootImage(Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment$5;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

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

    iget-object p2, p0, Lcom/offsec/nethunter/ChrootManagerFragment$5;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/offsec/nethunter/ChrootManagerFragment;->-$$Nest$msetAllButtonEnable(Lcom/offsec/nethunter/ChrootManagerFragment;Z)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment$5;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/ChrootManagerFragment;->-$$Nest$fgetcontext(Lcom/offsec/nethunter/ChrootManagerFragment;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "Chroot image restored successfully."

    invoke-static {p1, p2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment$5;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/ChrootManagerFragment;->-$$Nest$mcompatCheck(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment$5;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/ChrootManagerFragment;->-$$Nest$fgetcontext(Lcom/offsec/nethunter/ChrootManagerFragment;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "Failed to restore chroot image."

    invoke-static {p1, p2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onExecutorPrepare()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment$5;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/offsec/nethunter/ChrootManagerFragment;->-$$Nest$msetAllButtonEnable(Lcom/offsec/nethunter/ChrootManagerFragment;Z)V

    return-void
.end method

.method public onExecutorProgressUpdate(I)V
    .locals 0

    return-void
.end method
