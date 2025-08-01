.class Lcom/hijacker/WordlistDownloadDialog$WordlistAdapter;
.super Landroid/widget/ArrayAdapter;
.source "WordlistDownloadDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hijacker/WordlistDownloadDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WordlistAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/hijacker/Tile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hijacker/WordlistDownloadDialog;


# direct methods
.method constructor <init>(Lcom/hijacker/WordlistDownloadDialog;)V
    .locals 1

    iput-object p1, p0, Lcom/hijacker/WordlistDownloadDialog$WordlistAdapter;->this$0:Lcom/hijacker/WordlistDownloadDialog;

    invoke-virtual {p1}, Lcom/hijacker/WordlistDownloadDialog;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0c007f

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/hijacker/WordlistDownloadDialog$WordlistAdapter;->this$0:Lcom/hijacker/WordlistDownloadDialog;

    iget-object v0, v0, Lcom/hijacker/WordlistDownloadDialog;->wordlists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/hijacker/WordlistDownloadDialog$WordlistAdapter;->this$0:Lcom/hijacker/WordlistDownloadDialog;

    invoke-virtual {p2}, Lcom/hijacker/WordlistDownloadDialog;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c007f

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object p3, p0, Lcom/hijacker/WordlistDownloadDialog$WordlistAdapter;->this$0:Lcom/hijacker/WordlistDownloadDialog;

    iget-object p3, p3, Lcom/hijacker/WordlistDownloadDialog;->wordlists:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hijacker/WordlistDownloadDialog$Wordlist;

    const p3, 0x7f090101

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f090175

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/hijacker/WordlistDownloadDialog$Wordlist;->filename:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/hijacker/WordlistDownloadDialog$WordlistAdapter;->this$0:Lcom/hijacker/WordlistDownloadDialog;

    const v2, 0x7f100161

    invoke-virtual {v1, v2}, Lcom/hijacker/WordlistDownloadDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/hijacker/WordlistDownloadDialog$Wordlist;->size:I

    div-int/lit16 p1, p1, 0x400

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "KB"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
