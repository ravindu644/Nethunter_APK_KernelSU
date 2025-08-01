.class Lcom/hijacker/FileExplorerDialog$5;
.super Ljava/lang/Object;
.source "FileExplorerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/hijacker/FileExplorerDialog$5;->this$0:Lcom/hijacker/FileExplorerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/hijacker/FileExplorerDialog$5;->this$0:Lcom/hijacker/FileExplorerDialog;

    iget-object p1, p1, Lcom/hijacker/FileExplorerDialog;->onCancel:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hijacker/FileExplorerDialog$5;->this$0:Lcom/hijacker/FileExplorerDialog;

    iget-object p1, p1, Lcom/hijacker/FileExplorerDialog;->onCancel:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
