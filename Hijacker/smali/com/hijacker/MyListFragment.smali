.class public Lcom/hijacker/MyListFragment;
.super Landroid/app/ListFragment;
.source "MyListFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c003c

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget-object p2, Lcom/hijacker/MainActivity;->adapter:Lcom/hijacker/MainActivity$MyListAdapter;

    invoke-virtual {p0, p2}, Lcom/hijacker/MyListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-object p1
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/app/ListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    sget-object p1, Lcom/hijacker/Tile;->tiles:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hijacker/Tile;

    iget-object p1, p1, Lcom/hijacker/Tile;->device:Lcom/hijacker/Device;

    invoke-virtual {p0}, Lcom/hijacker/MyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    check-cast p3, Lcom/hijacker/MainActivity;

    invoke-virtual {p1, p3, p2}, Lcom/hijacker/Device;->getPopupMenu(Lcom/hijacker/MainActivity;Landroid/view/View;)Landroid/widget/PopupMenu;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    const v0, 0x7f090129

    sput v0, Lcom/hijacker/MainActivity;->currentFragment:I

    invoke-virtual {p0}, Lcom/hijacker/MyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/hijacker/MainActivity;

    invoke-virtual {v0}, Lcom/hijacker/MainActivity;->refreshDrawer()V

    return-void
.end method
