.class Lcom/hijacker/ExportDialog$1;
.super Ljava/lang/Object;
.source "ExportDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    iput-object p1, p0, Lcom/hijacker/ExportDialog$1;->this$0:Lcom/hijacker/ExportDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    const/4 p3, 0x6

    if-ne p2, p3, :cond_0

    iget-object p2, p0, Lcom/hijacker/ExportDialog$1;->this$0:Lcom/hijacker/ExportDialog;

    invoke-virtual {p2, p1}, Lcom/hijacker/ExportDialog;->attemptExport(Z)V

    const/4 p1, 0x1

    :cond_0
    return p1
.end method
