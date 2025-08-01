.class public Lcom/hijacker/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hijacker/MainActivity$MyListAdapter;,
        Lcom/hijacker/MainActivity$CustomActionAdapter;,
        Lcom/hijacker/MainActivity$FileExplorerAdapter;,
        Lcom/hijacker/MainActivity$SetupTask;
    }
.end annotation


# static fields
.field static final AIREPLAY_DEAUTH:I = 0x1

.field static final AIREPLAY_WEP:I = 0x2

.field static final BAND_2:I = 0x1

.field static final BAND_5:I = 0x2

.field static final BAND_BOTH:I = 0x3

.field static final BUFFER_SIZE:I = 0x100000

.field static final CHROOT_BIN_MISSING:I = 0x1

.field static final CHROOT_BOTH_MISSING:I = 0x3

.field static final CHROOT_DIR_MISSING:I = 0x2

.field static final CHROOT_FOUND:I = 0x0

.field static final FRAGMENT_AIRODUMP:I = 0x7f090129

.field static final FRAGMENT_CRACK:I = 0x7f09012a

.field static final FRAGMENT_CUSTOM:I = 0x7f09012b

.field static final FRAGMENT_MDK:I = 0x7f09012c

.field static final FRAGMENT_REAVER:I = 0x7f09012d

.field static final FRAGMENT_SETTINGS:I = 0x7f09012e

.field static final MAX_READLINE_SIZE:I = 0x2710

.field static final NETHUNTER_BOOTKALI_BASH:Ljava/lang/String; = "/data/data/com.offsec.nethunter/files/scripts/bootkali_bash"

.field static final PROCESS_AIRCRACK:I = 0x4

.field static final PROCESS_AIREPLAY:I = 0x1

.field static final PROCESS_AIRODUMP:I = 0x0

.field static final PROCESS_MDK_BF:I = 0x2

.field static final PROCESS_MDK_DOS:I = 0x3

.field static final PROCESS_REAVER:I = 0x5

.field static final RELEASES_LINK:Ljava/lang/String; = "https://api.github.com/repos/chrisk44/Hijacker/releases"

.field static final SORT_BEACONS_FRAMES:I = 0x2

.field static final SORT_DATA_FRAMES:I = 0x3

.field static final SORT_ESSID:I = 0x1

.field static final SORT_NOSORT:I = 0x0

.field static final SORT_PWR:I = 0x4

.field static final WORDLISTS_LINK:Ljava/lang/String; = "https://api.github.com/repos/chrisk44/Hijacker/contents/wordlists"

.field static actionBar:Landroidx/appcompat/app/ActionBar; = null

.field static actions_path:Ljava/lang/String; = null

.field static adapter:Lcom/hijacker/MainActivity$MyListAdapter; = null

.field static airOnStartup:Z = false

.field static aircrack_dir:Ljava/lang/String; = null

.field static aireplay_dir:Ljava/lang/String; = null

.field static aireplay_running:I = 0x0

.field static airodump_dir:Ljava/lang/String; = null

.field static final aliases:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static aliases_file:Ljava/io/File; = null

.field static aliases_in:Ljava/io/FileWriter; = null

.field static always_cap:Z = false

.field static ap_count:Landroid/widget/TextView; = null

.field static ap_count_icon:Landroid/widget/ImageView; = null

.field static arch:Ljava/lang/String; = null

.field static background:Z = false

.field static band:I = 0x0

.field static bootkali_init_bin:Ljava/lang/String; = null

.field static busybox:Ljava/lang/String; = null

.field static cap_path:Ljava/lang/String; = null

.field static chroot_dir:Ljava/lang/String; = null

.field static clipboard:Landroid/content/ClipboardManager; = null

.field static cont_on_fail:Z = false

.field static currentFragment:I = 0x7f090129

.field static custom_action_adapter:Lcom/hijacker/MainActivity$CustomActionAdapter; = null

.field static custom_chroot_cmd:Ljava/lang/String; = null

.field static data_path:Ljava/lang/String; = null

.field static deauthWait:I = 0x0

.field static deauthall:Z = false

.field static debug:Z = false

.field static delete_extra:Z = false

.field static devChipset:Ljava/lang/String; = null

.field static deviceModel:Ljava/lang/String; = null

.field static disable_monMode:Ljava/lang/String; = null

.field static enable_monMode:Ljava/lang/String; = null

.field static enable_on_airodump:Z = false

.field static error_notif:Landroidx/core/app/NotificationCompat$Builder; = null

.field static file_explorer_adapter:Lcom/hijacker/MainActivity$FileExplorerAdapter; = null

.field static firm_backup_file:Ljava/lang/String; = null

.field public static handler:Landroid/os/Handler; = null

.field static handshake_notif:Landroidx/core/app/NotificationCompat$Builder; = null

.field static iface:Ljava/lang/String; = null

.field static iswatch:Z = false

.field static last_action:J = 0x0L

.field static last_aireplay:Ljava/lang/String; = null

.field static last_airodump:Ljava/lang/String; = null

.field static last_mdk:Ljava/lang/String; = null

.field static last_reaver:Ljava/lang/String; = null

.field static mFragmentManager:Landroid/app/FragmentManager; = null

.field static mNotificationManager:Landroid/app/NotificationManager; = null

.field static manufDBFile:Ljava/lang/String; = null

.field static manufHashMap:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static manuf_filter:Ljava/lang/String; = null

.field static mdk3bf_dir:Ljava/lang/String; = null

.field static mdk3dos_dir:Ljava/lang/String; = null

.field static menu:Landroid/view/Menu; = null

.field static monstart:Z = false

.field static navTitlesMap:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static notif:Landroidx/core/app/NotificationCompat$Builder; = null

.field static notif_on:Z = false

.field static opn:Z = true

.field static overflow:[Landroid/graphics/drawable/Drawable; = null

.field static path:Ljava/lang/String; = null

.field static pref:Landroid/content/SharedPreferences; = null

.field static pref_edit:Landroid/content/SharedPreferences$Editor; = null

.field static prefix:Ljava/lang/String; = null

.field static progress:Landroid/widget/ProgressBar; = null

.field static progress_int:I = 0x0

.field static pwr_filter:I = 0x0

.field static reaver_dir:Ljava/lang/String; = null

.field static reaver_sess_path:Ljava/lang/String; = null

.field static rootView:Landroid/view/View; = null

.field static show_ap:Z = true

.field static show_ch:[Z = null

.field static show_client_count:Z = false

.field static show_details:Z = false

.field static show_na_st:Z = true

.field static show_notif:Z = false

.field static show_st:Z = true

.field static sort:I = 0x0

.field static sort_reverse:Z = false

.field static st_count:Landroid/widget/TextView; = null

.field static st_count_icon:Landroid/widget/ImageView; = null

.field static status:[Landroid/widget/ImageView; = null

.field static target_deauth:Z = false

.field static toSort:Z = false

.field static toolbar:Landroidx/appcompat/widget/Toolbar; = null

.field static update_on_startup:Z = false

.field static versionCode:I = 0x0

.field static versionName:Ljava/lang/String; = null

.field static watchdog:Z = false

.field static wep:Z = true

.field static wl_path:Ljava/lang/String; = null

.field static wpa:Z = true

.field static wpa_runnable:Ljava/lang/Runnable; = null

.field static wpa_thread:Ljava/lang/Thread; = null

.field static wpacheckcont:Z = false


# instance fields
.field crackFragment:Lcom/hijacker/CrackFragment;

.field customActionFragment:Lcom/hijacker/CustomActionFragment;

.field mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

.field navigationView:Lcom/google/android/material/navigation/NavigationView;

.field reaverFragment:Lcom/hijacker/ReaverFragment;

.field watchdogTask:Lcom/hijacker/WatchdogTask;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v0, 0xf

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/hijacker/MainActivity;->show_ch:[Z

    const/16 v0, 0x78

    sput v0, Lcom/hijacker/MainActivity;->pwr_filter:I

    const-string v0, ""

    sput-object v0, Lcom/hijacker/MainActivity;->manuf_filter:Ljava/lang/String;

    const/4 v1, 0x0

    sput v1, Lcom/hijacker/MainActivity;->sort:I

    sput-boolean v1, Lcom/hijacker/MainActivity;->sort_reverse:Z

    sput-boolean v1, Lcom/hijacker/MainActivity;->toSort:Z

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Lcom/hijacker/MainActivity;->navTitlesMap:Landroid/util/SparseArray;

    const/16 v2, 0x8

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v5, 0x2

    aput-object v3, v2, v5

    const/4 v6, 0x3

    aput-object v3, v2, v6

    const/4 v7, 0x4

    aput-object v3, v2, v7

    const/4 v8, 0x5

    aput-object v3, v2, v8

    const/4 v9, 0x6

    aput-object v3, v2, v9

    const/4 v9, 0x7

    aput-object v3, v2, v9

    sput-object v2, Lcom/hijacker/MainActivity;->overflow:[Landroid/graphics/drawable/Drawable;

    new-array v2, v8, [Landroid/widget/ImageView;

    aput-object v3, v2, v1

    aput-object v3, v2, v4

    aput-object v3, v2, v5

    aput-object v3, v2, v6

    aput-object v3, v2, v7

    sput-object v2, Lcom/hijacker/MainActivity;->status:[Landroid/widget/ImageView;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/hijacker/MainActivity;->aliases:Ljava/util/HashMap;

    sput-object v0, Lcom/hijacker/MainActivity;->devChipset:Ljava/lang/String;

    const-string v0, "/data/data/com.offsec.nethunter/scripts/bootkali_init"

    sput-object v0, Lcom/hijacker/MainActivity;->bootkali_init_bin:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/hijacker/MainActivity;->handler:Landroid/os/Handler;

    const-string v0, "native-lib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Lcom/hijacker/ReaverFragment;

    invoke-direct {v0}, Lcom/hijacker/ReaverFragment;-><init>()V

    iput-object v0, p0, Lcom/hijacker/MainActivity;->reaverFragment:Lcom/hijacker/ReaverFragment;

    new-instance v0, Lcom/hijacker/CrackFragment;

    invoke-direct {v0}, Lcom/hijacker/CrackFragment;-><init>()V

    iput-object v0, p0, Lcom/hijacker/MainActivity;->crackFragment:Lcom/hijacker/CrackFragment;

    new-instance v0, Lcom/hijacker/CustomActionFragment;

    invoke-direct {v0}, Lcom/hijacker/CustomActionFragment;-><init>()V

    iput-object v0, p0, Lcom/hijacker/MainActivity;->customActionFragment:Lcom/hijacker/CustomActionFragment;

    return-void
.end method

.method public static _startAireplay(Ljava/lang/String;)V
    .locals 3

    const-string v0, " "

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "su -c "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/hijacker/MainActivity;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/hijacker/MainActivity;->aireplay_dir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -D --ignore-negative-one "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/hijacker/MainActivity;->iface:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-boolean v0, Lcom/hijacker/MainActivity;->debug:Z

    if-eqz v0, :cond_0

    const-string v0, "HIJACKER/_startAireplay"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/hijacker/MainActivity;->last_action:J

    sput-object p0, Lcom/hijacker/MainActivity;->last_aireplay:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caught Exception in _startAireplay() start block: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HIJACKER/Exception"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance p0, Lcom/hijacker/MainActivity$2;

    invoke-direct {p0}, Lcom/hijacker/MainActivity$2;-><init>()V

    invoke-static {p0}, Lcom/hijacker/MainActivity;->runInHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method static checkChroot()I
    .locals 7

    invoke-static {}, Lcom/hijacker/Shell;->getFreeShell()Lcom/hijacker/Shell;

    move-result-object v0

    const-string v1, "echo $PATH; echo ENDOFPATH"

    invoke-virtual {v0, v1}, Lcom/hijacker/Shell;->run(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/hijacker/Shell;->getShell_out()Ljava/io/BufferedReader;

    move-result-object v1

    const-string v2, "ENDOFPATH"

    invoke-static {v1, v2}, Lcom/hijacker/MainActivity;->getLastLine(Ljava/io/BufferedReader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/hijacker/Shell;->done()V

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    new-instance v5, Lcom/hijacker/RootFile;

    const-string v6, "/data/data/com.offsec.nethunter/scripts/bootkali_init"

    invoke-direct {v5, v6}, Lcom/hijacker/RootFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/hijacker/RootFile;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    sput-object v6, Lcom/hijacker/MainActivity;->bootkali_init_bin:Ljava/lang/String;

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    new-instance v1, Lcom/hijacker/RootFile;

    const-string v3, "/data/data/com.offsec.nethunter/files/scripts/bootkali_bash"

    invoke-direct {v1, v3}, Lcom/hijacker/RootFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/hijacker/RootFile;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    sput-object v3, Lcom/hijacker/MainActivity;->bootkali_init_bin:Ljava/lang/String;

    const/4 v0, 0x1

    :cond_2
    new-instance v1, Lcom/hijacker/RootFile;

    sget-object v3, Lcom/hijacker/MainActivity;->chroot_dir:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/hijacker/RootFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/hijacker/RootFile;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/hijacker/RootFile;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/hijacker/MainActivity;->chroot_dir:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/bin/bash"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/hijacker/RootFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/hijacker/RootFile;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    return v2

    :cond_4
    if-nez v0, :cond_5

    if-nez v1, :cond_5

    const/4 v0, 0x3

    return v0

    :cond_5
    if-eqz v1, :cond_6

    return v4

    :cond_6
    const/4 v0, 0x2

    return v0
.end method

.method static copy(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    sget-object v0, Lcom/hijacker/MainActivity;->clipboard:Landroid/content/ClipboardManager;

    const-string v1, "label"

    invoke-static {v1, p0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" copied to clipboard"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {p1, p0, v0}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :cond_0
    return-void
.end method

.method static createReport(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Process;)Z
    .locals 8

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "HIJACKER/createReport"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    return v2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/bin/busybox"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/PrintWriter;

    invoke-virtual {p3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {p3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p3

    invoke-direct {v5, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 p3, 0x0

    :try_start_1
    new-instance v5, Ljava/io/FileWriter;

    const/4 v6, 0x1

    invoke-direct {v5, p0, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    const-string p0, "\n--------------------------------------------------------------------------------\n"

    invoke-virtual {v5, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Hijacker report - "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p3, Ljava/util/Date;

    invoke-direct {p3}, Ljava/util/Date;-><init>()V

    invoke-virtual {p3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n\n"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Android version: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0xa

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Device: "

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/hijacker/MainActivity;->deviceModel:Ljava/lang/String;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "App version: "

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/hijacker/MainActivity;->versionName:Ljava/lang/String;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/hijacker/MainActivity;->versionCode:I

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")\n"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "App data path: "

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\nStack trace:\n"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    :cond_1
    const-string p0, "echo pref_file--------------------------------------; cat /data/data/com.hijacker/shared_prefs/com.hijacker_preferences.xml;"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " echo aliases file-----------------------------------; "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " cat "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "/Hijacker/aliases.txt;"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " echo app directory----------------------------------; "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ls -lR "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3b

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " echo fw_bcmdhd--------------------------------------; strings /vendor/firmware/fw_bcmdhd.bin | grep \"FWID:\";"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " echo ps---------------------------------------------; ps | "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " grep -e air -e mdk -e reaver;"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " echo busybox----------------------------------------; "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " echo logcat-----------------------------------------; logcat -d -v time | "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " grep HIJACKER;"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " exit\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return v6

    :catch_1
    move-object p3, v5

    goto :goto_1

    :catch_2
    nop

    :goto_1
    if-eqz p3, :cond_3

    :try_start_3
    invoke-virtual {p3}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :cond_3
    return v2
.end method

.method public static doRestart(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/hijacker/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v0, 0x1e240

    const/high16 v1, 0x10000000

    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    add-long/2addr v0, v2

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method static findFirmwarePath(Lcom/hijacker/Shell;)Ljava/lang/String;
    .locals 12

    const/4 v0, 0x0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/hijacker/Shell;->getFreeShell()Lcom/hijacker/Shell;

    move-result-object p0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    const-string v3, "/system"

    const-string v4, "/vendor"

    const-string v5, "/system/etc"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const-string v5, "fw_bcmdhd.bin"

    const-string v6, "bcmdhd_sta.bin"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-nez v6, :cond_6

    if-ge v7, v2, :cond_6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v4, :cond_5

    aget-object v9, v5, v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/hijacker/MainActivity;->busybox:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " find "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v3, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " -type f -name \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\"; echo ENDOFFIND"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/hijacker/Shell;->run(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hijacker/Shell;->getShell_out()Ljava/io/BufferedReader;

    move-result-object v9

    :try_start_0
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    :goto_3
    if-eqz v10, :cond_3

    const-string v11, "ENDOFFIND"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_4

    :cond_1
    const-string v11, "/bac/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "backup"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    move-object v6, v10

    :cond_2
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_4
    if-eqz v6, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/hijacker/Shell;->done()V

    :cond_7
    return-object v6
.end method

.method static getFixed(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-le v0, p1, :cond_1

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, p1, v2

    if-ge v1, v2, :cond_2

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getLastLine(Ljava/io/BufferedReader;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    move-object v0, v1

    :goto_1
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v0, v1

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception in getLastLine: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HIJACKER/Exception"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    :cond_1
    return-object v1
.end method

.method static getLastSeen(J)Ljava/lang/String;
    .locals 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x3e8

    cmp-long v2, v0, p0

    if-gez v2, :cond_0

    const-string p0, "Just now"

    return-object p0

    :cond_0
    div-long/2addr v0, p0

    const-wide/16 p0, 0x3c

    div-long v2, v0, p0

    const-string v4, "s "

    const-string v5, " "

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x0

    const-string v10, ""

    cmp-long v11, v2, v8

    if-lez v11, :cond_2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " minute"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v10, v2, v6

    if-lez v10, :cond_1

    move-object v2, v4

    goto :goto_0

    :cond_1
    move-object v2, v5

    :goto_0
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    rem-long/2addr v0, p0

    :cond_2
    cmp-long p0, v0, v8

    if-lez p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " second"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long p1, v0, v6

    if-lez p1, :cond_3

    goto :goto_1

    :cond_3
    move-object v4, v5

    :goto_1
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "ago"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getManuf(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/hijacker/Device;->trimMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/hijacker/MainActivity;->manufHashMap:Ljava/util/HashMap;

    const-string v1, "Unknown Manufacturer"

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    return-object p0
.end method

.method public static getPIDs(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const-string p0, "reaver"

    invoke-static {p0}, Lcom/hijacker/MainActivity;->getPIDs(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "HIJACKER/getPIDs"

    const-string v0, "Method called with invalid pr code"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getPIDs() called with invalid pr code"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p0, "aircrack-ng"

    invoke-static {p0}, Lcom/hijacker/MainActivity;->getPIDs(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "mdk3dos"

    invoke-static {p0}, Lcom/hijacker/MainActivity;->getPIDs(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, "mdk3bf"

    invoke-static {p0}, Lcom/hijacker/MainActivity;->getPIDs(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_4
    const-string p0, "aireplay-ng"

    invoke-static {p0}, Lcom/hijacker/MainActivity;->getPIDs(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_5
    const-string p0, "airodump-ng"

    invoke-static {p0}, Lcom/hijacker/MainActivity;->getPIDs(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static getPIDs(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/hijacker/Shell;->getFreeShell()Lcom/hijacker/Shell;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/hijacker/MainActivity;->busybox:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " pidof "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; echo ENDOFPIDOF"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/hijacker/Shell;->run(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/hijacker/Shell;->getShell_out()Ljava/io/BufferedReader;

    move-result-object p0

    move-object v3, v0

    :goto_0
    const-string v4, "Exception: "

    const-string v5, "HIJACKER/getPIDs"

    if-nez v3, :cond_1

    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    :goto_1
    const-string v6, "ENDOFPIDOF"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    array-length v6, v3

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_2

    aget-object v8, v3, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :cond_3
    move-object v0, v2

    goto :goto_3

    :catch_1
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    invoke-virtual {v1}, Lcom/hijacker/Shell;->done()V

    return-object v0
.end method

.method static isArchValid()Z
    .locals 2

    sget-object v0, Lcom/hijacker/MainActivity;->arch:Ljava/lang/String;

    const-string v1, "(.*)arm(.*)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/hijacker/MainActivity;->arch:Ljava/lang/String;

    const-string v1, "aarch64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static isolate(Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Lcom/hijacker/AP;->getAPByMac(Ljava/lang/String;)Lcom/hijacker/AP;

    move-result-object v0

    sput-object v0, Lcom/hijacker/IsolatedFragment;->is_ap:Lcom/hijacker/AP;

    sget-object v0, Lcom/hijacker/IsolatedFragment;->is_ap:Lcom/hijacker/AP;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hijacker/MainActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    sput v0, Lcom/hijacker/IsolatedFragment;->exit_on:I

    sget-object v0, Lcom/hijacker/MainActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0900cb

    new-instance v2, Lcom/hijacker/IsolatedFragment;

    invoke-direct {v2}, Lcom/hijacker/IsolatedFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    invoke-static {}, Lcom/hijacker/Tile;->filter()V

    sget-boolean v0, Lcom/hijacker/MainActivity;->debug:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/hijacker/IsolatedFragment;->is_ap:Lcom/hijacker/AP;

    const-string v1, "HIJACKER/Main"

    if-nez v0, :cond_1

    const-string p0, "No AP isolated"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AP with MAC "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " isolated"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method static loadAliases()V
    .locals 6

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/hijacker/MainActivity;->data_path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/aliases.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/hijacker/MainActivity;->aliases_file:Ljava/io/File;

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/hijacker/MainActivity;->aliases_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    goto :goto_2

    :cond_0
    sget-boolean v0, Lcom/hijacker/MainActivity;->debug:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v1, "HIJACKER/loadAliases"

    if-eqz v0, :cond_1

    :try_start_1
    const-string v0, "Reading aliases file..."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :try_start_2
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    sget-object v3, Lcom/hijacker/MainActivity;->aliases_file:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_3

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x12

    if-le v4, v5, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/hijacker/MainActivity;->aliases:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Aliases file format error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "HIJACKER/loadAliases1"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    new-instance v0, Ljava/io/FileWriter;

    sget-object v1, Lcom/hijacker/MainActivity;->aliases_file:Ljava/io/File;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    sput-object v0, Lcom/hijacker/MainActivity;->aliases_in:Ljava/io/FileWriter;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HIJACKER/loadAliases2"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-object v0, Lcom/hijacker/MainActivity;->aliases_in:Ljava/io/FileWriter;

    :goto_3
    return-void
.end method

.method static loadPreferences()V
    .locals 4

    const-string v0, "always_cap"

    const-string v1, "HIJACKER/load"

    const-string v2, "Loading preferences..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/hijacker/MainActivity;->pref:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/hijacker/MainActivity;->iface:Ljava/lang/String;

    const-string v3, "iface"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/hijacker/MainActivity;->iface:Ljava/lang/String;

    invoke-static {}, Lcom/hijacker/MainActivity;->isArchValid()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/hijacker/MainActivity;->pref:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/hijacker/MainActivity;->prefix:Ljava/lang/String;

    const-string v3, "prefix"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/hijacker/MainActivity;->prefix:Ljava/lang/String;

    :cond_0
    sget-object v1, Lcom/hijacker/MainActivity;->pref:Landroid/content/SharedPreferences;

    sget v2, Lcom/hijacker/MainActivity;->deauthWait:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "deauthWait"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/hijacker/MainActivity;->deauthWait:I

    sget-object v1, Lcom/hijacker/MainActivity;->pref:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/hijacker/MainActivity;->chroot_dir:Ljava/lang/String;

    const-string v3, "chroot_dir"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/hijacker/MainActivity;->chroot_dir:Ljava/lang/String;

    sget-object v1, Lcom/hijacker/MainActivity;->pref:Landroid/content/SharedPreferences;

    sget-boolean v2, Lcom/hijacker/MainActivity;->monstart:Z

    const-string v3, "monstart"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/hijacker/MainActivity;->monstart:Z

    sget-object v1, Lcom/hijacker/MainActivity;->pref:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/hijacker/MainActivity;->enable_monMode:Ljava/lang/String;

    const-string v3, "enable_monMode"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/hijacker/MainActivity;->enable_monMode:Ljava/lang/String;

    sget-object v1, Lcom/hijacker/MainActivity;->pref:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/hijacker/MainActivity;->disable_monMode:Ljava/lang/String;

    const-string v3, "disable_monMode"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/hijacker/MainActivity;->disable_monMode:Ljava/lang/String;

    sget-object v1, Lcom/hijacker/MainActivity;->pref:Landroid/content/SharedPreferences;

    sget-boolean v2, Lcom/hijacker/MainActivity;->enable_on_airodump:Z

    const-string v3, "enable_on_airodump"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/hijacker/MainActivity;->enable_on_airodump:Z

    sget-object v1, Lcom/hijacker/MainActivity;->pref:Landroid/content/SharedPreferences;

    sget-boolean v2, Lcom/hijacker/MainActivity;->show_notif:Z

    const-string v3, "show_notif"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/hijacker/MainActivity;->show_notif:Z

    sget-object v1, Lcom/hijacker/MainActivity;->pref:Landroid/content/SharedPreferences;

    sget-boolean v2, Lcom/hijacker/MainActivity;->show_details:Z

    const-string v3, "show_details"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/hijacker/MainActivity;->show_details:Z

    sget-object v1, Lcom/hijacker/MainActivity;->pref:Landroid/content/SharedPreferences;

    sget-boolean v2, Lcom/hijacker/MainActivity;->airOnStartup:Z

    const-string v3, "airOnStartup"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/hijacker/MainActivity;->airOnStartup:Z

    sget-object v1, Lcom/hijacker/MainActivity;->pref:Landroid/content/SharedPreferences;

    sget-boolean v2, Lcom/hijacker/MainActivity;->debug:Z

    const-string v3, "debug"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/hijacker/MainActivity;->debug:Z

    sget-object v1, Lcom/hijacker/MainActivity;->pref:Landroid/content/SharedPreferences;

    sget-boolean v2, Lcom/hijacker/MainActivity;->watchdog:Z

    const-string v3, "watchdog"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/hijacker/MainActivity;->watchdog:Z

    sget-object v1, Lcom/hijacker/MainActivity;->pref:Landroid/content/SharedPreferences;

    sget-boolean v2, Lcom/hijacker/MainActivity;->target_deauth:Z

    const-string v3, "target_deauth"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/hijacker/MainActivity;->target_deauth:Z

    sget-object v1, Lcom/hijacker/MainActivity;->pref:Landroid/content/SharedPreferences;

    sget-boolean v2, Lcom/hijacker/MainActivity;->delete_extra:Z

    const-string v3, "delete_extra"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/hijacker/MainActivity;->delete_extra:Z

    :try_start_0
    sget-object v1, Lcom/hijacker/MainActivity;->pref:Landroid/content/SharedPreferences;

    sget-boolean v2, Lcom/hijacker/MainActivity;->always_cap:Z

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/hijacker/MainActivity;->always_cap:Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v1, Lcom/hijacker/MainActivity;->pref_edit:Landroid/content/SharedPreferences$Editor;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/hijacker/MainActivity;->pref_edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    sget-object v0, Lcom/hijacker/MainActivity;->pref:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/hijacker/MainActivity;->custom_chroot_cmd:Ljava/lang/String;

    const-string v2, "custom_chroot_cmd"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hijacker/MainActivity;->custom_chroot_cmd:Ljava/lang/String;

    sget-object v0, Lcom/hijacker/MainActivity;->pref:Landroid/content/SharedPreferences;

    sget-boolean v1, Lcom/hijacker/MainActivity;->cont_on_fail:Z

    const-string v2, "cont_on_fail"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/hijacker/MainActivity;->cont_on_fail:Z

    sget-object v0, Lcom/hijacker/MainActivity;->pref:Landroid/content/SharedPreferences;

    sget-boolean v1, Lcom/hijacker/MainActivity;->update_on_startup:Z

    const-string v2, "update_on_startup"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/hijacker/MainActivity;->update_on_startup:Z

    sget-object v0, Lcom/hijacker/MainActivity;->pref:Landroid/content/SharedPreferences;

    sget v1, Lcom/hijacker/MainActivity;->band:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "band"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/hijacker/MainActivity;->band:I

    sget-object v0, Lcom/hijacker/MainActivity;->pref:Landroid/content/SharedPreferences;

    sget-boolean v1, Lcom/hijacker/MainActivity;->show_client_count:Z

    const-string v2, "show_client_count"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/hijacker/MainActivity;->show_client_count:Z

    sget-object v0, Lcom/hijacker/MainActivity;->progress:Landroid/widget/ProgressBar;

    sget v1, Lcom/hijacker/MainActivity;->deauthWait:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    sget-object v0, Lcom/hijacker/MainActivity;->progress:Landroid/widget/ProgressBar;

    sget v1, Lcom/hijacker/MainActivity;->deauthWait:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method static notification()V
    .locals 4

    sget-boolean v0, Lcom/hijacker/MainActivity;->notif_on:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/hijacker/MainActivity;->show_notif:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/hijacker/MainActivity;->notif:Landroidx/core/app/NotificationCompat$Builder;

    if-eqz v0, :cond_a

    sget-boolean v2, Lcom/hijacker/MainActivity;->show_details:Z

    if-eqz v2, :cond_9

    sget-object v0, Lcom/hijacker/IsolatedFragment;->is_ap:Lcom/hijacker/AP;

    const-string v2, " | STs: "

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APs: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/hijacker/Tile;->i:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/hijacker/Tile;->tiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sget v3, Lcom/hijacker/Tile;->i:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/hijacker/IsolatedFragment;->is_ap:Lcom/hijacker/AP;

    iget-object v3, v3, Lcom/hijacker/AP;->essid:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/hijacker/Tile;->tiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sget v3, Lcom/hijacker/Tile;->i:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget v2, Lcom/hijacker/MainActivity;->aireplay_running:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | Aireplay deauthenticating..."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | Aireplay replaying for wep..."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    sget-object v2, Lcom/hijacker/MainActivity;->wpa_thread:Ljava/lang/Thread;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | WPA cracking..."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    sget-boolean v2, Lcom/hijacker/MDKFragment;->bf:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | MDK3 Beacon Flooding..."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    sget-boolean v2, Lcom/hijacker/MDKFragment;->ados:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | MDK3 Authentication DoS..."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-static {}, Lcom/hijacker/ReaverFragment;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | Reaver running..."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    invoke-static {}, Lcom/hijacker/CrackFragment;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | Cracking .cap file..."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    invoke-static {}, Lcom/hijacker/CustomActionFragment;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | Running action "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/hijacker/CustomActionFragment;->selectedAction:Lcom/hijacker/CustomAction;

    invoke-virtual {v0}, Lcom/hijacker/CustomAction;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8
    sget-object v2, Lcom/hijacker/MainActivity;->notif:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_2

    :cond_9
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    :goto_2
    sget-object v0, Lcom/hijacker/MainActivity;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v2, Lcom/hijacker/MainActivity;->notif:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_3

    :cond_a
    sget-object v0, Lcom/hijacker/MainActivity;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :goto_3
    return-void
.end method

.method static refreshState()V
    .locals 3

    invoke-static {}, Lcom/hijacker/Airodump;->isRunning()Z

    move-result v0

    sget v1, Lcom/hijacker/MainActivity;->aireplay_running:I

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x2

    :cond_0
    sget-boolean v1, Lcom/hijacker/MDKFragment;->bf:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/hijacker/MDKFragment;->ados:Z

    if-eqz v1, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x4

    :cond_2
    sget-object v1, Lcom/hijacker/MainActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    sget-object v2, Lcom/hijacker/MainActivity;->overflow:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/Toolbar;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/hijacker/ReaverFragment;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/hijacker/CrackFragment;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/hijacker/MainActivity;->wpa_thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/hijacker/MainActivity;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    sget-object v0, Lcom/hijacker/MainActivity;->progress:Landroid/widget/ProgressBar;

    sget v1, Lcom/hijacker/MainActivity;->deauthWait:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_3
    return-void
.end method

.method public static runInHandler(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/hijacker/MainActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static startAdos(Ljava/lang/String;)V
    .locals 3

    const-string v0, " "

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "su -c "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/hijacker/MainActivity;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/hijacker/MainActivity;->mdk3dos_dir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/hijacker/MainActivity;->iface:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " a -m"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " -i "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-boolean v0, Lcom/hijacker/MainActivity;->debug:Z

    if-eqz v0, :cond_1

    const-string v0, "HIJACKER/MDK3"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sput-object p0, Lcom/hijacker/MainActivity;->last_mdk:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HIJACKER/startAdos"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/hijacker/MainActivity;->last_action:J

    const/4 p0, 0x1

    sput-boolean p0, Lcom/hijacker/MDKFragment;->ados:Z

    new-instance p0, Lcom/hijacker/MainActivity$4;

    invoke-direct {p0}, Lcom/hijacker/MainActivity$4;-><init>()V

    invoke-static {p0}, Lcom/hijacker/MainActivity;->runInHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static startAireplay(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    sput v0, Lcom/hijacker/MainActivity;->aireplay_running:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--deauth 0 -a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/hijacker/MainActivity;->_startAireplay(Ljava/lang/String;)V

    return-void
.end method

.method public static startAireplay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    sput v0, Lcom/hijacker/MainActivity;->aireplay_running:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--deauth 0 -a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " -c "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/hijacker/MainActivity;->_startAireplay(Ljava/lang/String;)V

    return-void
.end method

.method public static startAireplayWEP(Lcom/hijacker/AP;)V
    .locals 2

    const/4 v0, 0x2

    sput v0, Lcom/hijacker/MainActivity;->aireplay_running:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--fakeauth 0 -a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hijacker/AP;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hijacker/AP;->essid:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/hijacker/MainActivity;->_startAireplay(Ljava/lang/String;)V

    return-void
.end method

.method public static startAireplayWear(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    sput v0, Lcom/hijacker/MainActivity;->aireplay_running:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--deauth 1 -a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/hijacker/MainActivity;->_startAireplay(Ljava/lang/String;)V

    return-void
.end method

.method public static startAireplayWear(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    sput v0, Lcom/hijacker/MainActivity;->aireplay_running:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--deauth 1 -a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " -c "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/hijacker/MainActivity;->_startAireplay(Ljava/lang/String;)V

    return-void
.end method

.method public static startBeaconFlooding(Ljava/lang/String;)V
    .locals 3

    const-string v0, " "

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "su -c "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/hijacker/MainActivity;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/hijacker/MainActivity;->mdk3bf_dir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/hijacker/MainActivity;->iface:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " b -m "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    sget-boolean p0, Lcom/hijacker/MainActivity;->debug:Z

    if-eqz p0, :cond_1

    const-string p0, "HIJACKER/MDK3"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sput-object v0, Lcom/hijacker/MainActivity;->last_mdk:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HIJACKER/startBF"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/hijacker/MainActivity;->last_action:J

    const/4 p0, 0x1

    sput-boolean p0, Lcom/hijacker/MDKFragment;->bf:Z

    new-instance p0, Lcom/hijacker/MainActivity$3;

    invoke-direct {p0}, Lcom/hijacker/MainActivity$3;-><init>()V

    invoke-static {p0}, Lcom/hijacker/MainActivity;->runInHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static stop(I)V
    .locals 4

    sget-boolean v0, Lcom/hijacker/MainActivity;->debug:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HIJACKER/stop"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/hijacker/MainActivity;->last_action:J

    if-eqz p0, :cond_9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, " kill $("

    if-eq p0, v0, :cond_7

    const/4 v0, 0x2

    const v3, 0x7f09012c

    if-eq p0, v0, :cond_5

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_4

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hijacker/MainActivity;->busybox:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " kill "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/hijacker/Shell;->runOne(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lcom/hijacker/ReaverFragment;->stopReaver()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/hijacker/MainActivity;->busybox:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/hijacker/MainActivity;->busybox:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " pidof reaver)"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/hijacker/Shell;->runOne(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    sget p0, Lcom/hijacker/MainActivity;->currentFragment:I

    if-ne p0, v3, :cond_3

    new-instance p0, Lcom/hijacker/MainActivity$7;

    invoke-direct {p0}, Lcom/hijacker/MainActivity$7;-><init>()V

    invoke-static {p0}, Lcom/hijacker/MainActivity;->runInHandler(Ljava/lang/Runnable;)V

    :cond_3
    sput-boolean v1, Lcom/hijacker/MDKFragment;->ados:Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/hijacker/MainActivity;->busybox:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/hijacker/MainActivity;->busybox:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " pidof mdk3dos)"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/hijacker/Shell;->runOne(Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/hijacker/CrackFragment;->stopCracking()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/hijacker/MainActivity;->busybox:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/hijacker/MainActivity;->busybox:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " pidof aircrack-ng)"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/hijacker/Shell;->runOne(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    sget p0, Lcom/hijacker/MainActivity;->currentFragment:I

    if-ne p0, v3, :cond_6

    new-instance p0, Lcom/hijacker/MainActivity$6;

    invoke-direct {p0}, Lcom/hijacker/MainActivity$6;-><init>()V

    invoke-static {p0}, Lcom/hijacker/MainActivity;->runInHandler(Ljava/lang/Runnable;)V

    :cond_6
    sput-boolean v1, Lcom/hijacker/MDKFragment;->bf:Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/hijacker/MainActivity;->busybox:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/hijacker/MainActivity;->busybox:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " pidof mdk3bf)"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/hijacker/Shell;->runOne(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    new-instance p0, Lcom/hijacker/MainActivity$5;

    invoke-direct {p0}, Lcom/hijacker/MainActivity$5;-><init>()V

    invoke-static {p0}, Lcom/hijacker/MainActivity;->runInHandler(Ljava/lang/Runnable;)V

    sget p0, Lcom/hijacker/MainActivity;->deauthWait:I

    sput p0, Lcom/hijacker/MainActivity;->progress_int:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/hijacker/MainActivity;->busybox:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/hijacker/MainActivity;->busybox:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pidof aireplay-ng)"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/hijacker/Shell;->runOne(Ljava/lang/String;)V

    sget-object p0, Lcom/hijacker/IsolatedFragment;->is_ap:Lcom/hijacker/AP;

    if-nez p0, :cond_8

    sget p0, Lcom/hijacker/MainActivity;->aireplay_running:I

    if-ne p0, v0, :cond_8

    invoke-static {}, Lcom/hijacker/Airodump;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-static {}, Lcom/hijacker/Airodump;->startClean()V

    :cond_8
    sget-object p0, Lcom/hijacker/AP;->currentTargetDeauth:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    sput v1, Lcom/hijacker/MainActivity;->aireplay_running:I

    :goto_0
    new-instance p0, Lcom/hijacker/MainActivity$8;

    invoke-direct {p0}, Lcom/hijacker/MainActivity$8;-><init>()V

    invoke-static {p0}, Lcom/hijacker/MainActivity;->runInHandler(Ljava/lang/Runnable;)V

    return-void

    :cond_9
    invoke-static {}, Lcom/hijacker/Airodump;->stop()V

    return-void
.end method

.method public static stopWPA()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/hijacker/MainActivity;->wpacheckcont:Z

    sget-object v0, Lcom/hijacker/MainActivity;->wpa_thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method


# virtual methods
.method checkForUpdate(Z)V
    .locals 13

    const-string v0, "\n"

    const-string v1, " "

    if-eqz p1, :cond_0

    new-instance v2, Lcom/hijacker/MainActivity$11;

    invoke-direct {v2, p0}, Lcom/hijacker/MainActivity$11;-><init>(Lcom/hijacker/MainActivity;)V

    invoke-static {v2}, Lcom/hijacker/MainActivity;->runInHandler(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v2, -0x1

    :try_start_0
    new-instance v3, Ljava/net/URL;

    const-string v4, "https://api.github.com/repos/chrisk44/Hijacker/releases"

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;

    const/16 v4, 0x1388

    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    new-instance v4, Landroid/util/JsonReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v4}, Landroid/util/JsonReader;->beginArray()V

    invoke-virtual {v4}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v4}, Landroid/util/JsonReader;->beginObject()V

    const/4 v3, 0x0

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    :cond_1
    :goto_0
    invoke-virtual {v4}, Landroid/util/JsonReader;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {v4}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x53ef8c7d

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eq v9, v10, :cond_4

    const v10, -0x2d89dbf0

    if-eq v9, v10, :cond_3

    const v10, 0x2e39a2

    if-eq v9, v10, :cond_2

    goto :goto_1

    :cond_2
    const-string v9, "body"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    const-string v9, "tag_name"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    goto :goto_2

    :cond_4
    const-string v9, "assets"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x2

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v8, -0x1

    :goto_2
    if-eqz v8, :cond_a

    if-eq v8, v12, :cond_9

    if-eq v8, v11, :cond_6

    invoke-virtual {v4}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    :cond_6
    invoke-virtual {v4}, Landroid/util/JsonReader;->beginArray()V

    invoke-virtual {v4}, Landroid/util/JsonReader;->beginObject()V

    :goto_3
    invoke-virtual {v4}, Landroid/util/JsonReader;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v4}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "browser_download_url"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v4}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_7
    invoke-virtual {v4}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_3

    :cond_8
    invoke-virtual {v4}, Landroid/util/JsonReader;->endObject()V

    invoke-virtual {v4}, Landroid/util/JsonReader;->endArray()V

    goto :goto_0

    :cond_9
    invoke-virtual {v4}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v7, v3

    goto :goto_0

    :cond_a
    invoke-virtual {v4}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v4}, Landroid/util/JsonReader;->close()V

    sget-object v4, Lcom/hijacker/MainActivity;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    if-eqz v6, :cond_d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f100189

    invoke-virtual {p0, v8}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f1000c8

    invoke-virtual {p0, v4}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f100068

    invoke-virtual {p0, v4}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/hijacker/MainActivity;->versionName:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v7, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nExtra Information:\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_c
    new-instance v1, Lcom/hijacker/CustomDialog;

    invoke-direct {v1}, Lcom/hijacker/CustomDialog;-><init>()V

    const v4, 0x7f10018a

    invoke-virtual {p0, v4}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/hijacker/CustomDialog;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/hijacker/CustomDialog;->setMessage(Ljava/lang/String;)V

    const v0, 0x7f100086

    invoke-virtual {p0, v0}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/hijacker/MainActivity$12;

    invoke-direct {v4, p0, v6}, Lcom/hijacker/MainActivity$12;-><init>(Lcom/hijacker/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v4}, Lcom/hijacker/CustomDialog;->setPositiveButton(Ljava/lang/String;Ljava/lang/Runnable;)V

    const v0, 0x7f10003e

    invoke-virtual {p0, v0}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Lcom/hijacker/CustomDialog;->setNeutralButton(Ljava/lang/String;Ljava/lang/Runnable;)V

    new-instance v0, Lcom/hijacker/MainActivity$13;

    invoke-direct {v0, p0, v1}, Lcom/hijacker/MainActivity$13;-><init>(Lcom/hijacker/MainActivity;Lcom/hijacker/CustomDialog;)V

    invoke-static {v0}, Lcom/hijacker/MainActivity;->runInHandler(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_d
    if-eqz p1, :cond_e

    sget-object v0, Lcom/hijacker/MainActivity;->rootView:Landroid/view/View;

    const v1, 0x7f100029

    invoke-virtual {p0, v1}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_e
    :goto_4
    if-eqz p1, :cond_11

    new-instance p1, Lcom/hijacker/MainActivity$14;

    invoke-direct {p1, p0}, Lcom/hijacker/MainActivity$14;-><init>(Lcom/hijacker/MainActivity;)V

    goto :goto_5

    :cond_f
    :try_start_1
    const-string v0, "HIJACKER/UpdateCheck"

    const-string v1, "No releases found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "HIJACKER/update"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_10

    sget-object v0, Lcom/hijacker/MainActivity;->rootView:Landroid/view/View;

    const v1, 0x7f100187

    invoke-virtual {p0, v1}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_10
    if-eqz p1, :cond_11

    new-instance p1, Lcom/hijacker/MainActivity$14;

    invoke-direct {p1, p0}, Lcom/hijacker/MainActivity$14;-><init>(Lcom/hijacker/MainActivity;)V

    :goto_5
    invoke-static {p1}, Lcom/hijacker/MainActivity;->runInHandler(Ljava/lang/Runnable;)V

    :cond_11
    return-void

    :goto_6
    if-eqz p1, :cond_12

    new-instance p1, Lcom/hijacker/MainActivity$14;

    invoke-direct {p1, p0}, Lcom/hijacker/MainActivity$14;-><init>(Lcom/hijacker/MainActivity;)V

    invoke-static {p1}, Lcom/hijacker/MainActivity;->runInHandler(Ljava/lang/Runnable;)V

    :cond_12
    throw v0
.end method

.method extract(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/hijacker/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/high16 v0, 0x100000

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    if-eqz p3, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "chmod 755 "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hijacker/Shell;->runOne(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "HIJACKER/FileProvider"

    const-string p3, "Exception copying from assets"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method

.method internetAvailable()Z
    .locals 5

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/hijacker/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public main()V
    .locals 1

    sget-object v0, Lcom/hijacker/MainActivity;->enable_monMode:Ljava/lang/String;

    invoke-static {v0}, Lcom/hijacker/Shell;->runOne(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/hijacker/MainActivity;->stop(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/hijacker/MainActivity;->stop(I)V

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/hijacker/MainActivity;->stop(I)V

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/hijacker/MainActivity;->stop(I)V

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/hijacker/MainActivity;->stop(I)V

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/hijacker/MainActivity;->stop(I)V

    sget-boolean v0, Lcom/hijacker/MainActivity;->airOnStartup:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hijacker/Airodump;->startClean()V

    :cond_0
    return-void
.end method

.method public onAPStats(Landroid/view/View;)V
    .locals 2

    new-instance p1, Lcom/hijacker/StatsDialog;

    invoke-direct {p1}, Lcom/hijacker/StatsDialog;-><init>()V

    sget-object v0, Lcom/hijacker/MainActivity;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v1, "StatsDialog"

    invoke-virtual {p1, v0, v1}, Lcom/hijacker/StatsDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public onCopy(Landroid/view/View;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/hijacker/MainActivity;->copy(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public onCrack(Landroid/view/View;)V
    .locals 1

    sget-object v0, Lcom/hijacker/MainActivity;->wpa_thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hijacker/MainActivity;->stopWPA()V

    sget-object p1, Lcom/hijacker/IsolatedFragment;->is_ap:Lcom/hijacker/AP;

    invoke-static {p1}, Lcom/hijacker/Airodump;->startClean(Lcom/hijacker/AP;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/hijacker/IsolatedFragment;->is_ap:Lcom/hijacker/AP;

    invoke-virtual {v0}, Lcom/hijacker/AP;->crack()V

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f100174

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/hijacker/MainActivity$1;

    invoke-direct {p1, p0}, Lcom/hijacker/MainActivity$1;-><init>(Lcom/hijacker/MainActivity;)V

    invoke-static {p1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    new-instance p1, Lcom/hijacker/MainActivity$MyListAdapter;

    invoke-direct {p1, p0}, Lcom/hijacker/MainActivity$MyListAdapter;-><init>(Lcom/hijacker/MainActivity;)V

    sput-object p1, Lcom/hijacker/MainActivity;->adapter:Lcom/hijacker/MainActivity$MyListAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/hijacker/MainActivity$MyListAdapter;->setNotifyOnChange(Z)V

    new-instance p1, Lcom/hijacker/MainActivity$CustomActionAdapter;

    invoke-direct {p1, p0}, Lcom/hijacker/MainActivity$CustomActionAdapter;-><init>(Lcom/hijacker/MainActivity;)V

    sput-object p1, Lcom/hijacker/MainActivity;->custom_action_adapter:Lcom/hijacker/MainActivity$CustomActionAdapter;

    invoke-virtual {p1, v0}, Lcom/hijacker/MainActivity$CustomActionAdapter;->setNotifyOnChange(Z)V

    new-instance p1, Lcom/hijacker/MainActivity$FileExplorerAdapter;

    invoke-direct {p1, p0}, Lcom/hijacker/MainActivity$FileExplorerAdapter;-><init>(Lcom/hijacker/MainActivity;)V

    sput-object p1, Lcom/hijacker/MainActivity;->file_explorer_adapter:Lcom/hijacker/MainActivity$FileExplorerAdapter;

    invoke-virtual {p1, v0}, Lcom/hijacker/MainActivity$FileExplorerAdapter;->setNotifyOnChange(Z)V

    const p1, 0x7f0c001c

    invoke-virtual {p0, p1}, Lcom/hijacker/MainActivity;->setContentView(I)V

    new-instance p1, Lcom/hijacker/MainActivity$SetupTask;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/hijacker/MainActivity$SetupTask;-><init>(Lcom/hijacker/MainActivity;Lcom/hijacker/MainActivity$1;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Lcom/hijacker/MainActivity$SetupTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    sput-object p1, Lcom/hijacker/MainActivity;->menu:Landroid/view/Menu;

    sget-object v0, Lcom/hijacker/MainActivity;->pref:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "running_on_wearos"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/hijacker/MainActivity;->iswatch:Z

    invoke-virtual {p0}, Lcom/hijacker/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v2, 0x7f0d0002

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    sget-boolean v0, Lcom/hijacker/MainActivity;->airOnStartup:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f0800a6

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f100174

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_0
    sget-boolean v0, Lcom/hijacker/MainActivity;->iswatch:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return v2
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/hijacker/MainActivity;->notif_on:Z

    sget-object v1, Lcom/hijacker/MainActivity;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->cancelAll()V

    invoke-static {}, Lcom/hijacker/CustomAction;->save()V

    iget-object v1, p0, Lcom/hijacker/MainActivity;->watchdogTask:Lcom/hijacker/WatchdogTask;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Lcom/hijacker/WatchdogTask;->cancel(Z)Z

    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/hijacker/MainActivity;->stop(I)V

    invoke-static {v2}, Lcom/hijacker/MainActivity;->stop(I)V

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/hijacker/MainActivity;->stop(I)V

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/hijacker/MainActivity;->stop(I)V

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/hijacker/MainActivity;->stop(I)V

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/hijacker/MainActivity;->stop(I)V

    sget-object v1, Lcom/hijacker/MainActivity;->disable_monMode:Ljava/lang/String;

    invoke-static {v1}, Lcom/hijacker/Shell;->runOne(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-static {}, Lcom/hijacker/RootFile;->finish()V

    invoke-static {}, Lcom/hijacker/Shell;->exitAll()V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/hijacker/PersistenceService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/hijacker/MainActivity;->stopService(Landroid/content/Intent;)Z

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public onDisconnect(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/hijacker/MainActivity;->stop(I)V

    sget-object p1, Lcom/hijacker/IsolatedFragment;->is_ap:Lcom/hijacker/AP;

    iget-object p1, p1, Lcom/hijacker/AP;->mac:Ljava/lang/String;

    invoke-static {p1}, Lcom/hijacker/MainActivity;->startAireplay(Ljava/lang/String;)V

    const p1, 0x7f100083

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onDos(Landroid/view/View;)V
    .locals 1

    sget-boolean v0, Lcom/hijacker/MDKFragment;->ados:Z

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f100085

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    const/4 p1, 0x3

    invoke-static {p1}, Lcom/hijacker/MainActivity;->stop(I)V

    const/4 p1, 0x0

    sput-boolean p1, Lcom/hijacker/MDKFragment;->ados:Z

    goto :goto_0

    :cond_0
    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f100174

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    sget-object p1, Lcom/hijacker/IsolatedFragment;->is_ap:Lcom/hijacker/AP;

    iget-object p1, p1, Lcom/hijacker/AP;->mac:Ljava/lang/String;

    invoke-static {p1}, Lcom/hijacker/MainActivity;->startAdos(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/hijacker/MainActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const p2, 0x800003

    invoke-virtual {p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hijacker/MainActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/hijacker/MainActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result p1

    if-le p1, p2, :cond_1

    sget-object p1, Lcom/hijacker/MainActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/hijacker/CustomDialog;

    invoke-direct {p1}, Lcom/hijacker/CustomDialog;-><init>()V

    const v0, 0x7f100097

    invoke-virtual {p0, v0}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hijacker/CustomDialog;->setTitle(Ljava/lang/String;)V

    const v0, 0x7f100096

    invoke-virtual {p0, v0}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hijacker/CustomDialog;->setMessage(Ljava/lang/String;)V

    const v0, 0x7f100095

    invoke-virtual {p0, v0}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/hijacker/MainActivity$9;

    invoke-direct {v1, p0}, Lcom/hijacker/MainActivity$9;-><init>(Lcom/hijacker/MainActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/hijacker/CustomDialog;->setPositiveButton(Ljava/lang/String;Ljava/lang/Runnable;)V

    const v0, 0x7f10003e

    invoke-virtual {p0, v0}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/hijacker/CustomDialog;->setNegativeButton(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/hijacker/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "CustomDialog for exit"

    invoke-virtual {p1, v0, v1}, Lcom/hijacker/CustomDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    return p2

    :cond_2
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f10010f

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    invoke-static {}, Lcom/hijacker/Airodump;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v2}, Lcom/hijacker/MainActivity;->stop(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/hijacker/Airodump;->start()V

    :goto_0
    return v3

    :sswitch_1
    invoke-static {v3}, Lcom/hijacker/MainActivity;->stop(I)V

    return v3

    :sswitch_2
    sget p1, Lcom/hijacker/MainActivity;->currentFragment:I

    const v0, 0x7f09012e

    if-eq p1, v0, :cond_1

    sget-object p1, Lcom/hijacker/MainActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f0900cb

    new-instance v1, Lcom/hijacker/SettingsFragment;

    invoke-direct {v1}, Lcom/hijacker/SettingsFragment;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    const/16 v0, 0x1001

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_1
    return v3

    :sswitch_3
    invoke-static {v2}, Lcom/hijacker/MainActivity;->stop(I)V

    invoke-static {}, Lcom/hijacker/Tile;->clear()V

    invoke-static {}, Lcom/hijacker/Tile;->onCountsChanged()V

    invoke-static {}, Lcom/hijacker/Airodump;->startClean()V

    return v3

    :sswitch_4
    new-instance p1, Lcom/hijacker/FiltersDialog;

    invoke-direct {p1}, Lcom/hijacker/FiltersDialog;-><init>()V

    sget-object v0, Lcom/hijacker/MainActivity;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v1, "FiltersDialog"

    invoke-virtual {p1, v0, v1}, Lcom/hijacker/FiltersDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return v3

    :sswitch_5
    new-instance p1, Lcom/hijacker/ExportDialog;

    invoke-direct {p1}, Lcom/hijacker/ExportDialog;-><init>()V

    sget-object v0, Lcom/hijacker/MainActivity;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v1, "ExportDialog"

    invoke-virtual {p1, v0, v1}, Lcom/hijacker/ExportDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return v3

    :sswitch_6
    sget-object v0, Lcom/hijacker/MainActivity;->last_airodump:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/hijacker/MainActivity;->rootView:Landroid/view/View;

    invoke-static {v0, v3}, Lcom/hijacker/MainActivity;->copy(Ljava/lang/String;Landroid/view/View;)V

    :goto_1
    :sswitch_7
    sget-object v0, Lcom/hijacker/MainActivity;->last_aireplay:Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_3
    sget-object v3, Lcom/hijacker/MainActivity;->rootView:Landroid/view/View;

    invoke-static {v0, v3}, Lcom/hijacker/MainActivity;->copy(Ljava/lang/String;Landroid/view/View;)V

    :goto_2
    :sswitch_8
    sget-object v0, Lcom/hijacker/MainActivity;->last_mdk:Ljava/lang/String;

    if-nez v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    :cond_4
    sget-object v3, Lcom/hijacker/MainActivity;->rootView:Landroid/view/View;

    invoke-static {v0, v3}, Lcom/hijacker/MainActivity;->copy(Ljava/lang/String;Landroid/view/View;)V

    :goto_3
    :sswitch_9
    sget-object v0, Lcom/hijacker/MainActivity;->last_reaver:Ljava/lang/String;

    if-nez v0, :cond_5

    invoke-virtual {p0, v1}, Lcom/hijacker/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_4

    :cond_5
    sget-object v1, Lcom/hijacker/MainActivity;->rootView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/hijacker/MainActivity;->copy(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_4

    :sswitch_a
    sget-object p1, Lcom/hijacker/MainActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    sget-object p1, Lcom/hijacker/MainActivity;->menu:Landroid/view/Menu;

    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return v3

    :sswitch_b
    iget-object p1, p0, Lcom/hijacker/MainActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v0, 0x800003

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    return v3

    :goto_4
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_b
        0x7f090052 -> :sswitch_a
        0x7f09008f -> :sswitch_7
        0x7f090090 -> :sswitch_6
        0x7f090091 -> :sswitch_8
        0x7f090092 -> :sswitch_9
        0x7f0900bc -> :sswitch_5
        0x7f0900c4 -> :sswitch_4
        0x7f090159 -> :sswitch_3
        0x7f09017f -> :sswitch_2
        0x7f09019e -> :sswitch_1
        0x7f0901a0 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/hijacker/MainActivity;->background:Z

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    if-nez p1, :cond_0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/hijacker/MainActivity;->notif_on:Z

    sput-boolean v0, Lcom/hijacker/MainActivity;->background:Z

    sget-object v0, Lcom/hijacker/MainActivity;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    sget-boolean v0, Lcom/hijacker/MainActivity;->show_notif:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/hijacker/MainActivity;->notif_on:Z

    invoke-static {}, Lcom/hijacker/MainActivity;->notification()V

    :cond_0
    return-void
.end method

.method refreshDrawer()V
    .locals 3

    sget-object v0, Lcom/hijacker/MainActivity;->pref:Landroid/content/SharedPreferences;

    const-string v1, "running_on_wearos"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/hijacker/MainActivity;->iswatch:Z

    iget-object v0, p0, Lcom/hijacker/MainActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v1, Lcom/hijacker/MainActivity;->currentFragment:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    sget-boolean v0, Lcom/hijacker/MainActivity;->iswatch:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hijacker/MainActivity;->actionBar:Landroidx/appcompat/app/ActionBar;

    const-string v1, "Menu"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/hijacker/MainActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    new-instance v1, Lcom/hijacker/MainActivity$10;

    invoke-direct {v1, p0}, Lcom/hijacker/MainActivity$10;-><init>(Lcom/hijacker/MainActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/hijacker/MainActivity;->actionBar:Landroidx/appcompat/app/ActionBar;

    sget-object v1, Lcom/hijacker/MainActivity;->navTitlesMap:Landroid/util/SparseArray;

    sget v2, Lcom/hijacker/MainActivity;->currentFragment:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
