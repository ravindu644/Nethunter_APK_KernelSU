.class Lcom/hijacker/AP$2;
.super Ljava/lang/Object;
.source "AP.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/AP;->getPopupMenu(Lcom/hijacker/MainActivity;Landroid/view/View;)Landroid/widget/PopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hijacker/AP;

.field final synthetic val$activity:Lcom/hijacker/MainActivity;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/hijacker/AP;Lcom/hijacker/MainActivity;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/AP$2;->this$0:Lcom/hijacker/AP;

    iput-object p2, p0, Lcom/hijacker/AP$2;->val$activity:Lcom/hijacker/MainActivity;

    iput-object p3, p0, Lcom/hijacker/AP$2;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 8

    sget-boolean v0, Lcom/hijacker/MainActivity;->debug:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clicked "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for ap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HIJACKER/MyListFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_a

    if-eq p1, v0, :cond_8

    const/4 v1, 0x2

    if-eq p1, v1, :cond_7

    const/4 v2, 0x3

    if-eq p1, v2, :cond_6

    const/4 v3, 0x5

    const/4 v4, 0x4

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_1

    goto/16 :goto_0

    :cond_1
    new-instance p1, Lcom/hijacker/EditTextDialog;

    invoke-direct {p1}, Lcom/hijacker/EditTextDialog;-><init>()V

    iget-object v1, p0, Lcom/hijacker/AP$2;->val$activity:Lcom/hijacker/MainActivity;

    const v2, 0x7f100157

    invoke-virtual {v1, v2}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/hijacker/EditTextDialog;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hijacker/AP$2;->this$0:Lcom/hijacker/AP;

    iget-object v1, v1, Lcom/hijacker/AP;->alias:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/hijacker/EditTextDialog;->setDefaultText(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/hijacker/EditTextDialog;->setAllowEmpty(Z)V

    new-instance v1, Lcom/hijacker/AP$2$2;

    invoke-direct {v1, p0, p1}, Lcom/hijacker/AP$2$2;-><init>(Lcom/hijacker/AP$2;Lcom/hijacker/EditTextDialog;)V

    invoke-virtual {p1, v1}, Lcom/hijacker/EditTextDialog;->setRunnable(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/hijacker/AP$2;->val$activity:Lcom/hijacker/MainActivity;

    invoke-virtual {v1}, Lcom/hijacker/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "EditTextDialog"

    invoke-virtual {p1, v1, v2}, Lcom/hijacker/EditTextDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    new-instance p1, Landroid/widget/PopupMenu;

    iget-object v5, p0, Lcom/hijacker/AP$2;->val$activity:Lcom/hijacker/MainActivity;

    iget-object v6, p0, Lcom/hijacker/AP$2;->val$v:Landroid/view/View;

    invoke-direct {p1, v5, v6}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v5

    const v6, 0x7f0d0001

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "Disconnect..."

    invoke-interface {v5, v6, v6, v6, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    iget-object v5, p0, Lcom/hijacker/AP$2;->this$0:Lcom/hijacker/AP;

    iget-object v5, v5, Lcom/hijacker/AP;->clients:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v5

    const-string v7, "Disconnect Client"

    invoke-interface {v5, v6, v0, v0, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_3
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v5

    const-string v7, "Copy disconnect command"

    invoke-interface {v5, v6, v1, v1, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v5

    const-string v7, "DoS"

    invoke-interface {v5, v6, v2, v2, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/hijacker/AP$2;->this$0:Lcom/hijacker/AP;

    iget v2, v2, Lcom/hijacker/AP;->sec:I

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/hijacker/AP$2;->this$0:Lcom/hijacker/AP;

    iget v2, v2, Lcom/hijacker/AP;->sec:I

    if-eq v2, v0, :cond_4

    iget-object v2, p0, Lcom/hijacker/AP$2;->this$0:Lcom/hijacker/AP;

    iget v2, v2, Lcom/hijacker/AP;->sec:I

    if-ne v2, v1, :cond_5

    :cond_4
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const-string v2, "Crack"

    invoke-interface {v1, v6, v4, v4, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const-string v2, "Copy crack command"

    invoke-interface {v1, v6, v3, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_5
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v2, 0x6

    const-string v3, "Crack with Reaver"

    invoke-interface {v1, v6, v2, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    new-instance v1, Lcom/hijacker/AP$2$1;

    invoke-direct {v1, p0}, Lcom/hijacker/AP$2$1;-><init>(Lcom/hijacker/AP$2;)V

    invoke-virtual {p1, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->show()V

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/hijacker/AP$2;->this$0:Lcom/hijacker/AP;

    iget-object p1, p1, Lcom/hijacker/AP;->mac:Ljava/lang/String;

    invoke-static {p1}, Lcom/hijacker/MainActivity;->isolate(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hijacker/AP$2;->this$0:Lcom/hijacker/AP;

    invoke-static {p1}, Lcom/hijacker/Airodump;->startClean(Lcom/hijacker/AP;)V

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lcom/hijacker/AP$2;->this$0:Lcom/hijacker/AP;

    iget-object p1, p1, Lcom/hijacker/AP;->mac:Ljava/lang/String;

    iget-object v1, p0, Lcom/hijacker/AP$2;->val$v:Landroid/view/View;

    invoke-static {p1, v1}, Lcom/hijacker/MainActivity;->copy(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    :cond_8
    iget-object p1, p0, Lcom/hijacker/AP$2;->this$0:Lcom/hijacker/AP;

    iget-boolean p1, p1, Lcom/hijacker/AP;->isMarked:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/hijacker/AP$2;->this$0:Lcom/hijacker/AP;

    invoke-virtual {p1}, Lcom/hijacker/AP;->unmark()V

    goto :goto_0

    :cond_9
    iget-object p1, p0, Lcom/hijacker/AP$2;->this$0:Lcom/hijacker/AP;

    invoke-virtual {p1}, Lcom/hijacker/AP;->mark()V

    goto :goto_0

    :cond_a
    iget-object p1, p0, Lcom/hijacker/AP$2;->this$0:Lcom/hijacker/AP;

    iget-object v1, p0, Lcom/hijacker/AP$2;->val$activity:Lcom/hijacker/MainActivity;

    invoke-virtual {v1}, Lcom/hijacker/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/hijacker/AP;->showInfo(Landroid/app/FragmentManager;)V

    :goto_0
    return v0
.end method
