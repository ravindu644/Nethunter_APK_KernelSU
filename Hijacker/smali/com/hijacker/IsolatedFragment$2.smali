.class Lcom/hijacker/IsolatedFragment$2;
.super Ljava/lang/Object;
.source "IsolatedFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/IsolatedFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hijacker/IsolatedFragment;


# direct methods
.method constructor <init>(Lcom/hijacker/IsolatedFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/IsolatedFragment$2;->this$0:Lcom/hijacker/IsolatedFragment;

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

    sget-object p1, Lcom/hijacker/Tile;->tiles:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hijacker/Tile;

    iget-object p1, p1, Lcom/hijacker/Tile;->device:Lcom/hijacker/Device;

    iget-object p3, p0, Lcom/hijacker/IsolatedFragment$2;->this$0:Lcom/hijacker/IsolatedFragment;

    invoke-virtual {p3}, Lcom/hijacker/IsolatedFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    check-cast p3, Lcom/hijacker/MainActivity;

    invoke-virtual {p1, p3, p2}, Lcom/hijacker/Device;->getPopupMenu(Lcom/hijacker/MainActivity;Landroid/view/View;)Landroid/widget/PopupMenu;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method
