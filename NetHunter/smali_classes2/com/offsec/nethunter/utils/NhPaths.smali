.class public Lcom/offsec/nethunter/utils/NhPaths;
.super Ljava/lang/Object;
.source "NhPaths.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field public static APP:Ljava/lang/String; = null

.field public static APP_DATABASE_PATH:Ljava/lang/String; = null

.field public static APP_INITD_PATH:Ljava/lang/String; = null

.field public static APP_PATH:Ljava/lang/String; = null

.field public static APP_SCRIPTS_BIN_PATH:Ljava/lang/String; = null

.field public static APP_SCRIPTS_PATH:Ljava/lang/String; = null

.field public static APP_SD_FILES_IMG_PATH:Ljava/lang/String; = null

.field public static APP_SD_FILES_PATH:Ljava/lang/String; = null

.field public static APP_SD_SQLBACKUP_PATH:Ljava/lang/String; = null

.field public static ARCH_FOLDER:Ljava/lang/String; = null

.field private static BASE_PATH:Ljava/lang/String; = null

.field public static BUSYBOX:Ljava/lang/String; = null

.field public static CHROOT_INITD_SCRIPT_PATH:Ljava/lang/String; = null

.field public static CHROOT_SD_PATH:Ljava/lang/String; = null

.field public static CHROOT_SUDO:Ljava/lang/String; = null

.field public static CHROOT_SYMLINK_PATH:Ljava/lang/String; = null

.field public static GPS_PORT:I = 0x0

.field public static MAGISK_DB_PATH:Ljava/lang/String; = null

.field public static NH_SD_FOLDER_NAME:Ljava/lang/String; = null

.field public static NH_SYSTEM_PATH:Ljava/lang/String; = null

.field public static SD_PATH:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "NhPaths"

.field private static instance:Lcom/offsec/nethunter/utils/NhPaths;


# instance fields
.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "com.offsec.nethunter"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/utils/NhPaths;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    sput-object v1, Lcom/offsec/nethunter/utils/NhPaths;->APP:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "/data/data/"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/offsec/nethunter/utils/NhPaths;->APP:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/offsec/nethunter/utils/NhPaths;->APP_PATH:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/offsec/nethunter/utils/NhPaths;->APP_PATH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/databases"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/offsec/nethunter/utils/NhPaths;->APP_DATABASE_PATH:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/offsec/nethunter/utils/NhPaths;->APP_PATH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/etc/init.d"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/offsec/nethunter/utils/NhPaths;->APP_INITD_PATH:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/offsec/nethunter/utils/NhPaths;->APP_PATH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/scripts"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/bin"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_BIN_PATH:Ljava/lang/String;

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->getSdcardPath()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/offsec/nethunter/utils/NhPaths;->SD_PATH:Ljava/lang/String;

    const-string p1, "nh_files"

    sput-object p1, Lcom/offsec/nethunter/utils/NhPaths;->NH_SD_FOLDER_NAME:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/offsec/nethunter/utils/NhPaths;->SD_PATH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/offsec/nethunter/utils/NhPaths;->NH_SD_FOLDER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/diskimage"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_IMG_PATH:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/nh_sql_backups"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_SQLBACKUP_PATH:Ljava/lang/String;

    const-string p1, "/data/local"

    sput-object p1, Lcom/offsec/nethunter/utils/NhPaths;->BASE_PATH:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/offsec/nethunter/utils/NhPaths;->BASE_PATH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/nhsystem"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/offsec/nethunter/utils/NhPaths;->NH_SYSTEM_PATH:Ljava/lang/String;

    iget-object p1, p0, Lcom/offsec/nethunter/utils/NhPaths;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "chroot_arch"

    const-string v1, "kali-arm64"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/offsec/nethunter/utils/NhPaths;->ARCH_FOLDER:Ljava/lang/String;

    const-string p1, "/usr/bin/sudo"

    sput-object p1, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_SUDO:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/offsec/nethunter/utils/NhPaths;->APP_INITD_PATH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/80postservices"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_INITD_SCRIPT_PATH:Ljava/lang/String;

    const-string p1, "/sdcard"

    sput-object p1, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_SD_PATH:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/offsec/nethunter/utils/NhPaths;->NH_SYSTEM_PATH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/kalifs"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_SYMLINK_PATH:Ljava/lang/String;

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->getBusyboxPath()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/offsec/nethunter/utils/NhPaths;->BUSYBOX:Ljava/lang/String;

    const-string p1, "/data/adb/magisk.db"

    sput-object p1, Lcom/offsec/nethunter/utils/NhPaths;->MAGISK_DB_PATH:Ljava/lang/String;

    const/16 p1, 0x277e

    sput p1, Lcom/offsec/nethunter/utils/NhPaths;->GPS_PORT:I

    return-void
.end method

.method public static CHROOT_PATH()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/offsec/nethunter/utils/NhPaths;->NH_SYSTEM_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/offsec/nethunter/utils/NhPaths;->ARCH_FOLDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBusyboxPath()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "/system/xbin/busybox_nh"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v4, "/system/bin/busybox_nh"

    aput-object v4, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_BIN_PATH:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/busybox_nh"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v2, v1, v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/utils/NhPaths;
    .locals 2

    const-class v0, Lcom/offsec/nethunter/utils/NhPaths;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/offsec/nethunter/utils/NhPaths;->instance:Lcom/offsec/nethunter/utils/NhPaths;

    if-nez v1, :cond_0

    new-instance v1, Lcom/offsec/nethunter/utils/NhPaths;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/utils/NhPaths;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/offsec/nethunter/utils/NhPaths;->instance:Lcom/offsec/nethunter/utils/NhPaths;

    :cond_0
    sget-object p0, Lcom/offsec/nethunter/utils/NhPaths;->instance:Lcom/offsec/nethunter/utils/NhPaths;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getSdcardPath()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeTermTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "echo -ne \"\\033]0;"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\\007\" && clear;"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static showMessage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    const/16 p1, 0x31

    invoke-virtual {p0, p1, v0, v0}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static showMessage_long(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    const/16 p1, 0x31

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/utils/NhPaths;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    const-string v0, "chroot_arch"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "kali-arm64"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/offsec/nethunter/utils/NhPaths;->ARCH_FOLDER:Ljava/lang/String;

    :cond_0
    return-void
.end method
