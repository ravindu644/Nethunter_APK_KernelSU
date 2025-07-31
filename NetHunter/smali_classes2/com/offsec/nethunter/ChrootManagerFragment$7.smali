.class Lcom/offsec/nethunter/ChrootManagerFragment$7;
.super Ljava/lang/Object;
.source "ChrootManagerFragment.java"

# interfaces
.implements Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/ChrootManagerFragment;->startDownloadChroot(Ljava/lang/String;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

.field final synthetic val$progressBar:Landroid/widget/ProgressBar;

.field final synthetic val$progressDialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/ChrootManagerFragment;Landroidx/appcompat/app/AlertDialog;Landroid/widget/ProgressBar;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment$7;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/ChrootManagerFragment$7;->val$progressDialog:Landroidx/appcompat/app/AlertDialog;

    iput-object p3, p0, Lcom/offsec/nethunter/ChrootManagerFragment$7;->val$progressBar:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onExecutorFinished$2$com-offsec-nethunter-ChrootManagerFragment$7(I)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment$7;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/ChrootManagerFragment;->-$$Nest$fgetcontext(Lcom/offsec/nethunter/ChrootManagerFragment;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "Download completed successfully."

    invoke-static {p1, v0}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment$7;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/ChrootManagerFragment;->-$$Nest$fgetcontext(Lcom/offsec/nethunter/ChrootManagerFragment;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "Download failed. Please try again."

    invoke-static {p1, v0}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$onExecutorPrepare$0$com-offsec-nethunter-ChrootManagerFragment$7(Landroidx/appcompat/app/AlertDialog;)V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment$7;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/offsec/nethunter/ChrootManagerFragment;->-$$Nest$mbroadcastBackPressedIntent(Lcom/offsec/nethunter/ChrootManagerFragment;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment$7;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    invoke-static {v0, v1}, Lcom/offsec/nethunter/ChrootManagerFragment;->-$$Nest$msetAllButtonEnable(Lcom/offsec/nethunter/ChrootManagerFragment;Z)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method synthetic lambda$onExecutorProgressUpdate$1$com-offsec-nethunter-ChrootManagerFragment$7(Landroid/widget/ProgressBar;ILandroidx/appcompat/app/AlertDialog;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/16 p1, 0x64

    if-ne p2, p1, :cond_0

    invoke-virtual {p3}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment$7;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/offsec/nethunter/ChrootManagerFragment;->-$$Nest$mbroadcastBackPressedIntent(Lcom/offsec/nethunter/ChrootManagerFragment;Ljava/lang/Boolean;)V

    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment$7;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    invoke-static {p1, p2}, Lcom/offsec/nethunter/ChrootManagerFragment;->-$$Nest$msetAllButtonEnable(Lcom/offsec/nethunter/ChrootManagerFragment;Z)V

    :cond_0
    return-void
.end method

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

    iget-object p2, p0, Lcom/offsec/nethunter/ChrootManagerFragment$7;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    invoke-static {p2}, Lcom/offsec/nethunter/ChrootManagerFragment;->-$$Nest$fgetactivity(Lcom/offsec/nethunter/ChrootManagerFragment;)Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/offsec/nethunter/ChrootManagerFragment$7;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    invoke-static {p2}, Lcom/offsec/nethunter/ChrootManagerFragment;->-$$Nest$fgetactivity(Lcom/offsec/nethunter/ChrootManagerFragment;)Landroid/app/Activity;

    move-result-object p2

    new-instance v0, Lcom/offsec/nethunter/ChrootManagerFragment$7$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/offsec/nethunter/ChrootManagerFragment$7$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment$7;I)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onExecutorPrepare()V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment$7;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/ChrootManagerFragment;->-$$Nest$fgetactivity(Lcom/offsec/nethunter/ChrootManagerFragment;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment$7;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/ChrootManagerFragment;->-$$Nest$fgetactivity(Lcom/offsec/nethunter/ChrootManagerFragment;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment$7;->val$progressDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v2, Lcom/offsec/nethunter/ChrootManagerFragment$7$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Lcom/offsec/nethunter/ChrootManagerFragment$7$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment$7;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onExecutorProgressUpdate(I)V
    .locals 4

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment$7;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/ChrootManagerFragment;->-$$Nest$fgetactivity(Lcom/offsec/nethunter/ChrootManagerFragment;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment$7;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/ChrootManagerFragment;->-$$Nest$fgetactivity(Lcom/offsec/nethunter/ChrootManagerFragment;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment$7;->val$progressBar:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/offsec/nethunter/ChrootManagerFragment$7;->val$progressDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v3, Lcom/offsec/nethunter/ChrootManagerFragment$7$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1, p1, v2}, Lcom/offsec/nethunter/ChrootManagerFragment$7$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment$7;Landroid/widget/ProgressBar;ILandroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
