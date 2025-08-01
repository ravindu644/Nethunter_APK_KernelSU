.class Lcom/hijacker/MainActivity$FileExplorerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hijacker/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileExplorerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/hijacker/RootFile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hijacker/MainActivity;


# direct methods
.method constructor <init>(Lcom/hijacker/MainActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/hijacker/MainActivity$FileExplorerAdapter;->this$0:Lcom/hijacker/MainActivity;

    const v0, 0x7f0c0035

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    sget-object v0, Lcom/hijacker/FileExplorerDialog;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/hijacker/MainActivity$FileExplorerAdapter;->this$0:Lcom/hijacker/MainActivity;

    invoke-virtual {p2}, Lcom/hijacker/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0035

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    sget-object p3, Lcom/hijacker/FileExplorerDialog;->list:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hijacker/RootFile;

    const p3, 0x7f0900b9

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/hijacker/RootFile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0900ba

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/hijacker/RootFile;->isFile()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f080073

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const p1, 0x7f080075

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-object p2
.end method
