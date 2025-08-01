.class Lcom/hijacker/FileExplorerDialog$2$1;
.super Ljava/lang/Object;
.source "FileExplorerDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/FileExplorerDialog$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hijacker/FileExplorerDialog$2;

.field final synthetic val$dialog:Lcom/hijacker/EditTextDialog;


# direct methods
.method constructor <init>(Lcom/hijacker/FileExplorerDialog$2;Lcom/hijacker/EditTextDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/FileExplorerDialog$2$1;->this$1:Lcom/hijacker/FileExplorerDialog$2;

    iput-object p2, p0, Lcom/hijacker/FileExplorerDialog$2$1;->val$dialog:Lcom/hijacker/EditTextDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/hijacker/RootFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hijacker/FileExplorerDialog$2$1;->this$1:Lcom/hijacker/FileExplorerDialog$2;

    iget-object v2, v2, Lcom/hijacker/FileExplorerDialog$2;->this$0:Lcom/hijacker/FileExplorerDialog;

    iget-object v2, v2, Lcom/hijacker/FileExplorerDialog;->current:Lcom/hijacker/RootFile;

    invoke-virtual {v2}, Lcom/hijacker/RootFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hijacker/FileExplorerDialog$2$1;->val$dialog:Lcom/hijacker/EditTextDialog;

    iget-object v2, v2, Lcom/hijacker/EditTextDialog;->result:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hijacker/RootFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/hijacker/RootFile;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/hijacker/FileExplorerDialog$2$1;->this$1:Lcom/hijacker/FileExplorerDialog$2;

    iget-object v0, v0, Lcom/hijacker/FileExplorerDialog$2;->this$0:Lcom/hijacker/FileExplorerDialog;

    invoke-virtual {v0}, Lcom/hijacker/FileExplorerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/hijacker/FileExplorerDialog$2$1;->this$1:Lcom/hijacker/FileExplorerDialog$2;

    iget-object v1, v1, Lcom/hijacker/FileExplorerDialog$2;->this$0:Lcom/hijacker/FileExplorerDialog;

    const v2, 0x7f1000a8

    invoke-virtual {v1, v2}, Lcom/hijacker/FileExplorerDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/hijacker/RootFile;->mkdir()V

    iget-object v1, p0, Lcom/hijacker/FileExplorerDialog$2$1;->this$1:Lcom/hijacker/FileExplorerDialog$2;

    iget-object v1, v1, Lcom/hijacker/FileExplorerDialog$2;->this$0:Lcom/hijacker/FileExplorerDialog;

    invoke-virtual {v1, v0}, Lcom/hijacker/FileExplorerDialog;->goToDirectory(Lcom/hijacker/RootFile;)V

    :goto_0
    return-void
.end method
