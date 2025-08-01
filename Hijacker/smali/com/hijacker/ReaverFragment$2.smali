.class Lcom/hijacker/ReaverFragment$2;
.super Ljava/lang/Object;
.source "ReaverFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/ReaverFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hijacker/ReaverFragment;


# direct methods
.method constructor <init>(Lcom/hijacker/ReaverFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/ReaverFragment$2;->this$0:Lcom/hijacker/ReaverFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/hijacker/ReaverFragment$2;->this$0:Lcom/hijacker/ReaverFragment;

    invoke-virtual {v1}, Lcom/hijacker/ReaverFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f0d0001

    invoke-virtual {p1, v2, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    sget-object p1, Lcom/hijacker/AP;->APs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hijacker/AP;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-virtual {v3}, Lcom/hijacker/AP;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v1, v2, v2, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    iget v4, v3, Lcom/hijacker/AP;->sec:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    iget v3, v3, Lcom/hijacker/AP;->sec:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const/4 v1, 0x1

    const-string v3, "Custom"

    invoke-interface {p1, v1, v2, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    new-instance p1, Lcom/hijacker/ReaverFragment$2$1;

    invoke-direct {p1, p0}, Lcom/hijacker/ReaverFragment$2$1;-><init>(Lcom/hijacker/ReaverFragment$2;)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method
