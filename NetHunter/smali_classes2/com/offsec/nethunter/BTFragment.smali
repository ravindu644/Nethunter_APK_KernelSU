.class public Lcom/offsec/nethunter/BTFragment;
.super Landroidx/fragment/app/Fragment;
.source "BTFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/BTFragment$PreferencesData;,
        Lcom/offsec/nethunter/BTFragment$BadBtFragment;,
        Lcom/offsec/nethunter/BTFragment$CWFragment;,
        Lcom/offsec/nethunter/BTFragment$SpoofFragment;,
        Lcom/offsec/nethunter/BTFragment$ToolsFragment;,
        Lcom/offsec/nethunter/BTFragment$MainFragment;,
        Lcom/offsec/nethunter/BTFragment$TabsPagerAdapter;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"


# instance fields
.field private activity:Landroid/app/Activity;

.field private context:Landroid/content/Context;

.field private final exe:Lcom/offsec/nethunter/utils/ShellExecuter;

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;

.field private sharedpreferences:Landroid/content/SharedPreferences;


# direct methods
.method static bridge synthetic -$$Nest$fgetactivity(Lcom/offsec/nethunter/BTFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/BTFragment;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/BTFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    return-void
.end method

.method public static newInstance(I)Lcom/offsec/nethunter/BTFragment;
    .locals 3

    new-instance v0, Lcom/offsec/nethunter/BTFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/BTFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "section_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/BTFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public RunSetup()V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const-string v1, "com.offsec.nethunter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/BTFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    :cond_0
    const-string v0, "echo -ne \"\\033]0;BT Arsenal Setup\\007\" && clear;apt update && apt install screen bluetooth bluez bluez-tools bluez-obexd libbluetooth3 sox spooftooph libglib2.0*-dev libsystemd-dev python3-dbus python3-bluez python3-pyudev python3-evdev libbluetooth-dev redfang bluelog blueranger -y;if [[ -f /usr/bin/carwhisperer && -f /usr/bin/rfcomm_scan ]];then echo \'All scripts are installed!\'; else git clone https://github.com/yesimxev/carwhisperer-0.2 /root/carwhisperer;cd /root/carwhisperer;make && make install;git clone https://github.com/yesimxev/bt_audit /root/bt_audit;cd /root/bt_audit/src;make;cp rfcomm_scan /usr/bin/;fi;if [[ -f /usr/lib/libglibutil.so ]]; then echo \'Libglibutil is installed!\'; else git clone https://github.com/yesimxev/libglibutil /root/libglibutil;cd /root/libglibutil;make && make install-dev;fi;if [[ -f /usr/lib/libgbinder.so ]]; then echo \'Libgbinder is installed!\'; else git clone https://github.com/yesimxev/libgbinder /root/libgbinder;cd /root/libgbinder;make && make install-dev;fi;if [[ -f /usr/sbin/bluebinder ]]; then echo \'Bluebinder is installed!\'; else git clone https://github.com/yesimxev/bluebinder /root/bluebinder;cd /root/bluebinder;make && make install;fi;if [[ -f /root/badbt/btk_server.py ]]; then echo \'BadBT is installed!\'; else git clone https://github.com/yesimxev/badbt /root/badbt && cp /root/badbt/org.thanhle.btkbservice.conf /etc/dbus-1/system.d/;fi;if [[ ! \"`grep \'noplugin=input\' /etc/init.d/bluetooth`\" == \"\" ]]; then echo \'Bluetooth service is patched!\'; else echo \'Patching Bluetooth service..\' && sed -i -e \'s/.*NOPLUGIN_OPTION=\"\"/NOPLUGIN_OPTION=\"--noplugin=input\"/g\' /etc/init.d/bluetooth;fi; echo \'Everything is installed!\' && echo \'\nPress any key to continue...\' && read -s -n 1 && exit "

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/BTFragment;->run_cmd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "setup_done"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public RunSetupWatch()V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const-string v1, "com.offsec.nethunter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/BTFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    :cond_0
    const-string v0, "echo -ne \"\\033]0;BT Arsenal Setup\\007\" && clear;apt update && apt install screen bluetooth bluez bluez-tools bluez-obexd libbluetooth3 sox spooftooph libglib2.0*-dev libsystemd-dev python3-dbus python3-bluez python3-pyudev python3-evdev libbluetooth-dev redfang bluelog blueranger -y;if [[ -f /usr/sbin/bluebinder ]]; then echo \'Bluebinder is installed!\'; else wget https://raw.githubusercontent.com/yesimxev/bluebinder/master/prebuilt/armhf/bluebinder -P /usr/sbin/ && chmod +x /usr/sbin/bluebinder;fi;if [[ -f /usr/lib/libgbinder.so.1.1.25 ]]; then echo \'libgbinder.so.1.1.25 is installed!\'; else wget https://raw.githubusercontent.com/yesimxev/libgbinder/master/prebuilt/armhf/libgbinder.so.1.1.25 -P /usr/lib/ && ln -s libgbinder.so.1.1.25 /usr/lib/libgbinder.so.1.1 && ln -s libgbinder.so.1.1 /usr/lib/libgbinder.so.1 && ln -s libgbinder.so.1 /usr/lib/libgbinder.so;fi;if [[ -f /usr/lib/libglibutil.so.1.0.67 ]]; then echo \'libglibutil.so.1.0.67 is installed!\'; else wget https://raw.githubusercontent.com/yesimxev/libglibutil/master/prebuilt/armhf/libglibutil.so.1.0.67 -P /usr/lib/ && ln -s libglibutil.so.1.0.67 /usr/lib/libglibutil.so.1.0 && ln -s libglibutil.so.1.0 /usr/lib/libglibutil.so.1 && ln -s libglibutil.so.1 /usr/lib/libglibutil.so;fi;if [[ -f /usr/bin/carwhisperer ]]; then echo \'carwhisperer is installed!\'; else wget https://raw.githubusercontent.com/yesimxev/carwhisperer-0.2/master/prebuilt/armhf/carwhisperer -P /usr/bin/ && chmod +x /usr/bin/carwhisperer;fi;if [[ -f /usr/bin/rfcomm_scan ]]; then echo \'rfcomm_scan is installed!\'; else wget https://raw.githubusercontent.com/yesimxev/bt_audit/master/prebuilt/armhf/rfcomm_scan -P /usr/bin/ && chmod +x /usr/bin/rfcomm_scan;fi;if [[ -d /root/carwhisperer ]]; then echo \'/root/carwhisperer is installed!\'; else git clone https://github.com/yesimxev/carwhisperer-0.2 /root/carwhisperer;fi;if [[ -f /root/badbt/btk_server.py ]]; then echo \'BadBT is installed!\'; else git clone https://github.com/yesimxev/badbt /root/badbt && cp /root/badbt/org.thanhle.btkbservice.conf /etc/dbus-1/system.d/;fi;if [[ ! \"`grep \'noplugin=input\' /etc/init.d/bluetooth`\" == \"\" ]]; then echo \'Bluetooth service is patched!\'; else echo \'Patching Bluetooth service..\' && sed -i -e \'s/# NOPLUGIN_OPTION=.*/NOPLUGIN_OPTION=\"--noplugin=input\"/g\' /etc/init.d/bluetooth;fi;echo \'Everything is installed! Closing in 3secs..\'; sleep 3 && exit "

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/BTFragment;->run_cmd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "setup_done"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public RunUpdate()V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const-string v1, "com.offsec.nethunter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/BTFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    :cond_0
    const-string v0, "echo -ne \"\\033]0;BT Arsenal Update\\007\" && clear;apt update && apt install screen bluetooth bluez bluez-tools bluez-obexd libbluetooth3 sox spooftooph libbluetooth-dev redfang bluelog blueranger libglib2.0*-dev libsystemd-dev python3-dbus python3-bluez python3-pyudev python3-evdev  -y;if [[ -f /usr/bin/carwhisperer && -f /usr/bin/rfcomm_scan && -f /root/bluebinder && -f /root/libgbinder && -f /root/libglibutil ]];then cd /root/carwhisperer/;git pull && make && make install;cd /root/bluebinder/;git pull && make && make install;cd /root/libgbinder/;git pull && make && make install-dev;cd /root/libglibutil/;git pull && make && make install-dev;cd /root/bt_audit; git pull; cd src && make;cp rfcomm_scan /usr/bin/;cd /root/badbt/;git pull;fi; echo \'Done! Closing in 3secs..\'; sleep 3 && exit "

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/BTFragment;->run_cmd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "setup_done"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public SetupDialog()V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const-string v1, "com.offsec.nethunter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/BTFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    :cond_0
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f120117

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string v1, "Welcome to Bluetooth Arsenal!"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const-string v1, "This seems to be the first run. Install the Bluetooth tools?"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v1, Lcom/offsec/nethunter/BTFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/BTFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/BTFragment;)V

    const-string v2, "Install"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v1, Lcom/offsec/nethunter/BTFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/BTFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/BTFragment;)V

    const-string v2, "Disable message"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public SetupDialogWatch()V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const-string v1, "com.offsec.nethunter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/BTFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    :cond_0
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f120117

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string v1, "This seems to be the first run. Install the Bluetooth tools?"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v1, Lcom/offsec/nethunter/BTFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/BTFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/BTFragment;)V

    const-string v2, "Yes"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v1, Lcom/offsec/nethunter/BTFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/BTFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/BTFragment;)V

    const-string v2, "No"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method synthetic lambda$SetupDialog$0$com-offsec-nethunter-BTFragment(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment;->RunSetup()V

    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "setup_done"

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method synthetic lambda$SetupDialog$1$com-offsec-nethunter-BTFragment(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "setup_done"

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method synthetic lambda$SetupDialogWatch$2$com-offsec-nethunter-BTFragment(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment;->RunSetupWatch()V

    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "setup_done"

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method synthetic lambda$SetupDialogWatch$3$com-offsec-nethunter-BTFragment(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "setup_done"

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3e9

    const-string v1, "/sdcard/"

    const-string v2, "/document/primary:"

    const/4 v3, -0x1

    if-ne p1, v0, :cond_0

    if-ne p2, v3, :cond_0

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v4, 0x7f0902ae

    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_1

    if-ne p2, v3, :cond_1

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f09017a

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {p3}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cat "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/BTFragment;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/BTFragment;->activity:Landroid/app/Activity;

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

    const p3, 0x7f0c001f

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/offsec/nethunter/BTFragment$TabsPagerAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/offsec/nethunter/BTFragment$TabsPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const p3, 0x7f090364

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/viewpager/widget/ViewPager;

    iput-object p3, p0, Lcom/offsec/nethunter/BTFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p3, p2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object p2, p0, Lcom/offsec/nethunter/BTFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    iget-object p2, p0, Lcom/offsec/nethunter/BTFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance p3, Lcom/offsec/nethunter/BTFragment$1;

    invoke-direct {p3, p0}, Lcom/offsec/nethunter/BTFragment$1;-><init>(Lcom/offsec/nethunter/BTFragment;)V

    invoke-virtual {p2, p3}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    iget-object p2, p0, Lcom/offsec/nethunter/BTFragment;->activity:Landroid/app/Activity;

    if-eqz p2, :cond_0

    const-string p3, "com.offsec.nethunter"

    invoke-virtual {p2, p3, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/offsec/nethunter/BTFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    :cond_0
    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/offsec/nethunter/BTFragment;->setHasOptionsMenu(Z)V

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment;->context:Landroid/content/Context;

    const-string v1, "com.offsec.nethunter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "running_on_wearos"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0903f7

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    const v2, 0x7f0904b7

    if-eq v1, v2, :cond_0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Updates have to be done manually through adb shell. If anything gone wrong at first run, please run Setup again."

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment;->RunUpdate()V

    :goto_0
    return v3

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment;->RunSetupWatch()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment;->RunSetup()V

    :goto_1
    return v3
.end method

.method public run_cmd(Ljava/lang/String;)V
    .locals 1

    const-string v0, "/data/data/com.offsec.nhterm/files/usr/bin/kali"

    invoke-static {v0, p1}, Lcom/offsec/nethunter/bridge/Bridge;->createExecuteIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
