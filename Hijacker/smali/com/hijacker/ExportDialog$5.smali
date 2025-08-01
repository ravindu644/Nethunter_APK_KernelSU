.class Lcom/hijacker/ExportDialog$5;
.super Ljava/lang/Object;
.source "ExportDialog.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/ExportDialog;->onStart()V
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

    iput-object p1, p0, Lcom/hijacker/ExportDialog$5;->this$0:Lcom/hijacker/ExportDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    iget-object p1, p0, Lcom/hijacker/ExportDialog$5;->this$0:Lcom/hijacker/ExportDialog;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/hijacker/ExportDialog;->attemptExport(Z)V

    return v0
.end method
