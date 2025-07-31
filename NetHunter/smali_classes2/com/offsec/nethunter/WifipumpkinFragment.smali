.class public Lcom/offsec/nethunter/WifipumpkinFragment;
.super Landroidx/fragment/app/Fragment;
.source "WifipumpkinFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/WifipumpkinFragment$ManaStartNatSimpleBdfFragment;,
        Lcom/offsec/nethunter/WifipumpkinFragment$BdfProxyConfigFragment;,
        Lcom/offsec/nethunter/WifipumpkinFragment$ManaNatBettercapFragment;,
        Lcom/offsec/nethunter/WifipumpkinFragment$ManaNatSimpleFragment;,
        Lcom/offsec/nethunter/WifipumpkinFragment$ManaNatFullFragment;,
        Lcom/offsec/nethunter/WifipumpkinFragment$DnsspoofFragment;,
        Lcom/offsec/nethunter/WifipumpkinFragment$DhcpdFragment;,
        Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE;
    }
.end annotation


# static fields
.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"

.field private static final TAG:Ljava/lang/String; = "WifipumpkinFragment"


# instance fields
.field private activity:Landroid/app/Activity;

.field private context:Landroid/content/Context;

.field final exe:Lcom/offsec/nethunter/utils/ShellExecuter;

.field private mViewPager:Landroidx/viewpager2/widget/ViewPager2;

.field private final scripts:[Ljava/lang/CharSequence;

.field private selectedScriptIndex:Ljava/lang/Integer;

.field private selected_template:Ljava/lang/String;

.field private sharedpreferences:Landroid/content/SharedPreferences;

.field private template_src:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetselected_template(Lcom/offsec/nethunter/WifipumpkinFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->selected_template:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettemplate_src(Lcom/offsec/nethunter/WifipumpkinFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->template_src:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputselected_template(Lcom/offsec/nethunter/WifipumpkinFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->selected_template:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtemplate_src(Lcom/offsec/nethunter/WifipumpkinFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->template_src:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->selectedScriptIndex:Ljava/lang/Integer;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/CharSequence;

    const-string v2, "mana-nat-full"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string v2, "mana-nat-simple"

    aput-object v2, v1, v0

    const/4 v0, 0x2

    const-string v2, "mana-nat-bettercap"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string v2, "mana-nat-simple-bdf"

    aput-object v2, v1, v0

    const/4 v0, 0x4

    const-string v2, "hostapd-wpe"

    aput-object v2, v1, v0

    const/4 v0, 0x5

    const-string v2, "hostapd-wpe-karma"

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->scripts:[Ljava/lang/CharSequence;

    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    return-void
.end method

.method private checkiptables()V
    .locals 3

    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/bootkali custom_cmd iptables -V | grep iptables"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "iptables v1.6.2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->activity:Landroid/app/Activity;

    const v2, 0x7f120117

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string v1, "You need to upgrade iptables!"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const-string v1, "We appreciate your patience for using Mana with old iptables. It can be finally upgraded."

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v1, Lcom/offsec/nethunter/WifipumpkinFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/WifipumpkinFragment$$ExternalSyntheticLambda7;-><init>(Lcom/offsec/nethunter/WifipumpkinFragment;)V

    const-string v2, "Upgrade"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v1, Lcom/offsec/nethunter/WifipumpkinFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/offsec/nethunter/WifipumpkinFragment$$ExternalSyntheticLambda8;-><init>()V

    const-string v2, "Close"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method static synthetic lambda$checkiptables$6(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$onCreateView$1(Landroid/view/View;Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$startWP3$9(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method public static newInstance(I)Lcom/offsec/nethunter/WifipumpkinFragment;
    .locals 3

    new-instance v0, Lcom/offsec/nethunter/WifipumpkinFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/WifipumpkinFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "section_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/WifipumpkinFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private refresh_wp3_templates(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f09046f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "None\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/bootkali custom_cmd ls /root/.config/wifipumpkin3/config/templates | tail -n +10"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/WifipumpkinFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1090003

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method private startWP3()V
    .locals 4

    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->activity:Landroid/app/Activity;

    const v2, 0x7f120117

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string v1, "Script to execute:"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v1, Lcom/offsec/nethunter/WifipumpkinFragment$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/WifipumpkinFragment$$ExternalSyntheticLambda9;-><init>(Lcom/offsec/nethunter/WifipumpkinFragment;)V

    const-string v2, "Start"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v1, Lcom/offsec/nethunter/WifipumpkinFragment$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/offsec/nethunter/WifipumpkinFragment$$ExternalSyntheticLambda10;-><init>()V

    const-string v2, "Quit"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->scripts:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->selectedScriptIndex:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v3, Lcom/offsec/nethunter/WifipumpkinFragment$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/offsec/nethunter/WifipumpkinFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/WifipumpkinFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public Firstrun()V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->activity:Landroid/app/Activity;

    const-string v1, "com.offsec.nethunter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v0, "echo -ne \"\\033]0;Mana first setup\\007\"apt update && apt install mana-toolkit hostapd hostapd-wpe"

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/WifipumpkinFragment;->run_cmd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "setup_done"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public LinkTemplates()V
    .locals 3

    const-string v0, "echo -ne \"\\033]0;Wifipumpkin3 Templates\\007\" && clear;TEMPL_DIR=\'/root/.config/wifipumpkin3/config/templates\';TARGET=\'/sdcard/nh_files/templates\';if [ -L \"$TEMPL_DIR\" ]; then if [ \"$(readlink \"$TEMPL_DIR\")\" != \"$TARGET\" ]; then rm \"$TEMPL_DIR\"; ln -s \"$TARGET\" \"$TEMPL_DIR\"; fi; elif [ -d \"$TEMPL_DIR\" ]; then mv \"$TEMPL_DIR\" \"${TEMPL_DIR}_orig\"; ln -s \"$TARGET\" \"$TEMPL_DIR\"; elif [ ! -e \"$TEMPL_DIR\" ]; then ln -s \"$TARGET\" \"$TEMPL_DIR\"; fi; echo \'Done!\'; echo \'Closing in 3secs..\'; sleep 3 && exit"

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/WifipumpkinFragment;->run_cmd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "set_setup_done"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public RunSetup()V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->activity:Landroid/app/Activity;

    const-string v1, "com.offsec.nethunter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v0, "echo -ne \"\\033]0;Wifipumpkin3 Setup\\007\" && clear;apt update && apt install wifipumpkin3 dnschef -y;echo \'Done!\'; echo \'Closing in 3secs..\'; sleep 3 && exit "

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/WifipumpkinFragment;->run_cmd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->sharedpreferences:Landroid/content/SharedPreferences;

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

    invoke-virtual {p0}, Lcom/offsec/nethunter/WifipumpkinFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f120117

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->activity:Landroid/app/Activity;

    const-string v2, "com.offsec.nethunter"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v1, "Welcome to Wifipumpkin3!"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const-string v1, "You have missing packages. Install them now?"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v1, Lcom/offsec/nethunter/WifipumpkinFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/WifipumpkinFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/WifipumpkinFragment;)V

    const-string v2, "Install"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method synthetic lambda$SetupDialog$4$com-offsec-nethunter-WifipumpkinFragment(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/offsec/nethunter/WifipumpkinFragment;->RunSetup()V

    iget-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "wp3_setup_done"

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method synthetic lambda$checkiptables$5$com-offsec-nethunter-WifipumpkinFragment(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "echo -ne \"\\033]0;Upgrading iptables\\007\" && clear;apt-mark unhold libip* > /dev/null 2>&1 ; apt-mark unhold libxtables* > /dev/null 2>&1 ; apt-mark unhold iptables* > /dev/null 2>&1 ; apt install iptables -y && sleep 2 && echo \'Done! Closing window..\' && exit"

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/WifipumpkinFragment;->run_cmd(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onCreateView$0$com-offsec-nethunter-WifipumpkinFragment(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/WifipumpkinFragment;->refresh_wp3_templates(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$onCreateView$2$com-offsec-nethunter-WifipumpkinFragment(Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;[Ljava/lang/String;[Ljava/lang/String;Landroid/view/View;Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p11

    const-string v0, "Start"

    invoke-virtual {p11, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p11

    if-eqz p11, :cond_1

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p6

    const/4 p7, 0x0

    if-eqz p6, :cond_0

    const-string p6, "1"

    aput-object p6, p8, p7

    goto :goto_0

    :cond_0
    const-string p6, "0"

    aput-object p6, p8, p7

    :goto_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/WifipumpkinFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p6

    invoke-virtual {p6}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p6

    const-string p10, "Starting.. type \'exit\' into the terminal to stop Wifipumpkin3"

    const/4 p11, 0x1

    invoke-static {p6, p10, p11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p6

    invoke-virtual {p6}, Landroid/widget/Toast;->show()V

    iget-object p6, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-array p10, p11, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sed -i \'/^APIFACE=/c\\APIFACE="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/modules/start-wp3.sh"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p10, p7

    invoke-virtual {p6, p10}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    iget-object p6, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-array p10, p11, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "sed -i \'/^NETIFACE=/c\\NETIFACE="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p10, p7

    invoke-virtual {p6, p10}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    iget-object p2, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-array p6, p11, [Ljava/lang/String;

    new-instance p10, Ljava/lang/StringBuilder;

    const-string v0, "sed -i \'/^SSID=/c\\SSID=\""

    invoke-direct {p10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\"\' "

    invoke-virtual {p10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {p10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p6, p7

    invoke-virtual {p2, p6}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    iget-object p2, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-array p3, p11, [Ljava/lang/String;

    new-instance p6, Ljava/lang/StringBuilder;

    const-string p10, "sed -i \'/^BSSID=/c\\BSSID="

    invoke-direct {p6, p10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p4, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, p7

    invoke-virtual {p2, p3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    iget-object p2, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-array p3, p11, [Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p6, "sed -i \'/^CHANNEL=/c\\CHANNEL="

    invoke-direct {p4, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p5, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, p7

    invoke-virtual {p2, p3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    iget-object p2, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-array p3, p11, [Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "sed -i \'/^WLAN0TO1=/c\\WLAN0TO1="

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p5, p8, p7

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p5, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, p7

    invoke-virtual {p2, p3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    iget-object p2, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-array p3, p11, [Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "sed -i \'/^TEMPLATE=/c\\TEMPLATE="

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p5, p9, p7

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, p7

    invoke-virtual {p2, p3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    const-string p1, "echo -ne \"\\033]0;Wifipumpkin3\\007\" && clear;bash /sdcard/nh_files/modules/start-wp3.sh"

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/WifipumpkinFragment;->run_cmd(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const-string p2, "Stop"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string p2, "kill `ps -ef | grep \'[btk]_server\' | awk {\'print $2\'}`"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string p2, "pkill python3"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    invoke-direct {p0, p10}, Lcom/offsec/nethunter/WifipumpkinFragment;->refresh_wp3_templates(Landroid/view/View;)V

    :cond_2
    :goto_1
    return-void
.end method

.method synthetic lambda$onCreateView$3$com-offsec-nethunter-WifipumpkinFragment(Landroid/view/View;)V
    .locals 1

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.category.OPENABLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "application/zip"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Select zip file"

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x3e9

    invoke-virtual {p0, p1, v0}, Lcom/offsec/nethunter/WifipumpkinFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method synthetic lambda$startWP3$10$com-offsec-nethunter-WifipumpkinFragment(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->selectedScriptIndex:Ljava/lang/Integer;

    return-void
.end method

.method synthetic lambda$startWP3$7$com-offsec-nethunter-WifipumpkinFragment()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->context:Landroid/content/Context;

    const-string v1, "Starting MSF with BDF resource.rc"

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSF"

    invoke-static {v1}, Lcom/offsec/nethunter/utils/NhPaths;->makeTermTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "msfconsole -q -r /usr/share/bdfproxy/bdfproxy_msf_resource.rc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/WifipumpkinFragment;->run_cmd(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$startWP3$8$com-offsec-nethunter-WifipumpkinFragment(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->selectedScriptIndex:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x15

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->context:Landroid/content/Context;

    const-string p2, "Invalid script!"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->context:Landroid/content/Context;

    const-string p2, "Starting HOSTAPD-WPE with Karma"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "HOSTAPD-WPE-KARMA"

    invoke-static {p2}, Lcom/offsec/nethunter/utils/NhPaths;->makeTermTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "ip link set wlan1 up && /usr/sbin/hostapd-wpe -k /sdcard/nh_files/configs/hostapd-wpe.conf"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/WifipumpkinFragment;->run_cmd(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    iget-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->context:Landroid/content/Context;

    const-string p2, "Starting HOSTAPD-WPE"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "HOSTAPD-WPE"

    invoke-static {p2}, Lcom/offsec/nethunter/utils/NhPaths;->makeTermTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "ip link set wlan1 up && /usr/sbin/hostapd-wpe /sdcard/nh_files/configs/hostapd-wpe.conf"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/WifipumpkinFragment;->run_cmd(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    iget-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->context:Landroid/content/Context;

    const-string v0, "Starting MANA NAT SIMPLE && BDF"

    invoke-static {p1, v0}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v0, "MANA-BDF"

    if-ne p1, p2, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/offsec/nethunter/utils/NhPaths;->makeTermTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/usr/share/mana-toolkit/run-mana/start-nat-simple-bdf-lollipop.sh"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/WifipumpkinFragment;->run_cmd(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/offsec/nethunter/utils/NhPaths;->makeTermTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/usr/share/mana-toolkit/run-mana/start-nat-simple-bdf-kitkat.sh"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/WifipumpkinFragment;->run_cmd(Ljava/lang/String;)V

    :goto_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/offsec/nethunter/WifipumpkinFragment$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/offsec/nethunter/WifipumpkinFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/WifipumpkinFragment;)V

    const-wide/16 v0, 0x2710

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_4
    iget-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->context:Landroid/content/Context;

    const-string p2, "Starting MANA Bettercap"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "MANA-BETTERCAP"

    invoke-static {p2}, Lcom/offsec/nethunter/utils/NhPaths;->makeTermTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/usr/bin/start-nat-transproxy-lollipop.sh"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/WifipumpkinFragment;->run_cmd(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    iget-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->context:Landroid/content/Context;

    const-string v0, "Starting MANA NAT SIMPLE"

    invoke-static {p1, v0}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v0, "MANA-SIMPLE"

    if-ne p1, p2, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/offsec/nethunter/utils/NhPaths;->makeTermTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/usr/share/mana-toolkit/run-mana/start-nat-simple-lollipop.sh"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/WifipumpkinFragment;->run_cmd(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/offsec/nethunter/utils/NhPaths;->makeTermTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/usr/share/mana-toolkit/run-mana/start-nat-simple-kitkat.sh"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/WifipumpkinFragment;->run_cmd(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->context:Landroid/content/Context;

    const-string v0, "Starting MANA NAT FULL"

    invoke-static {p1, v0}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v0, "MANA-FULL"

    if-ne p1, p2, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/offsec/nethunter/utils/NhPaths;->makeTermTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/usr/share/mana-toolkit/run-mana/start-nat-full-lollipop.sh"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/WifipumpkinFragment;->run_cmd(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/offsec/nethunter/utils/NhPaths;->makeTermTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/usr/share/mana-toolkit/run-mana/start-nat-full-kitkat.sh"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/WifipumpkinFragment;->run_cmd(Ljava/lang/String;)V

    :goto_1
    iget-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->context:Landroid/content/Context;

    const p2, 0x7f11002a

    invoke-virtual {p0, p2}, Lcom/offsec/nethunter/WifipumpkinFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    new-instance p1, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {p1}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "echo "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " | sed -e \'s/\\/document\\/primary:/\\/sdcard\\//g\'"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/bootkali custom_cmd unzip -Z1 \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' | grep .py | awk -F\'.\' \'{print $1}\'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "wifipumpkin3 -x \"use misc.custom_captiveflask; install "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \""

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"; back; exit\";exit"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/WifipumpkinFragment;->run_cmd(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/WifipumpkinFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/offsec/nethunter/WifipumpkinFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->activity:Landroid/app/Activity;

    sget-object p1, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0d0001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 16

    move-object/from16 v12, p0

    const v0, 0x7f0c00e8

    const/4 v1, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v2, v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    const v0, 0x7f0904e7

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/Button;

    iget-object v0, v12, Lcom/offsec/nethunter/WifipumpkinFragment;->context:Landroid/content/Context;

    const-string v2, "com.offsec.nethunter"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/WifipumpkinFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.type.watch"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    const v3, 0x7f09038e

    invoke-virtual {v13, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const-string v4, "set_setup_done"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    iget-object v0, v12, Lcom/offsec/nethunter/WifipumpkinFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v1, "if [[ -f /usr/bin/wifipumpkin3 || -f /usr/bin/dnschef ]];then echo Good;else echo Nope;fi"

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Nope"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/WifipumpkinFragment;->SetupDialog()V

    :cond_0
    const v0, 0x7f0904e6

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    const v0, 0x7f09007d

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/EditText;

    const v0, 0x7f090339

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/EditText;

    const v0, 0x7f09041a

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/EditText;

    const v0, 0x7f0900ae

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/EditText;

    const v0, 0x7f0900fc

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/EditText;

    const v0, 0x7f0904e4

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/CheckBox;

    invoke-direct {v12, v13}, Lcom/offsec/nethunter/WifipumpkinFragment;->refresh_wp3_templates(Landroid/view/View;)V

    const v0, 0x7f09046f

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    const v1, 0x7f090330

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    const-string v2, ""

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/offsec/nethunter/WifipumpkinFragment$1;

    invoke-direct {v11, v12, v3, v10, v1}, Lcom/offsec/nethunter/WifipumpkinFragment$1;-><init>(Lcom/offsec/nethunter/WifipumpkinFragment;Landroid/widget/CheckBox;[Ljava/lang/String;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v11}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-direct/range {p0 .. p0}, Lcom/offsec/nethunter/WifipumpkinFragment;->checkiptables()V

    const v0, 0x7f0904e3

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, v12, Lcom/offsec/nethunter/WifipumpkinFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v11, "iw list | grep \'* AP\'"

    invoke-virtual {v1, v11}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v11, "* AP"

    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Supported"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const-string v1, "Not supported"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-direct {v12, v13}, Lcom/offsec/nethunter/WifipumpkinFragment;->refresh_wp3_templates(Landroid/view/View;)V

    const v0, 0x7f0903a4

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lcom/offsec/nethunter/WifipumpkinFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, v12, v13}, Lcom/offsec/nethunter/WifipumpkinFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/WifipumpkinFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v12, Lcom/offsec/nethunter/WifipumpkinFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v11, "grep ^APIFACE= "

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/modules/start-wp3.sh | awk -F\'=\' \'{print $2}\'"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v12, Lcom/offsec/nethunter/WifipumpkinFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v15, "grep ^NETIFACE= "

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v15, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v12, Lcom/offsec/nethunter/WifipumpkinFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v15, "grep ^SSID= "

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v15, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "/modules/start-wp3.sh | awk -F\'=\' \'{print $2}\' | tr -d \'\"\'"

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v12, Lcom/offsec/nethunter/WifipumpkinFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v15, "grep ^BSSID= "

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v15, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v12, Lcom/offsec/nethunter/WifipumpkinFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v15, "grep ^CHANNEL= "

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v15, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v12, Lcom/offsec/nethunter/WifipumpkinFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v15, "grep ^WLAN0TO1= "

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v15, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v9, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v11

    const v0, 0x7f09038a

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/WifipumpkinFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/offsec/nethunter/WifipumpkinFragment$$ExternalSyntheticLambda4;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v15, Lcom/offsec/nethunter/WifipumpkinFragment$$ExternalSyntheticLambda5;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v11

    move-object v11, v13

    invoke-direct/range {v0 .. v11}, Lcom/offsec/nethunter/WifipumpkinFragment$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/WifipumpkinFragment;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;[Ljava/lang/String;[Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09046e

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/WifipumpkinFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, v12}, Lcom/offsec/nethunter/WifipumpkinFragment$$ExternalSyntheticLambda6;-><init>(Lcom/offsec/nethunter/WifipumpkinFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v13
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0903f7

    if-eq v0, v1, :cond_0

    const v1, 0x7f0904b7

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/WifipumpkinFragment;->RunSetup()V

    const/4 p1, 0x1

    return p1
.end method

.method public run_cmd(Ljava/lang/String;)V
    .locals 1

    const-string v0, "/data/data/com.offsec.nhterm/files/usr/bin/kali"

    invoke-static {v0, p1}, Lcom/offsec/nethunter/bridge/Bridge;->createExecuteIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
