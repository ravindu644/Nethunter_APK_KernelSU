.class Lcom/hijacker/AP$2$1;
.super Ljava/lang/Object;
.source "AP.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/AP$2;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hijacker/AP$2;


# direct methods
.method constructor <init>(Lcom/hijacker/AP$2;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/AP$2$1;->this$1:Lcom/hijacker/AP$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const-string v0, " "

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-static {}, Lcom/hijacker/ReaverFragment;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hijacker/AP$2$1;->this$1:Lcom/hijacker/AP$2;

    iget-object p1, p1, Lcom/hijacker/AP$2;->val$activity:Lcom/hijacker/MainActivity;

    iget-object v0, p0, Lcom/hijacker/AP$2$1;->this$1:Lcom/hijacker/AP$2;

    iget-object v0, v0, Lcom/hijacker/AP$2;->val$activity:Lcom/hijacker/MainActivity;

    const v2, 0x7f10013b

    invoke-virtual {v0, v2}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    :cond_0
    iget-object p1, p0, Lcom/hijacker/AP$2$1;->this$1:Lcom/hijacker/AP$2;

    iget-object p1, p1, Lcom/hijacker/AP$2;->this$0:Lcom/hijacker/AP;

    iget-object v0, p0, Lcom/hijacker/AP$2$1;->this$1:Lcom/hijacker/AP$2;

    iget-object v0, v0, Lcom/hijacker/AP$2;->val$activity:Lcom/hijacker/MainActivity;

    invoke-virtual {p1, v0}, Lcom/hijacker/AP;->crackReaver(Lcom/hijacker/MainActivity;)V

    goto/16 :goto_2

    :pswitch_1
    iget-object p1, p0, Lcom/hijacker/AP$2$1;->this$1:Lcom/hijacker/AP$2;

    iget-object p1, p1, Lcom/hijacker/AP$2;->this$0:Lcom/hijacker/AP;

    iget p1, p1, Lcom/hijacker/AP;->sec:I

    const/4 v2, 0x2

    const-string v3, " --bssid "

    const-string v4, " --channel "

    if-ne p1, v2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/hijacker/MainActivity;->prefix:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/hijacker/MainActivity;->airodump_dir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hijacker/AP$2$1;->this$1:Lcom/hijacker/AP$2;

    iget-object v0, v0, Lcom/hijacker/AP$2;->this$0:Lcom/hijacker/AP;

    iget v0, v0, Lcom/hijacker/AP;->ch:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hijacker/AP$2$1;->this$1:Lcom/hijacker/AP$2;

    iget-object v0, v0, Lcom/hijacker/AP$2;->this$0:Lcom/hijacker/AP;

    iget-object v0, v0, Lcom/hijacker/AP;->mac:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --ivs -w "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/hijacker/MainActivity;->cap_path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/wep_ivs "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/hijacker/MainActivity;->iface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/hijacker/MainActivity;->prefix:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/hijacker/MainActivity;->airodump_dir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hijacker/AP$2$1;->this$1:Lcom/hijacker/AP$2;

    iget-object v0, v0, Lcom/hijacker/AP$2;->this$0:Lcom/hijacker/AP;

    iget v0, v0, Lcom/hijacker/AP;->ch:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hijacker/AP$2$1;->this$1:Lcom/hijacker/AP$2;

    iget-object v0, v0, Lcom/hijacker/AP$2;->this$0:Lcom/hijacker/AP;

    iget-object v0, v0, Lcom/hijacker/AP;->mac:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -w "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/hijacker/MainActivity;->cap_path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/handshake "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/hijacker/MainActivity;->iface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/hijacker/AP$2$1;->this$1:Lcom/hijacker/AP$2;

    iget-object v0, v0, Lcom/hijacker/AP$2;->val$v:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/hijacker/MainActivity;->copy(Ljava/lang/String;Landroid/view/View;)V

    goto/16 :goto_2

    :pswitch_2
    iget-object p1, p0, Lcom/hijacker/AP$2$1;->this$1:Lcom/hijacker/AP$2;

    iget-object p1, p1, Lcom/hijacker/AP$2;->this$0:Lcom/hijacker/AP;

    invoke-virtual {p1}, Lcom/hijacker/AP;->crack()V

    goto/16 :goto_2

    :pswitch_3
    const/4 p1, 0x3

    invoke-static {p1}, Lcom/hijacker/MainActivity;->stop(I)V

    iget-object p1, p0, Lcom/hijacker/AP$2$1;->this$1:Lcom/hijacker/AP$2;

    iget-object p1, p1, Lcom/hijacker/AP$2;->this$0:Lcom/hijacker/AP;

    sput-object p1, Lcom/hijacker/MDKFragment;->ados_ap:Lcom/hijacker/AP;

    sget-object p1, Lcom/hijacker/MainActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f0900cb

    new-instance v2, Lcom/hijacker/MDKFragment;

    invoke-direct {v2}, Lcom/hijacker/MDKFragment;-><init>()V

    invoke-virtual {p1, v0, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    const/16 v0, 0x1001

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    sget-object p1, Lcom/hijacker/MainActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    sget-object p1, Lcom/hijacker/MDKFragment;->ados_switch:Landroid/widget/Switch;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_2

    :pswitch_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/hijacker/MainActivity;->prefix:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/hijacker/MainActivity;->aireplay_dir:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --deauth 0 -a "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hijacker/AP$2$1;->this$1:Lcom/hijacker/AP$2;

    iget-object v2, v2, Lcom/hijacker/AP$2;->this$0:Lcom/hijacker/AP;

    iget-object v2, v2, Lcom/hijacker/AP;->mac:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/hijacker/MainActivity;->iface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/hijacker/AP$2$1;->this$1:Lcom/hijacker/AP$2;

    iget-object v0, v0, Lcom/hijacker/AP$2;->val$v:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/hijacker/MainActivity;->copy(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_2

    :pswitch_5
    new-instance p1, Landroid/widget/PopupMenu;

    iget-object v0, p0, Lcom/hijacker/AP$2$1;->this$1:Lcom/hijacker/AP$2;

    iget-object v0, v0, Lcom/hijacker/AP$2;->val$activity:Lcom/hijacker/MainActivity;

    iget-object v2, p0, Lcom/hijacker/AP$2$1;->this$1:Lcom/hijacker/AP$2;

    iget-object v2, v2, Lcom/hijacker/AP$2;->val$v:Landroid/view/View;

    invoke-direct {p1, v0, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v2, 0x7f0d0001

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/hijacker/AP$2$1;->this$1:Lcom/hijacker/AP$2;

    iget-object v2, v2, Lcom/hijacker/AP$2;->this$0:Lcom/hijacker/AP;

    iget-object v2, v2, Lcom/hijacker/AP;->clients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    iget-object v3, p0, Lcom/hijacker/AP$2$1;->this$1:Lcom/hijacker/AP$2;

    iget-object v3, v3, Lcom/hijacker/AP$2;->this$0:Lcom/hijacker/AP;

    iget-object v3, v3, Lcom/hijacker/AP;->clients:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hijacker/ST;

    invoke-virtual {v3}, Lcom/hijacker/ST;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v0, v0, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/hijacker/AP$2$1$1;

    invoke-direct {v0, p0}, Lcom/hijacker/AP$2$1$1;-><init>(Lcom/hijacker/AP$2$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->show()V

    goto :goto_2

    :pswitch_6
    iget-object p1, p0, Lcom/hijacker/AP$2$1;->this$1:Lcom/hijacker/AP$2;

    iget-object p1, p1, Lcom/hijacker/AP$2;->this$0:Lcom/hijacker/AP;

    invoke-virtual {p1}, Lcom/hijacker/AP;->disconnectAll()V

    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
