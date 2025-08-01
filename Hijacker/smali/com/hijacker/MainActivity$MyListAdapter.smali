.class Lcom/hijacker/MainActivity$MyListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hijacker/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/hijacker/Tile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hijacker/MainActivity;


# direct methods
.method constructor <init>(Lcom/hijacker/MainActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/hijacker/MainActivity$MyListAdapter;->this$0:Lcom/hijacker/MainActivity;

    const v0, 0x7f0c003d

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    sget-object v0, Lcom/hijacker/Tile;->tiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/hijacker/MainActivity$MyListAdapter;->this$0:Lcom/hijacker/MainActivity;

    invoke-virtual {p2}, Lcom/hijacker/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c003d

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    sget-object p3, Lcom/hijacker/Tile;->tiles:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hijacker/Tile;

    const p3, 0x7f0901ce

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/hijacker/Tile;->device:Lcom/hijacker/Device;

    iget-object v1, v1, Lcom/hijacker/Device;->upperLeft:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/hijacker/MainActivity$MyListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/hijacker/Tile;->device:Lcom/hijacker/Device;

    iget-boolean v2, v2, Lcom/hijacker/Device;->isMarked:Z

    if-eqz v2, :cond_1

    const v2, 0x7f06002b

    goto :goto_0

    :cond_1
    const v2, 0x106000b

    :goto_0
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const p3, 0x7f0900fc

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/hijacker/Tile;->device:Lcom/hijacker/Device;

    iget-object v1, v1, Lcom/hijacker/Device;->lowerLeft:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0900fd

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/hijacker/Tile;->device:Lcom/hijacker/Device;

    iget-object v1, v1, Lcom/hijacker/Device;->lowerRight:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0901cf

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/hijacker/Tile;->device:Lcom/hijacker/Device;

    iget-object v1, v1, Lcom/hijacker/Device;->upperRight:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0900e7

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const v1, 0x7f0900d7

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p1, Lcom/hijacker/Tile;->device:Lcom/hijacker/Device;

    instance-of v2, v2, Lcom/hijacker/AP;

    const/16 v3, 0x8

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/hijacker/Tile;->device:Lcom/hijacker/Device;

    check-cast v2, Lcom/hijacker/AP;

    iget-boolean v2, v2, Lcom/hijacker/AP;->isHidden:Z

    if-eqz v2, :cond_2

    const v2, 0x7f08005e

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    const v2, 0x7f08005c

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    sget-boolean p3, Lcom/hijacker/MainActivity;->show_client_count:Z

    if-eqz p3, :cond_3

    iget-object p1, p1, Lcom/hijacker/Tile;->device:Lcom/hijacker/Device;

    check-cast p1, Lcom/hijacker/AP;

    iget-object p1, p1, Lcom/hijacker/AP;->clients:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    const p1, 0x7f0800a3

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-object p2
.end method
