.class Lcom/hijacker/FileExplorerDialog$2;
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

    iput-object p1, p0, Lcom/hijacker/FileExplorerDialog$2;->this$0:Lcom/hijacker/FileExplorerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Lcom/hijacker/EditTextDialog;

    invoke-direct {p1}, Lcom/hijacker/EditTextDialog;-><init>()V

    iget-object v0, p0, Lcom/hijacker/FileExplorerDialog$2;->this$0:Lcom/hijacker/FileExplorerDialog;

    const v1, 0x7f1000a9

    invoke-virtual {v0, v1}, Lcom/hijacker/FileExplorerDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hijacker/EditTextDialog;->setTitle(Ljava/lang/String;)V

    new-instance v0, Lcom/hijacker/FileExplorerDialog$2$1;

    invoke-direct {v0, p0, p1}, Lcom/hijacker/FileExplorerDialog$2$1;-><init>(Lcom/hijacker/FileExplorerDialog$2;Lcom/hijacker/EditTextDialog;)V

    invoke-virtual {p1, v0}, Lcom/hijacker/EditTextDialog;->setRunnable(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/hijacker/FileExplorerDialog$2;->this$0:Lcom/hijacker/FileExplorerDialog;

    invoke-virtual {v0}, Lcom/hijacker/FileExplorerDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "EditTextDialog"

    invoke-virtual {p1, v0, v1}, Lcom/hijacker/EditTextDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
