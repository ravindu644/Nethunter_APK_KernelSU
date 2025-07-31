.class public Lcom/offsec/nethunter/CANFragment;
.super Landroidx/fragment/app/Fragment;
.source "CANFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/CANFragment$CANICSIMFragment;,
        Lcom/offsec/nethunter/CANFragment$CANCARIBOUFragment;,
        Lcom/offsec/nethunter/CANFragment$CANUSBFragment;,
        Lcom/offsec/nethunter/CANFragment$ToolsFragment;,
        Lcom/offsec/nethunter/CANFragment$MainFragment;,
        Lcom/offsec/nethunter/CANFragment$TabsPagerAdapter;
    }
.end annotation


# static fields
.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"

.field private static final TAG:Ljava/lang/String; = "CANFragment"

.field private static sharedpreferences:Landroid/content/SharedPreferences;


# instance fields
.field private activity:Landroid/app/Activity;

.field private context:Landroid/content/Context;


# direct methods
.method static bridge synthetic -$$Nest$fgetactivity(Lcom/offsec/nethunter/CANFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/CANFragment;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcontext(Lcom/offsec/nethunter/CANFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/CANFragment;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetsharedpreferences()Landroid/content/SharedPreferences;
    .locals 1

    sget-object v0, Lcom/offsec/nethunter/CANFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputsharedpreferences(Landroid/content/SharedPreferences;)V
    .locals 0

    sput-object p0, Lcom/offsec/nethunter/CANFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private checkAndInstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "if [[ -f "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " && -d "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ]]; then echo \'\\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " already installed!\'; else echo \'\\nInstalling "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "...\\n\'; "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " fi; "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private checkAndUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "if [[ -f "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " && -d "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ]]; then echo \'\\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " detected! Updating...\\n\'; "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " else echo \'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not detected! Please run Setup first.\'; fi; "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$RunAbout$3(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$SetupDialog$2(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    sget-object p0, Lcom/offsec/nethunter/CANFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "setup_done"

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static synthetic lambda$onCreateView$0(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 3

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tab "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/2addr p1, v0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    goto :goto_0

    :cond_0
    const-string p1, "ICSim"

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    goto :goto_0

    :cond_1
    const-string p1, "Caribou"

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    goto :goto_0

    :cond_2
    const-string p1, "CAN-USB"

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    goto :goto_0

    :cond_3
    const-string p1, "Tools"

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    goto :goto_0

    :cond_4
    const-string p1, "Main"

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    :goto_0
    return-void
.end method

.method public static newInstance(I)Lcom/offsec/nethunter/CANFragment;
    .locals 3

    new-instance v0, Lcom/offsec/nethunter/CANFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/CANFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "section_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/CANFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public RunAbout()V
    .locals 5

    iget-object v0, p0, Lcom/offsec/nethunter/CANFragment;->activity:Landroid/app/Activity;

    const-string v1, "com.offsec.nethunter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/offsec/nethunter/CANFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/CANFragment;->activity:Landroid/app/Activity;

    const v3, 0x7f120117

    invoke-direct {v0, v1, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string v1, "About CAN Arsenal"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/offsec/nethunter/CANFragment;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f11001e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/16 v3, 0x32

    const/16 v4, 0x28

    invoke-virtual {v1, v3, v4, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v1, Lcom/offsec/nethunter/CANFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/offsec/nethunter/CANFragment$$ExternalSyntheticLambda3;-><init>()V

    const-string v2, "Close"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public RunDocumentation()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://www.kali.org/docs/nethunter/nethunter-canarsenal/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/offsec/nethunter/CANFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public RunSetup()V
    .locals 6

    const-string v0, "RunSetup called"

    const-string v1, "CANFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/offsec/nethunter/CANFragment;->activity:Landroid/app/Activity;

    const-string v2, "com.offsec.nethunter"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/offsec/nethunter/CANFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v0, "Running setup commands"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "echo -ne \"\\033]0;CAN Arsenal Setup\\007\" && clear; echo \'\\nUpdating and Installing Packages...\\n\' && apt update && apt install -y can-utils libsdl2-dev libsdl2-image-dev libconfig-dev libsocketcan-dev can-utils maven autoconf make cmake meson xserver-xephyr x11vnc novnc git python3-pip websockify fluxbox expect && "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/opt/car_hacking/can-utils"

    const-string v3, "cd /opt/car_hacking; sudo git clone https://github.com/v0lk3n/can-utils.git; cd /opt/car_hacking/can-utils; sudo make; sudo make install;"

    const-string v4, "Can-Utils"

    const-string v5, "/usr/bin/cangen"

    invoke-direct {p0, v4, v5, v2, v3}, Lcom/offsec/nethunter/CANFragment;->checkAndInstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/opt/car_hacking/cannelloni"

    const-string v3, "cd /opt/car_hacking; sudo git clone https://github.com/v0lk3n/cannelloni.git; cd /opt/car_hacking/cannelloni; sudo cmake -DCMAKE_BUILD_TYPE=Release; sudo make; sudo make install;"

    const-string v4, "Cannelloni"

    const-string v5, "/usr/local/bin/cannelloni"

    invoke-direct {p0, v4, v5, v0, v3}, Lcom/offsec/nethunter/CANFragment;->checkAndInstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/opt/car_hacking/usb-can"

    const-string v3, "cd /opt/car_hacking; sudo git clone https://github.com/v0lk3n/usb-can.git; cd /opt/car_hacking/usb-can; sudo gcc -o canusb canusb.c; sudo cp canusb /usr/local/bin/canusb;"

    const-string v4, "USB-CAN"

    const-string v5, "/usr/local/bin/canusb"

    invoke-direct {p0, v4, v5, v0, v3}, Lcom/offsec/nethunter/CANFragment;->checkAndInstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/opt/car_hacking/freediag"

    const-string v3, "cd /opt/car_hacking; sudo git clone https://github.com/v0lk3n/freediag.git; cd /opt/car_hacking/freediag; ./build_simple.sh; sudo cp build/scantool/freediag /usr/local/bin/freediag && sudo cp build/scantool/diag_test /usr/local/bin/diag_test;"

    const-string v4, "Freediag"

    const-string v5, "/usr/local/bin/freediag"

    invoke-direct {p0, v4, v5, v0, v3}, Lcom/offsec/nethunter/CANFragment;->checkAndInstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/opt/car_hacking/socketcand"

    const-string v3, "cd /opt/car_hacking; sudo git clone https://github.com/V0lk3n/socketcand.git; cd /opt/car_hacking/socketcand; sudo meson setup -Dlibconfig=true --buildtype=release build; sudo meson compile -C build; sudo meson install -C build;"

    const-string v4, "Socketcand"

    const-string v5, "/usr/local/sbin/socketcand"

    invoke-direct {p0, v4, v5, v0, v3}, Lcom/offsec/nethunter/CANFragment;->checkAndInstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/opt/car_hacking/usb-can-2"

    const-string v3, "cd /opt/car_hacking; sudo git clone https://github.com/V0lk3n/usb-can-2.git; cd /opt/car_hacking/usb-can-2; sudo ./build.sh; cp -f src/hlcand /usr/local/bin/hlcand;"

    const-string v4, "hlcand"

    const-string v5, "/usr/local/bin/hlcand"

    invoke-direct {p0, v4, v5, v0, v3}, Lcom/offsec/nethunter/CANFragment;->checkAndInstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/opt/car_hacking/caringcaribou"

    const-string v3, "cd /opt/car_hacking; sudo git clone https://github.com/V0lk3n/caringcaribou.git; cd /opt/car_hacking/caringcaribou; sudo python setup.py install;"

    const-string v4, "CaringCaribou"

    const-string v5, "/usr/local/bin/caringcaribou"

    invoke-direct {p0, v4, v5, v0, v3}, Lcom/offsec/nethunter/CANFragment;->checkAndInstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/opt/noVNC"

    const-string v3, "cd /opt; sudo git clone https://github.com/novnc/noVNC.git;"

    const-string v4, "noVNC"

    const-string v5, "/opt/noVNC/utils/novnc_proxy"

    invoke-direct {p0, v4, v5, v0, v3}, Lcom/offsec/nethunter/CANFragment;->checkAndInstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/opt/car_hacking/ICSim"

    const-string v3, "cd /opt/car_hacking; sudo git clone https://github.com/V0lk3n/ICSim.git; cd /opt/car_hacking/ICSim; sudo cp /opt/car_hacking/can-utils/lib.o .; sudo meson setup builddir && cd builddir && sudo meson compile; cd /opt/car_hacking; wget https://raw.githubusercontent.com/V0lk3n/NetHunter-CarArsenal/refs/heads/main/icsim_start.sh; wget https://raw.githubusercontent.com/V0lk3n/NetHunter-CarArsenal/refs/heads/main/icsim_stop.sh; sudo chmod +x /opt/car_hacking/icsim_start.sh; sudo chmod +x /opt/car_hacking/icsim_stop.sh;"

    const-string v4, "ICSIM"

    const-string v5, "/opt/car_hacking/ICSim/builddir/icsim"

    invoke-direct {p0, v4, v5, v0, v3}, Lcom/offsec/nethunter/CANFragment;->checkAndInstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "cd /opt/car_hacking && sudo wget https://raw.githubusercontent.com/V0lk3n/NetHunter-CarArsenal/refs/heads/main/sequence_finder.sh; sudo chmod +x /opt/car_hacking/sequence_finder.sh;"

    const-string v3, "sequence_finder.sh"

    const-string v4, "/opt/car_hacking/sequence_finder.sh"

    const-string v5, "/opt/car_hacking"

    invoke-direct {p0, v3, v4, v5, v0}, Lcom/offsec/nethunter/CANFragment;->checkAndInstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/opt/car_hacking/can_reset.sh"

    const-string v3, "cd /opt/car_hacking && wget https://raw.githubusercontent.com/V0lk3n/NetHunter-CarArsenal/refs/heads/main/can_reset.sh; sudo chmod +x /opt/car_hacking/can_reset.sh;"

    const-string v4, "can_reset.sh"

    invoke-direct {p0, v4, v0, v5, v3}, Lcom/offsec/nethunter/CANFragment;->checkAndInstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/opt/car_hacking/car_venv"

    const-string v3, "sudo python3 -m venv /opt/car_hacking/car_venv; /opt/car_hacking/car_venv/bin/pip install vininfo[cli];"

    const-string v4, "VinInfo"

    const-string v5, "/opt/car_hacking/car_venv/bin/vininfo"

    invoke-direct {p0, v4, v5, v0, v3}, Lcom/offsec/nethunter/CANFragment;->checkAndInstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "echo \'\\nSetup done!\' && echo \'\\nPress any key to continue...\' && read -s -n 1 && exit"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CANFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SetupResult"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/offsec/nethunter/CANFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "setup_done"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "Setup completed"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public RunUpdate()V
    .locals 5

    iget-object v0, p0, Lcom/offsec/nethunter/CANFragment;->activity:Landroid/app/Activity;

    const-string v1, "com.offsec.nethunter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/offsec/nethunter/CANFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "echo -ne \"\\033]0;CAN Arsenal Update\\007\" && clear; echo \'\\nUpdating Packages...\\n\' && apt update && apt install -y can-utils libsdl2-dev libsdl2-image-dev libconfig-dev libsocketcan-dev can-utils maven autoconf make cmake meson xserver-xephyr x11vnc novnc git python3-pip websockify fluxbox expect && "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/opt/car_hacking/can-utils"

    const-string v2, "cd /opt/car_hacking/can-utils && old=$(git rev-parse HEAD) && sudo git pull && new=$(git rev-parse HEAD) && [ \"$old\" != \"$new\" ] && { echo \"Update detected! Updating...\" && sudo make; sudo make install };"

    const-string v3, "Can-Utils"

    const-string v4, "/usr/bin/cangen"

    invoke-direct {p0, v3, v4, v1, v2}, Lcom/offsec/nethunter/CANFragment;->checkAndUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/opt/car_hacking/cannelloni"

    const-string v2, "cd /opt/car_hacking/cannelloni && old=$(git rev-parse HEAD) && sudo git pull && new=$(git rev-parse HEAD) && [ \"$old\" != \"$new\" ] && { echo \"Update detected! Updating...\" && sudo cmake -DCMAKE_BUILD_TYPE=Release; sudo make; sudo make install };"

    const-string v3, "Cannelloni"

    const-string v4, "/usr/local/bin/cannelloni"

    invoke-direct {p0, v3, v4, v0, v2}, Lcom/offsec/nethunter/CANFragment;->checkAndUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/opt/car_hacking/usb-can"

    const-string v2, "cd /opt/car_hacking/usb-can && old=$(git rev-parse HEAD) && sudo git pull && new=$(git rev-parse HEAD) && [ \"$old\" != \"$new\" ] && { echo \"Update detected! Updating...\" && sudo gcc -o canusb canusb.c; sudo cp canusb /usr/local/bin/canusb };"

    const-string v3, "USB-CAN"

    const-string v4, "/usr/local/bin/canusb"

    invoke-direct {p0, v3, v4, v0, v2}, Lcom/offsec/nethunter/CANFragment;->checkAndUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/opt/car_hacking/freediag"

    const-string v2, "cd /opt/car_hacking/freediag && old=$(git rev-parse HEAD) && sudo git pull && new=$(git rev-parse HEAD) && [ \"$old\" != \"$new\" ] && { echo \"Update detected! Updating...\" && ./build_simple.sh; sudo cp build/scantool/freediag /usr/local/bin/freediag && sudo cp build/scantool/diag_test /usr/local/bin/diag_test };"

    const-string v3, "Freediag"

    const-string v4, "/usr/local/bin/freediag"

    invoke-direct {p0, v3, v4, v0, v2}, Lcom/offsec/nethunter/CANFragment;->checkAndUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/opt/car_hacking/socketcand"

    const-string v2, "cd /opt/car_hacking/socketcand && old=$(git rev-parse HEAD) && sudo git pull && new=$(git rev-parse HEAD) && [ \"$old\" != \"$new\" ] && { echo \"Update detected! Updating...\" && sudo meson setup -Dlibconfig=true --buildtype=release build; sudo meson compile -C build; sudo meson install -C build };"

    const-string v3, "Socketcand"

    const-string v4, "/usr/local/sbin/socketcand"

    invoke-direct {p0, v3, v4, v0, v2}, Lcom/offsec/nethunter/CANFragment;->checkAndUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/opt/car_hacking/usb-can-2"

    const-string v2, "cd /opt/car_hacking/usb-can-2 && old=$(git rev-parse HEAD) && sudo git pull && new=$(git rev-parse HEAD) && [ \"$old\" != \"$new\" ] && { echo \"Update detected! Updating...\" && sudo ./build.sh; sudo cp -f src/hlcand /usr/local/bin/hlcand };"

    const-string v3, "hlcand"

    const-string v4, "/usr/local/bin/hlcand"

    invoke-direct {p0, v3, v4, v0, v2}, Lcom/offsec/nethunter/CANFragment;->checkAndUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/opt/car_hacking/caringcaribou"

    const-string v2, "cd /opt/car_hacking/caringcaribou && old=$(git rev-parse HEAD) && sudo git pull && new=$(git rev-parse HEAD) && [ \"$old\" != \"$new\" ] && { echo \"Update detected! Updating...\" && sudo python setup.py install };"

    const-string v3, "CaringCaribou"

    const-string v4, "/usr/local/bin/caringcaribou"

    invoke-direct {p0, v3, v4, v0, v2}, Lcom/offsec/nethunter/CANFragment;->checkAndUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/opt/noVNC"

    const-string v2, "cd /opt/noVNC && sudo git pull;"

    const-string v3, "noVNC"

    const-string v4, "/opt/noVNC/utils/novnc_proxy"

    invoke-direct {p0, v3, v4, v0, v2}, Lcom/offsec/nethunter/CANFragment;->checkAndUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/opt/car_hacking/ICSim"

    const-string v2, "cd /opt/car_hacking/ICSim && old=$(git rev-parse HEAD) && sudo git pull && new=$(git rev-parse HEAD) && [ \"$old\" != \"$new\" ] && { echo \"Update detected! Updating...\" && sudo meson setup builddir && sudo cp /opt/car_hacking/can-utils/lib.o . && cd builddir && sudo meson compile }; cd /opt/car_hacking; sudo rm icsim_start.sh; rm icsim_stop.sh; sudo wget https://raw.githubusercontent.com/V0lk3n/NetHunter-CarArsenal/refs/heads/main/icsim_start.sh; sudo wget https://raw.githubusercontent.com/V0lk3n/NetHunter-CarArsenal/refs/heads/main/icsim_stop.sh; sudo chmod +x /opt/car_hacking/icsim_start.sh; sudo chmod +x /opt/car_hacking/icsim_stop.sh;"

    const-string v3, "ICSIM"

    const-string v4, "/opt/car_hacking/ICSim/builddir/icsim"

    invoke-direct {p0, v3, v4, v0, v2}, Lcom/offsec/nethunter/CANFragment;->checkAndUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "cd /opt/car_hacking && sudo rm can_reset.sh && wget https://raw.githubusercontent.com/V0lk3n/NetHunter-CarArsenal/refs/heads/main/can_reset.sh; sudo chmod +x /opt/car_hacking/can_reset.sh;"

    const-string v2, "can_reset.sh"

    const-string v3, "/opt/car_hacking/can_reset.sh"

    const-string v4, "/opt/car_hacking"

    invoke-direct {p0, v2, v3, v4, v0}, Lcom/offsec/nethunter/CANFragment;->checkAndUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/opt/car_hacking/sequence_finder.sh"

    const-string v2, "cd /opt/car_hacking && sudo rm sequence_finder.sh && wget https://raw.githubusercontent.com/V0lk3n/NetHunter-CarArsenal/refs/heads/main/sequence_finder.sh; sudo chmod +x /opt/car_hacking/sequence_finder.sh;"

    const-string v3, "sequence_finder.sh"

    invoke-direct {p0, v3, v0, v4, v2}, Lcom/offsec/nethunter/CANFragment;->checkAndUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/opt/car_hacking/car_venv"

    const-string v2, "sudo python3 -m venv /opt/car_hacking/car_venv; /opt/car_hacking/car_venv/bin/pip install vininfo[cli];"

    const-string v3, "VinInfo"

    const-string v4, "/opt/car_hacking/car_venv/bin/vininfo"

    invoke-direct {p0, v3, v4, v0, v2}, Lcom/offsec/nethunter/CANFragment;->checkAndUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "echo \'\\nEverything is updated! Closing in 3secs..\'; sleep 3 && exit"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CANFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/offsec/nethunter/CANFragment;->sharedpreferences:Landroid/content/SharedPreferences;

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

    iget-object v0, p0, Lcom/offsec/nethunter/CANFragment;->activity:Landroid/app/Activity;

    const-string v1, "com.offsec.nethunter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/offsec/nethunter/CANFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f120117

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string v1, "Welcome to CAN Arsenal!"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const-string v1, "This seems to be the first run. Install the CAN tools?"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v1, Lcom/offsec/nethunter/CANFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/CANFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/CANFragment;)V

    const-string v2, "Install"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v1, Lcom/offsec/nethunter/CANFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/offsec/nethunter/CANFragment$$ExternalSyntheticLambda1;-><init>()V

    const-string v2, "Disable message"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method synthetic lambda$SetupDialog$1$com-offsec-nethunter-CANFragment(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment;->RunSetup()V

    sget-object p1, Lcom/offsec/nethunter/CANFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "setup_done"

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "CANFragment"

    const-string v1, "onCreate called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "com.offsec.nethunter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/offsec/nethunter/CANFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/CANFragment;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/CANFragment;->context:Landroid/content/Context;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0c0026

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/offsec/nethunter/CANFragment;->activity:Landroid/app/Activity;

    const-string p3, "com.offsec.nethunter"

    invoke-virtual {p2, p3, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    sput-object p2, Lcom/offsec/nethunter/CANFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    new-instance p2, Lcom/offsec/nethunter/CANFragment$TabsPagerAdapter;

    invoke-direct {p2, p0}, Lcom/offsec/nethunter/CANFragment$TabsPagerAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    const p3, 0x7f090365

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p3, p2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 p2, 0x6

    invoke-virtual {p3, p2}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    const p2, 0x7f09045a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/tabs/TabLayout;

    new-instance v0, Lcom/google/android/material/tabs/TabLayoutMediator;

    new-instance v1, Lcom/offsec/nethunter/CANFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/offsec/nethunter/CANFragment$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {v0, p2, p3, v1}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    new-instance p2, Lcom/offsec/nethunter/CANFragment$1;

    invoke-direct {p2, p0}, Lcom/offsec/nethunter/CANFragment$1;-><init>(Lcom/offsec/nethunter/CANFragment;)V

    invoke-virtual {p3, p2}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    new-instance p3, Lcom/offsec/nethunter/CANFragment$2;

    invoke-direct {p3, p0}, Lcom/offsec/nethunter/CANFragment$2;-><init>(Lcom/offsec/nethunter/CANFragment;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroidx/fragment/app/FragmentActivity;->addMenuProvider(Landroidx/core/view/MenuProvider;Landroidx/lifecycle/LifecycleOwner;)V

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public run_cmd(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "/data/data/com.offsec.nhterm/files/usr/bin/kali"

    invoke-static {v0, p1}, Lcom/offsec/nethunter/bridge/Bridge;->createExecuteIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/CANFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const-string v1, "output"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Command executed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/offsec/nethunter/CANFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
