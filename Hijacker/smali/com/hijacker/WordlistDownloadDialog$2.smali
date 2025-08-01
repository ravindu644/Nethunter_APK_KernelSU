.class Lcom/hijacker/WordlistDownloadDialog$2;
.super Ljava/lang/Object;
.source "WordlistDownloadDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/WordlistDownloadDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hijacker/WordlistDownloadDialog;


# direct methods
.method constructor <init>(Lcom/hijacker/WordlistDownloadDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/WordlistDownloadDialog$2;->this$0:Lcom/hijacker/WordlistDownloadDialog;

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

    iget-object p1, p0, Lcom/hijacker/WordlistDownloadDialog$2;->this$0:Lcom/hijacker/WordlistDownloadDialog;

    iget-object p2, p1, Lcom/hijacker/WordlistDownloadDialog;->wordlists:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/hijacker/WordlistDownloadDialog$Wordlist;

    invoke-virtual {p1, p2}, Lcom/hijacker/WordlistDownloadDialog;->beginDownload(Lcom/hijacker/WordlistDownloadDialog$Wordlist;)V

    iget-object p1, p0, Lcom/hijacker/WordlistDownloadDialog$2;->this$0:Lcom/hijacker/WordlistDownloadDialog;

    invoke-virtual {p1}, Lcom/hijacker/WordlistDownloadDialog;->dismissAllowingStateLoss()V

    return-void
.end method
