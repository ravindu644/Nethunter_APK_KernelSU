.class Lcom/hijacker/ST$4;
.super Ljava/lang/Object;
.source "ST.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/ST;->getPopupMenu(Lcom/hijacker/MainActivity;Landroid/view/View;)Landroid/widget/PopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hijacker/ST;

.field final synthetic val$activity:Lcom/hijacker/MainActivity;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/hijacker/ST;Lcom/hijacker/MainActivity;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/ST$4;->this$0:Lcom/hijacker/ST;

    iput-object p2, p0, Lcom/hijacker/ST$4;->val$activity:Lcom/hijacker/MainActivity;

    iput-object p3, p0, Lcom/hijacker/ST$4;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    sget-boolean v0, Lcom/hijacker/MainActivity;->debug:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clicked "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for st"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HIJACKER/MyListFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_7

    if-eq p1, v0, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    goto/16 :goto_0

    :cond_1
    new-instance p1, Lcom/hijacker/EditTextDialog;

    invoke-direct {p1}, Lcom/hijacker/EditTextDialog;-><init>()V

    iget-object v1, p0, Lcom/hijacker/ST$4;->val$activity:Lcom/hijacker/MainActivity;

    const v2, 0x7f100157

    invoke-virtual {v1, v2}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/hijacker/EditTextDialog;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/hijacker/EditTextDialog;->setAllowEmpty(Z)V

    iget-object v1, p0, Lcom/hijacker/ST$4;->this$0:Lcom/hijacker/ST;

    iget-object v1, v1, Lcom/hijacker/ST;->alias:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/hijacker/EditTextDialog;->setDefaultText(Ljava/lang/String;)V

    new-instance v1, Lcom/hijacker/ST$4$1;

    invoke-direct {v1, p0, p1}, Lcom/hijacker/ST$4$1;-><init>(Lcom/hijacker/ST$4;Lcom/hijacker/EditTextDialog;)V

    invoke-virtual {p1, v1}, Lcom/hijacker/EditTextDialog;->setRunnable(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/hijacker/ST$4;->val$activity:Lcom/hijacker/MainActivity;

    invoke-virtual {v1}, Lcom/hijacker/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "EditTextDialog"

    invoke-virtual {p1, v1, v2}, Lcom/hijacker/EditTextDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/hijacker/ST$4;->this$0:Lcom/hijacker/ST;

    iget-boolean p1, p1, Lcom/hijacker/ST;->isMarked:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/hijacker/ST$4;->this$0:Lcom/hijacker/ST;

    invoke-virtual {p1}, Lcom/hijacker/ST;->unmark()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/hijacker/ST$4;->this$0:Lcom/hijacker/ST;

    invoke-virtual {p1}, Lcom/hijacker/ST;->mark()V

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hijacker/MainActivity;->prefix:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/hijacker/MainActivity;->aireplay_dir:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --ignore-negative-one --deauth 0 -a "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hijacker/ST$4;->this$0:Lcom/hijacker/ST;

    iget-object v2, v2, Lcom/hijacker/ST;->bssid:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -c "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hijacker/ST$4;->this$0:Lcom/hijacker/ST;

    iget-object v2, v2, Lcom/hijacker/ST;->mac:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/hijacker/MainActivity;->iface:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/hijacker/ST$4;->val$v:Landroid/view/View;

    invoke-static {p1, v1}, Lcom/hijacker/MainActivity;->copy(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/hijacker/ST$4;->this$0:Lcom/hijacker/ST;

    invoke-virtual {p1}, Lcom/hijacker/ST;->disconnect()V

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/hijacker/ST$4;->this$0:Lcom/hijacker/ST;

    iget-object p1, p1, Lcom/hijacker/ST;->mac:Ljava/lang/String;

    iget-object v1, p0, Lcom/hijacker/ST$4;->val$v:Landroid/view/View;

    invoke-static {p1, v1}, Lcom/hijacker/MainActivity;->copy(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lcom/hijacker/ST$4;->this$0:Lcom/hijacker/ST;

    iget-object v1, p0, Lcom/hijacker/ST$4;->val$activity:Lcom/hijacker/MainActivity;

    invoke-virtual {v1}, Lcom/hijacker/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/hijacker/ST;->showInfo(Landroid/app/FragmentManager;)V

    :goto_0
    return v0
.end method
