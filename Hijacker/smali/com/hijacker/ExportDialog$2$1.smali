.class Lcom/hijacker/ExportDialog$2$1;
.super Ljava/lang/Object;
.source "ExportDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/ExportDialog$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hijacker/ExportDialog$2;

.field final synthetic val$dialog:Lcom/hijacker/FileExplorerDialog;


# direct methods
.method constructor <init>(Lcom/hijacker/ExportDialog$2;Lcom/hijacker/FileExplorerDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/ExportDialog$2$1;->this$1:Lcom/hijacker/ExportDialog$2;

    iput-object p2, p0, Lcom/hijacker/ExportDialog$2$1;->val$dialog:Lcom/hijacker/FileExplorerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/hijacker/ExportDialog$2$1;->this$1:Lcom/hijacker/ExportDialog$2;

    iget-object v0, v0, Lcom/hijacker/ExportDialog$2;->this$0:Lcom/hijacker/ExportDialog;

    iget-object v0, v0, Lcom/hijacker/ExportDialog;->filenameView:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hijacker/ExportDialog$2$1;->val$dialog:Lcom/hijacker/FileExplorerDialog;

    iget-object v2, v2, Lcom/hijacker/FileExplorerDialog;->result:Lcom/hijacker/RootFile;

    invoke-virtual {v2}, Lcom/hijacker/RootFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/output.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/ExportDialog$2$1;->this$1:Lcom/hijacker/ExportDialog$2;

    iget-object v0, v0, Lcom/hijacker/ExportDialog$2;->this$0:Lcom/hijacker/ExportDialog;

    iget-object v0, v0, Lcom/hijacker/ExportDialog;->filenameView:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method
