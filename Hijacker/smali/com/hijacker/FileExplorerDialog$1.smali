.class Lcom/hijacker/FileExplorerDialog$1;
.super Ljava/lang/Object;
.source "FileExplorerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/FileExplorerDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hijacker/FileExplorerDialog;


# direct methods
.method constructor <init>(Lcom/hijacker/FileExplorerDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/FileExplorerDialog$1;->this$0:Lcom/hijacker/FileExplorerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/hijacker/FileExplorerDialog$1;->this$0:Lcom/hijacker/FileExplorerDialog;

    new-instance v0, Lcom/hijacker/RootFile;

    iget-object v1, p0, Lcom/hijacker/FileExplorerDialog$1;->this$0:Lcom/hijacker/FileExplorerDialog;

    iget-object v1, v1, Lcom/hijacker/FileExplorerDialog;->current:Lcom/hijacker/RootFile;

    invoke-virtual {v1}, Lcom/hijacker/RootFile;->getParentPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hijacker/RootFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/hijacker/FileExplorerDialog;->goToDirectory(Lcom/hijacker/RootFile;)V

    return-void
.end method
