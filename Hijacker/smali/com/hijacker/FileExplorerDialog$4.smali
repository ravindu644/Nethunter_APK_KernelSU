.class Lcom/hijacker/FileExplorerDialog$4;
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

    iput-object p1, p0, Lcom/hijacker/FileExplorerDialog$4;->this$0:Lcom/hijacker/FileExplorerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/hijacker/FileExplorerDialog$4;->this$0:Lcom/hijacker/FileExplorerDialog;

    iget-object p2, p1, Lcom/hijacker/FileExplorerDialog;->current:Lcom/hijacker/RootFile;

    invoke-virtual {p1, p2}, Lcom/hijacker/FileExplorerDialog;->onSelect(Lcom/hijacker/RootFile;)V

    return-void
.end method
