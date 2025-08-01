.class Lcom/hijacker/FileExplorerDialog$3;
.super Ljava/lang/Object;
.source "FileExplorerDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    iput-object p1, p0, Lcom/hijacker/FileExplorerDialog$3;->this$0:Lcom/hijacker/FileExplorerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    sget-object p1, Lcom/hijacker/FileExplorerDialog;->list:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hijacker/RootFile;

    invoke-virtual {p1}, Lcom/hijacker/RootFile;->isDirectory()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/hijacker/FileExplorerDialog$3;->this$0:Lcom/hijacker/FileExplorerDialog;

    sget-object p2, Lcom/hijacker/FileExplorerDialog;->list:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/hijacker/RootFile;

    invoke-virtual {p1, p2}, Lcom/hijacker/FileExplorerDialog;->goToDirectory(Lcom/hijacker/RootFile;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/hijacker/FileExplorerDialog$3;->this$0:Lcom/hijacker/FileExplorerDialog;

    invoke-virtual {p2, p1}, Lcom/hijacker/FileExplorerDialog;->onSelect(Lcom/hijacker/RootFile;)V

    :goto_0
    return-void
.end method
