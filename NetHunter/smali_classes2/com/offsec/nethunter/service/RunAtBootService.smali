.class public Lcom/offsec/nethunter/service/RunAtBootService;
.super Landroidx/core/app/JobIntentService;
.source "RunAtBootService.java"


# static fields
.field static final SERVICE_JOB_ID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Nethunter: Startup"


# instance fields
.field private n:Landroidx/core/app/NotificationCompat$Builder;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/core/app/JobIntentService;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/offsec/nethunter/service/RunAtBootService;->n:Landroidx/core/app/NotificationCompat$Builder;

    return-void
.end method

.method private createNotificationChannel()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "Nethunter Boot Check Service"

    const/4 v2, 0x4

    const-string v3, "BOOT_CHANNEL"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/service/RunAtBootService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method private doNotification(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/service/RunAtBootService;->n:Landroidx/core/app/NotificationCompat$Builder;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/service/RunAtBootService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "BOOT_CHANNEL"

    invoke-direct {v0, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/offsec/nethunter/service/RunAtBootService;->n:Landroidx/core/app/NotificationCompat$Builder;

    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/service/RunAtBootService;->n:Landroidx/core/app/NotificationCompat$Builder;

    new-instance v1, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const-string v0, "Nethunter: Startup"

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const v0, 0x7f0800a1

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    const-string p1, "notification"

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/service/RunAtBootService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/offsec/nethunter/service/RunAtBootService;->n:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/16 v1, 0x3e7

    invoke-virtual {p1, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_1
    return-void
.end method

.method public static enqueueWork(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-class v0, Lcom/offsec/nethunter/service/RunAtBootService;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1}, Lcom/offsec/nethunter/service/RunAtBootService;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroidx/core/app/JobIntentService;->onCreate()V

    invoke-virtual {p0}, Lcom/offsec/nethunter/service/RunAtBootService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/offsec/nethunter/utils/NhPaths;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/utils/NhPaths;

    invoke-direct {p0}, Lcom/offsec/nethunter/service/RunAtBootService;->createNotificationChannel()V

    invoke-virtual {p0}, Lcom/offsec/nethunter/service/RunAtBootService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.offsec.nethunter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/service/RunAtBootService;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroidx/core/app/JobIntentService;->onDestroy()V

    return-void
.end method

.method protected onHandleIntent()V
    .locals 9

    const-string v0, "Doing boot checks..."

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/service/RunAtBootService;->doNotification(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "No root access is granted."

    const-string v2, "ROOT"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "No busybox is found."

    const-string v3, "BUSYBOX"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Chroot is not yet installed."

    const-string v4, "CHROOT"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/offsec/nethunter/utils/CheckForRoot;->isRoot()Z

    move-result v1

    const-string v5, "OK."

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lcom/offsec/nethunter/utils/CheckForRoot;->isBusyboxInstalled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v1, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v1}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iget-object v6, p0, Lcom/offsec/nethunter/service/RunAtBootService;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v7, "SELinuxOnBoot"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v6}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    const-string v7, "[ ! \"$(getenforce | grep Permissive)\" ] && setenforce 0"

    invoke-virtual {v6, v7}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/offsec/nethunter/utils/NhPaths;->BUSYBOX:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " run-parts "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/offsec/nethunter/utils/NhPaths;->APP_INITD_PATH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/chrootmgr -c \"status\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootReturnValue(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "rm -rf "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/tmp/.X1*"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v1, "Make sure the above requirements are met."

    goto :goto_0

    :cond_5
    const-string v1, "Boot completed.\nEveryting is fine and Chroot has been started!"

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Root: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nBusybox: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nChroot: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/service/RunAtBootService;->doNotification(Ljava/lang/String;)V

    return-void
.end method

.method protected onHandleWork(Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0}, Lcom/offsec/nethunter/service/RunAtBootService;->onHandleIntent()V

    return-void
.end method
