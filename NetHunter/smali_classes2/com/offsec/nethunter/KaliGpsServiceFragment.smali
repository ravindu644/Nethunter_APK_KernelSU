.class public Lcom/offsec/nethunter/KaliGpsServiceFragment;
.super Landroidx/fragment/app/Fragment;
.source "KaliGpsServiceFragment.java"

# interfaces
.implements Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;


# static fields
.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"

.field private static final TAG:Ljava/lang/String; = "KaliGpsServiceFragment"


# instance fields
.field private context:Landroid/content/Context;

.field private gpsProvider:Lcom/offsec/nethunter/gps/KaliGPSUpdates$Provider;

.field private gpsTextView:Landroid/widget/TextView;

.field private mousejack:Ljava/lang/String;

.field private reattachedToRunningService:Z

.field private rtladsb:Ljava/lang/String;

.field private rtlamr:Ljava/lang/String;

.field private rtlsdr:Ljava/lang/String;

.field private switch_gps_provider:Landroidx/appcompat/widget/SwitchCompat;

.field private switch_gpsd:Landroidx/appcompat/widget/SwitchCompat;

.field private wantHelpView:Z

.field private wantKismet:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsProvider:Lcom/offsec/nethunter/gps/KaliGPSUpdates$Provider;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->wantKismet:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->wantHelpView:Z

    iput-boolean v1, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->reattachedToRunningService:Z

    iput-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->switch_gps_provider:Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->switch_gpsd:Landroidx/appcompat/widget/SwitchCompat;

    const-string v0, ""

    iput-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->rtlsdr:Ljava/lang/String;

    iput-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->rtlamr:Ljava/lang/String;

    iput-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->rtladsb:Ljava/lang/String;

    iput-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->mousejack:Ljava/lang/String;

    return-void
.end method

.method private check_gpsd()V
    .locals 4

    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    const-string v1, "command = pgrep gpsd"

    const-string v2, "KaliGpsServiceFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "pgrep gpsd"

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "response = \'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->switch_gpsd:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->setCheckedQuietly(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method static synthetic lambda$onViewCreated$2(Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "echo \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" > "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/offsec/nethunter/utils/NhPaths;->SD_PATH:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/kismet_site.conf"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    const-string p1, "bootkali custom_cmd mv /sdcard/kismet_site.conf /etc/kismet/"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$startChrootGpsd$4()V
    .locals 4

    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "su -c \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "bootkali start_gpsd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/offsec/nethunter/utils/NhPaths;->GPS_PORT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KaliGpsServiceFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Response = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$stopChrootGpsd$5()V
    .locals 3

    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "su -c \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "stop-gpsd\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KaliGpsServiceFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static newInstance(I)Lcom/offsec/nethunter/KaliGpsServiceFragment;
    .locals 3

    new-instance v0, Lcom/offsec/nethunter/KaliGpsServiceFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/KaliGpsServiceFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "section_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setCheckedQuietly(Landroid/widget/CompoundButton;Z)V
    .locals 1

    const-string v0, "quiet"

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method private startChrootGpsd()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsTextView:Landroid/widget/TextView;

    const-string v1, "Starting gpsd in Kali chroot\n"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/offsec/nethunter/KaliGpsServiceFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/offsec/nethunter/KaliGpsServiceFragment$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private startGpsProvider()V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsProvider:Lcom/offsec/nethunter/gps/KaliGPSUpdates$Provider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsTextView:Landroid/widget/TextView;

    const-string v1, "Starting Android GPS Publisher\n"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GPS NMEA messages will be sent to udp://127.0.0.1:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/offsec/nethunter/utils/NhPaths;->GPS_PORT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsProvider:Lcom/offsec/nethunter/gps/KaliGPSUpdates$Provider;

    invoke-interface {v0, p0}, Lcom/offsec/nethunter/gps/KaliGPSUpdates$Provider;->onLocationUpdatesRequested(Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;)V

    :cond_0
    return-void
.end method

.method private startKismet()V
    .locals 2

    :try_start_0
    const-string v0, "/usr/bin/start-kismet"

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->run_cmd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->context:Landroid/content/Context;

    const v1, 0x7f1101eb

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private stopChrootGpsd()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsTextView:Landroid/widget/TextView;

    const-string v1, "Stopping gpsd in Kali chroot\n"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/offsec/nethunter/KaliGpsServiceFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/offsec/nethunter/KaliGpsServiceFragment$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private stopGpsProvider()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsProvider:Lcom/offsec/nethunter/gps/KaliGPSUpdates$Provider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsTextView:Landroid/widget/TextView;

    const-string v1, "Stopping Android GPS Publisher\n"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsProvider:Lcom/offsec/nethunter/gps/KaliGPSUpdates$Provider;

    invoke-interface {v0}, Lcom/offsec/nethunter/gps/KaliGPSUpdates$Provider;->onStopRequested()V

    :cond_0
    return-void
.end method


# virtual methods
.method synthetic lambda$onViewCreated$0$com-offsec-nethunter-KaliGpsServiceFragment(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object p1, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->switch_gps_provider:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "switch_gps_provider clicked: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KaliGpsServiceFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->startGpsProvider()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->stopGpsProvider()V

    :goto_0
    return-void
.end method

.method synthetic lambda$onViewCreated$1$com-offsec-nethunter-KaliGpsServiceFragment(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object p1, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->switch_gpsd:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "switch_gpsd clicked: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KaliGpsServiceFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->startChrootGpsd()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->stopChrootGpsd()V

    :goto_0
    return-void
.end method

.method synthetic lambda$onViewCreated$3$com-offsec-nethunter-KaliGpsServiceFragment(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/view/View;)V
    .locals 4

    iget-object p8, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->switch_gps_provider:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p8}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result p8

    const/4 v0, 0x1

    if-nez p8, :cond_0

    iget-object p8, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsTextView:Landroid/widget/TextView;

    const-string v1, "Android GPS Provider not running!\n"

    invoke-virtual {p8, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object p8, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->switch_gps_provider:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p8, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    invoke-direct {p0}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->startGpsProvider()V

    :cond_0
    iget-object p8, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->switch_gpsd:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p8}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result p8

    if-nez p8, :cond_1

    iget-object p8, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsTextView:Landroid/widget/TextView;

    const-string v1, "chroot gpsd not running!\n"

    invoke-virtual {p8, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object p8, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->switch_gpsd:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p8, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    invoke-direct {p0}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->startChrootGpsd()V

    :cond_1
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p8

    const-string v1, "\n"

    const-string v2, "source="

    const-string v3, ""

    if-nez p8, :cond_2

    new-instance p8, Ljava/lang/StringBuilder;

    invoke-direct {p8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v3

    :goto_0
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p8

    if-nez p8, :cond_3

    new-instance p8, Ljava/lang/StringBuilder;

    invoke-direct {p8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_3
    move-object p2, v3

    :goto_1
    invoke-virtual {p3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p3

    if-eqz p3, :cond_4

    const-string p3, "source=rtl433-0\n"

    iput-object p3, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->rtlsdr:Ljava/lang/String;

    goto :goto_2

    :cond_4
    iput-object v3, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->rtlsdr:Ljava/lang/String;

    :goto_2
    invoke-virtual {p4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p3

    if-eqz p3, :cond_5

    const-string p3, "source=rtlamr-0\n"

    iput-object p3, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->rtlamr:Ljava/lang/String;

    goto :goto_3

    :cond_5
    iput-object v3, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->rtlamr:Ljava/lang/String;

    :goto_3
    invoke-virtual {p5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p3

    if-eqz p3, :cond_6

    const-string p3, "source=rtladsb-0\n"

    iput-object p3, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->rtladsb:Ljava/lang/String;

    goto :goto_4

    :cond_6
    iput-object v3, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->rtladsb:Ljava/lang/String;

    :goto_4
    invoke-virtual {p6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p3

    if-eqz p3, :cond_7

    const-string p3, "source=mousejack:name=nRF,channel_hoprate=100/sec\n"

    iput-object p3, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->mousejack:Ljava/lang/String;

    goto :goto_5

    :cond_7
    iput-object v3, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->mousejack:Ljava/lang/String;

    :goto_5
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "log_template=%p/%n\nlog_prefix=/captures/kismet/\ngps=gpsd:host=localhost,port=2947\n"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->rtlsdr:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->rtlamr:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->rtladsb:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->mousejack:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance p3, Lcom/offsec/nethunter/KaliGpsServiceFragment$$ExternalSyntheticLambda5;

    invoke-direct {p3, p7, p1}, Lcom/offsec/nethunter/KaliGpsServiceFragment$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/lang/String;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    invoke-virtual {p0}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Starting Kismet.. Web UI will be available at localhost:2501\""

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iput-boolean v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->wantKismet:Z

    iget-object p1, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsTextView:Landroid/widget/TextView;

    const-string p2, "Kismet will launch after next position received.  Waiting...\n"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    instance-of v0, p1, Lcom/offsec/nethunter/gps/KaliGPSUpdates$Provider;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/offsec/nethunter/gps/KaliGPSUpdates$Provider;

    iput-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsProvider:Lcom/offsec/nethunter/gps/KaliGPSUpdates$Provider;

    invoke-interface {v0, p0}, Lcom/offsec/nethunter/gps/KaliGPSUpdates$Provider;->onReceiverReattach(Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->reattachedToRunningService:Z

    :cond_0
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->wantHelpView:Z

    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->context:Landroid/content/Context;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0050

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onFirstPositionUpdate()V
    .locals 0

    return-void
.end method

.method public onPositionUpdate(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ltz v1, :cond_2

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    const/16 v4, 0x14

    if-lt v3, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-lez v1, :cond_3

    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_3
    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-boolean p1, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->wantKismet:Z

    if-eqz p1, :cond_4

    iput-boolean v2, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->wantKismet:Z

    iget-object p1, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsTextView:Landroid/widget/TextView;

    const-string v0, "Launching kismet in NetHunter Terminal\n"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->startKismet()V

    :cond_4
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const-string v0, "KaliGpsServiceFragment"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/offsec/nethunter/gps/LocationUpdateService;->isInstanceCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->switch_gps_provider:Landroidx/appcompat/widget/SwitchCompat;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->setCheckedQuietly(Landroid/widget/CompoundButton;Z)V

    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsProvider:Lcom/offsec/nethunter/gps/KaliGPSUpdates$Provider;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/offsec/nethunter/gps/KaliGPSUpdates$Provider;->onReceiverReattach(Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->reattachedToRunningService:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->switch_gps_provider:Landroidx/appcompat/widget/SwitchCompat;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->setCheckedQuietly(Landroid/widget/CompoundButton;Z)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->check_gpsd()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090282

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsTextView:Landroid/widget/TextView;

    const p2, 0x7f09027a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f090457

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->switch_gps_provider:Landroidx/appcompat/widget/SwitchCompat;

    const v0, 0x7f090458

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->switch_gpsd:Landroidx/appcompat/widget/SwitchCompat;

    const v0, 0x7f090278

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v9, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v9}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    const v1, 0x7f0904e5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/EditText;

    const v1, 0x7f0900b1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/EditText;

    const v1, 0x7f0903bb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/CheckBox;

    const v1, 0x7f0903ba

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/CheckBox;

    const v1, 0x7f0903b9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/CheckBox;

    const v1, 0x7f09030c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Landroid/widget/CheckBox;

    const p1, 0x7f1100f8

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    iget-boolean p1, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->wantHelpView:Z

    if-nez p1, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "reattachedToRunningService: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->reattachedToRunningService:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KaliGpsServiceFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->reattachedToRunningService:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->switch_gps_provider:Landroidx/appcompat/widget/SwitchCompat;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->setCheckedQuietly(Landroid/widget/CompoundButton;Z)V

    :cond_1
    invoke-direct {p0}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->check_gpsd()V

    iget-object p1, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->switch_gps_provider:Landroidx/appcompat/widget/SwitchCompat;

    new-instance p2, Lcom/offsec/nethunter/KaliGpsServiceFragment$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/offsec/nethunter/KaliGpsServiceFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/KaliGpsServiceFragment;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->switch_gpsd:Landroidx/appcompat/widget/SwitchCompat;

    new-instance p2, Lcom/offsec/nethunter/KaliGpsServiceFragment$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/offsec/nethunter/KaliGpsServiceFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/KaliGpsServiceFragment;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance p1, Lcom/offsec/nethunter/KaliGpsServiceFragment$$ExternalSyntheticLambda4;

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/offsec/nethunter/KaliGpsServiceFragment$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/KaliGpsServiceFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Lcom/offsec/nethunter/utils/ShellExecuter;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public run_cmd(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "/data/data/com.offsec.nhterm/files/usr/bin/kali"

    invoke-static {v0, p1}, Lcom/offsec/nethunter/bridge/Bridge;->createExecuteIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
