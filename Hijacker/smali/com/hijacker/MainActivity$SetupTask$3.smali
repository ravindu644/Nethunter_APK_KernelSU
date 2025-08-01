.class Lcom/hijacker/MainActivity$SetupTask$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/MainActivity$SetupTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hijacker/MainActivity$SetupTask;


# direct methods
.method constructor <init>(Lcom/hijacker/MainActivity$SetupTask;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/MainActivity$SetupTask$3;->this$1:Lcom/hijacker/MainActivity$SetupTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/hijacker/MainActivity$SetupTask$3;->this$1:Lcom/hijacker/MainActivity$SetupTask;

    iget-object v1, v1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    iget-object v1, v1, Lcom/hijacker/MainActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    sget v1, Lcom/hijacker/MainActivity;->currentFragment:I

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/hijacker/MainActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v2, 0x7f0900cb

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    new-instance p1, Lcom/hijacker/SettingsFragment;

    invoke-direct {p1}, Lcom/hijacker/SettingsFragment;-><init>()V

    invoke-virtual {v1, v2, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_1

    :pswitch_1
    iget-object p1, p0, Lcom/hijacker/MainActivity$SetupTask$3;->this$1:Lcom/hijacker/MainActivity$SetupTask;

    iget-object p1, p1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    iget-object p1, p1, Lcom/hijacker/MainActivity;->reaverFragment:Lcom/hijacker/ReaverFragment;

    invoke-virtual {v1, v2, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_1

    :pswitch_2
    new-instance p1, Lcom/hijacker/MDKFragment;

    invoke-direct {p1}, Lcom/hijacker/MDKFragment;-><init>()V

    invoke-virtual {v1, v2, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_1

    :pswitch_3
    iget-object p1, p0, Lcom/hijacker/MainActivity$SetupTask$3;->this$1:Lcom/hijacker/MainActivity$SetupTask;

    iget-object p1, p1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    iget-object p1, p1, Lcom/hijacker/MainActivity;->customActionFragment:Lcom/hijacker/CustomActionFragment;

    invoke-virtual {v1, v2, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_1

    :pswitch_4
    iget-object p1, p0, Lcom/hijacker/MainActivity$SetupTask$3;->this$1:Lcom/hijacker/MainActivity$SetupTask;

    iget-object p1, p1, Lcom/hijacker/MainActivity$SetupTask;->this$0:Lcom/hijacker/MainActivity;

    iget-object p1, p1, Lcom/hijacker/MainActivity;->crackFragment:Lcom/hijacker/CrackFragment;

    invoke-virtual {v1, v2, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_1

    :pswitch_5
    sget-object p1, Lcom/hijacker/IsolatedFragment;->is_ap:Lcom/hijacker/AP;

    if-nez p1, :cond_0

    new-instance p1, Lcom/hijacker/MyListFragment;

    invoke-direct {p1}, Lcom/hijacker/MyListFragment;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/hijacker/IsolatedFragment;

    invoke-direct {p1}, Lcom/hijacker/IsolatedFragment;-><init>()V

    :goto_0
    invoke-virtual {v1, v2, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :goto_1
    const/16 p1, 0x1001

    invoke-virtual {v1, p1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    sget-object p1, Lcom/hijacker/MainActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_1
    sget-object p1, Lcom/hijacker/MainActivity;->actionBar:Landroidx/appcompat/app/ActionBar;

    sget-object v1, Lcom/hijacker/MainActivity;->navTitlesMap:Landroid/util/SparseArray;

    sget v2, Lcom/hijacker/MainActivity;->currentFragment:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x7f090129
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
