.class Lcom/hijacker/ExportDialog$2;
.super Ljava/lang/Object;
.source "ExportDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/ExportDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hijacker/ExportDialog;


# direct methods
.method constructor <init>(Lcom/hijacker/ExportDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/ExportDialog$2;->this$0:Lcom/hijacker/ExportDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Lcom/hijacker/FileExplorerDialog;

    invoke-direct {p1}, Lcom/hijacker/FileExplorerDialog;-><init>()V

    new-instance v0, Lcom/hijacker/RootFile;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hijacker/RootFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/hijacker/FileExplorerDialog;->setStartingDir(Lcom/hijacker/RootFile;)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/hijacker/FileExplorerDialog;->setToSelect(I)V

    new-instance v0, Lcom/hijacker/ExportDialog$2$1;

    invoke-direct {v0, p0, p1}, Lcom/hijacker/ExportDialog$2$1;-><init>(Lcom/hijacker/ExportDialog$2;Lcom/hijacker/FileExplorerDialog;)V

    invoke-virtual {p1, v0}, Lcom/hijacker/FileExplorerDialog;->setOnSelect(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/hijacker/ExportDialog$2;->this$0:Lcom/hijacker/ExportDialog;

    invoke-virtual {v0}, Lcom/hijacker/ExportDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "FileExplorerDialog"

    invoke-virtual {p1, v0, v1}, Lcom/hijacker/FileExplorerDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
