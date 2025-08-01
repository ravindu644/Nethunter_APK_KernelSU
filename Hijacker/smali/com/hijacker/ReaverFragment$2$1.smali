.class Lcom/hijacker/ReaverFragment$2$1;
.super Ljava/lang/Object;
.source "ReaverFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/ReaverFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hijacker/ReaverFragment$2;


# direct methods
.method constructor <init>(Lcom/hijacker/ReaverFragment$2;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/ReaverFragment$2$1;->this$1:Lcom/hijacker/ReaverFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    sput-object v0, Lcom/hijacker/ReaverFragment;->custom_mac:Ljava/lang/String;

    sget-object v0, Lcom/hijacker/AP;->APs:Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hijacker/AP;

    sget-object v0, Lcom/hijacker/ReaverFragment;->ap:Lcom/hijacker/AP;

    if-eq v0, p1, :cond_0

    sput-object p1, Lcom/hijacker/ReaverFragment;->ap:Lcom/hijacker/AP;

    :cond_0
    iget-object p1, p0, Lcom/hijacker/ReaverFragment$2$1;->this$1:Lcom/hijacker/ReaverFragment$2;

    iget-object p1, p1, Lcom/hijacker/ReaverFragment$2;->this$0:Lcom/hijacker/ReaverFragment;

    iget-object p1, p1, Lcom/hijacker/ReaverFragment;->select_button:Landroid/widget/Button;

    sget-object v0, Lcom/hijacker/ReaverFragment;->ap:Lcom/hijacker/AP;

    invoke-virtual {v0}, Lcom/hijacker/AP;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/hijacker/EditTextDialog;

    invoke-direct {p1}, Lcom/hijacker/EditTextDialog;-><init>()V

    iget-object v0, p0, Lcom/hijacker/ReaverFragment$2$1;->this$1:Lcom/hijacker/ReaverFragment$2;

    iget-object v0, v0, Lcom/hijacker/ReaverFragment$2;->this$0:Lcom/hijacker/ReaverFragment;

    const v1, 0x7f10006b

    invoke-virtual {v0, v1}, Lcom/hijacker/ReaverFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hijacker/EditTextDialog;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hijacker/ReaverFragment$2$1;->this$1:Lcom/hijacker/ReaverFragment$2;

    iget-object v0, v0, Lcom/hijacker/ReaverFragment$2;->this$0:Lcom/hijacker/ReaverFragment;

    const v1, 0x7f1000d4

    invoke-virtual {v0, v1}, Lcom/hijacker/ReaverFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hijacker/EditTextDialog;->setHint(Ljava/lang/String;)V

    new-instance v0, Lcom/hijacker/ReaverFragment$2$1$1;

    invoke-direct {v0, p0, p1}, Lcom/hijacker/ReaverFragment$2$1$1;-><init>(Lcom/hijacker/ReaverFragment$2$1;Lcom/hijacker/EditTextDialog;)V

    invoke-virtual {p1, v0}, Lcom/hijacker/EditTextDialog;->setRunnable(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/hijacker/MainActivity;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v1, "EditTextDialog"

    invoke-virtual {p1, v0, v1}, Lcom/hijacker/EditTextDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
