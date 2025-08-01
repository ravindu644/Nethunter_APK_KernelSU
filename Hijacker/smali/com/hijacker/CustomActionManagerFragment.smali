.class public Lcom/hijacker/CustomActionManagerFragment;
.super Landroid/app/Fragment;
.source "CustomActionManagerFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0023

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0900f2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    sget-object p3, Lcom/hijacker/MainActivity;->custom_action_adapter:Lcom/hijacker/MainActivity$CustomActionAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance p3, Lcom/hijacker/CustomActionManagerFragment$1;

    invoke-direct {p3, p0}, Lcom/hijacker/CustomActionManagerFragment$1;-><init>(Lcom/hijacker/CustomActionManagerFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const p2, 0x7f0900c9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance p3, Lcom/hijacker/CustomActionManagerFragment$2;

    invoke-direct {p3, p0}, Lcom/hijacker/CustomActionManagerFragment$2;-><init>(Lcom/hijacker/CustomActionManagerFragment;)V

    invoke-virtual {p2, p3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    const v0, 0x7f09012b

    sput v0, Lcom/hijacker/MainActivity;->currentFragment:I

    invoke-virtual {p0}, Lcom/hijacker/CustomActionManagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/hijacker/MainActivity;

    invoke-virtual {v0}, Lcom/hijacker/MainActivity;->refreshDrawer()V

    return-void
.end method
