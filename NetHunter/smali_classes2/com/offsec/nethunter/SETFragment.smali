.class public Lcom/offsec/nethunter/SETFragment;
.super Landroidx/fragment/app/Fragment;
.source "SETFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/SETFragment$MainFragment;,
        Lcom/offsec/nethunter/SETFragment$TabsPagerAdapter;
    }
.end annotation


# static fields
.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"


# instance fields
.field private activity:Landroid/app/Activity;

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;

.field private nh:Lcom/offsec/nethunter/utils/NhPaths;

.field private sharedpreferences:Landroid/content/SharedPreferences;


# direct methods
.method static bridge synthetic -$$Nest$fgetactivity(Lcom/offsec/nethunter/SETFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/SETFragment;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsharedpreferences(Lcom/offsec/nethunter/SETFragment;)Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/SETFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(I)Lcom/offsec/nethunter/SETFragment;
    .locals 3

    new-instance v0, Lcom/offsec/nethunter/SETFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/SETFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "section_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/SETFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public RunSetup()V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/SETFragment;->activity:Landroid/app/Activity;

    const-string v1, "com.offsec.nethunter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/SETFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v0, "echo -ne \"\\033]0;SET Setup\\007\" && clear;if [[ -d /root/setoolkit ]]; then echo \'SET is already installed\';else git clone https://github.com/yesimxev/social-engineer-toolkit /root/setoolkit && echo \'Successfully installed SET!\';fi; echo \'Closing in 3secs..\'; sleep 3 && exit "

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/SETFragment;->run_cmd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/offsec/nethunter/SETFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "set_setup_done"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public RunUpdate()V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/SETFragment;->activity:Landroid/app/Activity;

    const-string v1, "com.offsec.nethunter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/SETFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v0, "echo -ne \"\\033]0;SET Update\\007\" && clear;if [[ -d /root/setoolkit ]]; then cd /root/setoolkit && git pull && echo \'Successfully updated SET! Closing in 3secs..\';else echo \'Please run SETUP first!\';fi; sleep 3 && exit "

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/SETFragment;->run_cmd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/offsec/nethunter/SETFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "set_setup_done"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public SetupDialog()V
    .locals 4

    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/SETFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f120117

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/offsec/nethunter/SETFragment;->activity:Landroid/app/Activity;

    const-string v2, "com.offsec.nethunter"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/SETFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v1, "Welcome to SET!"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const-string v1, "In order to make sure everything is working, an initial setup needs to be done."

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v1, Lcom/offsec/nethunter/SETFragment$2;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/SETFragment$2;-><init>(Lcom/offsec/nethunter/SETFragment;)V

    const-string v2, "Check & Install"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/SETFragment;->getContext()Landroid/content/Context;

    invoke-virtual {p0}, Lcom/offsec/nethunter/SETFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/SETFragment;->activity:Landroid/app/Activity;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0d0001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c00cc

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/offsec/nethunter/SETFragment$TabsPagerAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/SETFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/offsec/nethunter/SETFragment$TabsPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const p3, 0x7f090364

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/viewpager/widget/ViewPager;

    iput-object p3, p0, Lcom/offsec/nethunter/SETFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p3, p2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object p2, p0, Lcom/offsec/nethunter/SETFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 p3, 0x3

    invoke-virtual {p2, p3}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    iget-object p2, p0, Lcom/offsec/nethunter/SETFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance p3, Lcom/offsec/nethunter/SETFragment$1;

    invoke-direct {p3, p0}, Lcom/offsec/nethunter/SETFragment$1;-><init>(Lcom/offsec/nethunter/SETFragment;)V

    invoke-virtual {p2, p3}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    iget-object p2, p0, Lcom/offsec/nethunter/SETFragment;->activity:Landroid/app/Activity;

    const-string p3, "com.offsec.nethunter"

    invoke-virtual {p2, p3, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/offsec/nethunter/SETFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/offsec/nethunter/SETFragment;->setHasOptionsMenu(Z)V

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0903f7

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x7f0904b7

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/SETFragment;->RunUpdate()V

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/offsec/nethunter/SETFragment;->RunSetup()V

    return v2
.end method

.method public run_cmd(Ljava/lang/String;)V
    .locals 1

    const-string v0, "/data/data/com.offsec.nhterm/files/usr/bin/kali"

    invoke-static {v0, p1}, Lcom/offsec/nethunter/bridge/Bridge;->createExecuteIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/offsec/nethunter/SETFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
