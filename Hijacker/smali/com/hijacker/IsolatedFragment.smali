.class public Lcom/hijacker/IsolatedFragment;
.super Landroid/app/Fragment;
.source "IsolatedFragment.java"


# static fields
.field static ap_details:Landroid/widget/LinearLayout;

.field static ap_details2:Landroid/widget/LinearLayout;

.field static clients:Landroid/widget/TextView;

.field static exit_on:I

.field static is_ap:Lcom/hijacker/AP;

.field static pref:Landroid/content/SharedPreferences;


# instance fields
.field capture:Landroid/widget/Button;

.field private cont:Z

.field deauth_all:Landroid/widget/Button;

.field dos:Landroid/widget/Button;

.field essid:Landroid/widget/TextView;

.field fragmentView:Landroid/view/View;

.field mac:Landroid/widget/TextView;

.field manuf:Landroid/widget/TextView;

.field numbers:Landroid/widget/TextView;

.field refreshRunnable:Ljava/lang/Runnable;

.field private runnable:Ljava/lang/Runnable;

.field sec1:Landroid/widget/TextView;

.field sec2:Landroid/widget/TextView;

.field private thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hijacker/IsolatedFragment;->cont:Z

    new-instance v0, Lcom/hijacker/IsolatedFragment$3;

    invoke-direct {v0, p0}, Lcom/hijacker/IsolatedFragment$3;-><init>(Lcom/hijacker/IsolatedFragment;)V

    iput-object v0, p0, Lcom/hijacker/IsolatedFragment;->refreshRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/hijacker/IsolatedFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hijacker/IsolatedFragment;->cont:Z

    return p0
.end method

.method static synthetic access$002(Lcom/hijacker/IsolatedFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hijacker/IsolatedFragment;->cont:Z

    return p1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 p3, 0x0

    const v0, 0x7f0c003b

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hijacker/IsolatedFragment;->fragmentView:Landroid/view/View;

    new-instance p1, Lcom/hijacker/IsolatedFragment$1;

    invoke-direct {p1, p0}, Lcom/hijacker/IsolatedFragment$1;-><init>(Lcom/hijacker/IsolatedFragment;)V

    iput-object p1, p0, Lcom/hijacker/IsolatedFragment;->runnable:Ljava/lang/Runnable;

    new-instance p1, Ljava/lang/Thread;

    iget-object p2, p0, Lcom/hijacker/IsolatedFragment;->runnable:Ljava/lang/Runnable;

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/hijacker/IsolatedFragment;->thread:Ljava/lang/Thread;

    iget-object p1, p0, Lcom/hijacker/IsolatedFragment;->fragmentView:Landroid/view/View;

    const p2, 0x7f0900b4

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/hijacker/IsolatedFragment;->essid:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/hijacker/IsolatedFragment;->fragmentView:Landroid/view/View;

    const p2, 0x7f090103

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/hijacker/IsolatedFragment;->manuf:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/hijacker/IsolatedFragment;->fragmentView:Landroid/view/View;

    const p2, 0x7f0900fe

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/hijacker/IsolatedFragment;->mac:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/hijacker/IsolatedFragment;->fragmentView:Landroid/view/View;

    const p2, 0x7f090173

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/hijacker/IsolatedFragment;->sec1:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/hijacker/IsolatedFragment;->fragmentView:Landroid/view/View;

    const p2, 0x7f09013a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/hijacker/IsolatedFragment;->numbers:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/hijacker/IsolatedFragment;->fragmentView:Landroid/view/View;

    const p2, 0x7f090174

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/hijacker/IsolatedFragment;->sec2:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/hijacker/IsolatedFragment;->fragmentView:Landroid/view/View;

    const p2, 0x7f0900f5

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    sget-object p2, Lcom/hijacker/MainActivity;->adapter:Lcom/hijacker/MainActivity$MyListAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance p2, Lcom/hijacker/IsolatedFragment$2;

    invoke-direct {p2, p0}, Lcom/hijacker/IsolatedFragment$2;-><init>(Lcom/hijacker/IsolatedFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/hijacker/IsolatedFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    sput-object p1, Lcom/hijacker/IsolatedFragment;->pref:Landroid/content/SharedPreferences;

    const-string p2, "running_on_wearos"

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p2, p0, Lcom/hijacker/IsolatedFragment;->fragmentView:Landroid/view/View;

    const v0, 0x7f09004b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    sput-object p2, Lcom/hijacker/IsolatedFragment;->ap_details:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/hijacker/IsolatedFragment;->fragmentView:Landroid/view/View;

    const v0, 0x7f09004c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    sput-object p2, Lcom/hijacker/IsolatedFragment;->ap_details2:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/hijacker/IsolatedFragment;->fragmentView:Landroid/view/View;

    const v0, 0x7f090081

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    sput-object p2, Lcom/hijacker/IsolatedFragment;->clients:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/hijacker/IsolatedFragment;->fragmentView:Landroid/view/View;

    const v0, 0x7f09009d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/hijacker/IsolatedFragment;->deauth_all:Landroid/widget/Button;

    iget-object p2, p0, Lcom/hijacker/IsolatedFragment;->fragmentView:Landroid/view/View;

    const v0, 0x7f0900a8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/hijacker/IsolatedFragment;->dos:Landroid/widget/Button;

    iget-object p2, p0, Lcom/hijacker/IsolatedFragment;->fragmentView:Landroid/view/View;

    const v0, 0x7f090093

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/hijacker/IsolatedFragment;->capture:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/hijacker/IsolatedFragment;->clients:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/hijacker/IsolatedFragment;->deauth_all:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/hijacker/IsolatedFragment;->capture:Landroid/widget/Button;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setGravity(I)V

    iget-object p1, p0, Lcom/hijacker/IsolatedFragment;->dos:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/hijacker/IsolatedFragment;->essid:Landroid/widget/TextView;

    const/high16 p2, 0x41400000    # 12.0f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p1, p0, Lcom/hijacker/IsolatedFragment;->mac:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object p1, Lcom/hijacker/MainActivity;->menu:Landroid/view/Menu;

    invoke-interface {p1, p3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    iget-object p1, p0, Lcom/hijacker/IsolatedFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    sget-object v0, Lcom/hijacker/MainActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    sget v1, Lcom/hijacker/IsolatedFragment;->exit_on:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/hijacker/MainActivity;->isolate(Ljava/lang/String;)V

    invoke-static {}, Lcom/hijacker/Airodump;->startClean()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hijacker/IsolatedFragment;->cont:Z

    iget-object v0, p0, Lcom/hijacker/IsolatedFragment;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    sget-object v0, Lcom/hijacker/MainActivity;->menu:Landroid/view/Menu;

    const v1, 0x7f090159

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onResume()V
    .locals 6

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    const v0, 0x7f090129

    sput v0, Lcom/hijacker/MainActivity;->currentFragment:I

    invoke-virtual {p0}, Lcom/hijacker/IsolatedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/hijacker/MainActivity;

    invoke-virtual {v0}, Lcom/hijacker/MainActivity;->refreshDrawer()V

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/hijacker/IsolatedFragment;->runnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/hijacker/IsolatedFragment;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/hijacker/IsolatedFragment;->fragmentView:Landroid/view/View;

    const v1, 0x7f090093

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget-object v2, Lcom/hijacker/MainActivity;->wpa_thread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    const v3, 0x7f100174

    if-eqz v2, :cond_0

    const v2, 0x7f100174

    goto :goto_0

    :cond_0
    const v2, 0x7f100044

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/hijacker/IsolatedFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/hijacker/IsolatedFragment;->is_ap:Lcom/hijacker/AP;

    iget v1, v1, Lcom/hijacker/AP;->sec:I

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/hijacker/IsolatedFragment;->is_ap:Lcom/hijacker/AP;

    iget v1, v1, Lcom/hijacker/AP;->sec:I

    if-eq v1, v4, :cond_2

    sget-object v1, Lcom/hijacker/IsolatedFragment;->is_ap:Lcom/hijacker/AP;

    iget v1, v1, Lcom/hijacker/AP;->sec:I

    const/4 v5, 0x2

    if-ne v1, v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :cond_2
    :goto_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/hijacker/IsolatedFragment;->fragmentView:Landroid/view/View;

    const v1, 0x7f0900a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget-boolean v1, Lcom/hijacker/MDKFragment;->ados:Z

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const v3, 0x7f100085

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/hijacker/IsolatedFragment;->refreshRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/hijacker/MainActivity;->runInHandler(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/hijacker/MainActivity;->menu:Landroid/view/Menu;

    const v1, 0x7f090159

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method
