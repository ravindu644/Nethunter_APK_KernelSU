.class Lcom/offsec/nethunter/ChrootManagerFragment$4;
.super Ljava/lang/Object;
.source "ChrootManagerFragment.java"

# interfaces
.implements Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/ChrootManagerFragment;->startDownloadAndRestoreChroot(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

.field final synthetic val$downloadDir:Ljava/io/File;

.field final synthetic val$fileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/ChrootManagerFragment;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment$4;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/ChrootManagerFragment$4;->val$downloadDir:Ljava/io/File;

    iput-object p3, p0, Lcom/offsec/nethunter/ChrootManagerFragment$4;->val$fileName:Ljava/lang/String;

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

    iget-object p2, p0, Lcom/offsec/nethunter/ChrootManagerFragment$4;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/offsec/nethunter/ChrootManagerFragment;->-$$Nest$msetAllButtonEnable(Lcom/offsec/nethunter/ChrootManagerFragment;Z)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment$4;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment$4;->val$downloadDir:Ljava/io/File;

    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment$4;->val$fileName:Ljava/lang/String;

    invoke-direct {p2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/offsec/nethunter/ChrootManagerFragment;->-$$Nest$mrestoreChrootImage(Lcom/offsec/nethunter/ChrootManagerFragment;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment$4;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/ChrootManagerFragment;->-$$Nest$fgetcontext(Lcom/offsec/nethunter/ChrootManagerFragment;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "Download failed."

    invoke-static {p1, p2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onExecutorPrepare()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment$4;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/offsec/nethunter/ChrootManagerFragment;->-$$Nest$msetAllButtonEnable(Lcom/offsec/nethunter/ChrootManagerFragment;Z)V

    return-void
.end method

.method public onExecutorProgressUpdate(I)V
    .locals 0

    return-void
.end method
