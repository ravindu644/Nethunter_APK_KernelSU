.class Lcom/hijacker/CustomActionManagerFragment$1;
.super Ljava/lang/Object;
.source "CustomActionManagerFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/CustomActionManagerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hijacker/CustomActionManagerFragment;


# direct methods
.method constructor <init>(Lcom/hijacker/CustomActionManagerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/CustomActionManagerFragment$1;->this$0:Lcom/hijacker/CustomActionManagerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    new-instance p1, Landroid/widget/PopupMenu;

    iget-object p4, p0, Lcom/hijacker/CustomActionManagerFragment$1;->this$0:Lcom/hijacker/CustomActionManagerFragment;

    invoke-virtual {p4}, Lcom/hijacker/CustomActionManagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object p4

    invoke-direct {p1, p4, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p2

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p4

    const p5, 0x7f0d0001

    invoke-virtual {p2, p5, p4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p2

    iget-object p4, p0, Lcom/hijacker/CustomActionManagerFragment$1;->this$0:Lcom/hijacker/CustomActionManagerFragment;

    const p5, 0x7f100088

    invoke-virtual {p4, p5}, Lcom/hijacker/CustomActionManagerFragment;->getString(I)Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x0

    invoke-interface {p2, p5, p5, p5, p4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p2

    iget-object p4, p0, Lcom/hijacker/CustomActionManagerFragment$1;->this$0:Lcom/hijacker/CustomActionManagerFragment;

    const v0, 0x7f100078

    invoke-virtual {p4, v0}, Lcom/hijacker/CustomActionManagerFragment;->getString(I)Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x1

    invoke-interface {p2, p5, v0, v0, p4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    new-instance p2, Lcom/hijacker/CustomActionManagerFragment$1$1;

    invoke-direct {p2, p0, p3}, Lcom/hijacker/CustomActionManagerFragment$1$1;-><init>(Lcom/hijacker/CustomActionManagerFragment$1;I)V

    invoke-virtual {p1, p2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method
