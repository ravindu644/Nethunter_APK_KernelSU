.class public Lcom/offsec/nethunter/AudioPlaybackService;
.super Landroid/app/Service;
.source "AudioPlaybackService.java"

# interfaces
.implements Lcom/offsec/nethunter/AudioPlaybackWorker$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/AudioPlaybackService$LocalBinder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ACTION_TOGGLE:Ljava/lang/String;

.field public static final KEY_BUFFER_HEADROOM:Ljava/lang/String; = "buffer_ms_ahead"

.field public static final KEY_TARGET_LATENCY:Ljava/lang/String; = "buffer_ms_behind"

.field private static final NOTIFICATION:I = 0x7f1101a8


# instance fields
.field private final binder:Landroid/os/IBinder;

.field private handler:Landroid/os/Handler;

.field private headroomUsec:J

.field private latencyUsec:J

.field private notifManager:Landroid/app/NotificationManager;

.field private final playState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/offsec/nethunter/AudioPlayState;",
            ">;"
        }
    .end annotation
.end field

.field private playWorker:Lcom/offsec/nethunter/AudioPlaybackWorker;

.field private playWorkerThread:Ljava/lang/Thread;

.field private sharedPrefs:Landroid/content/SharedPreferences;

.field private togglePendingIntent:Landroid/app/PendingIntent;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/offsec/nethunter/AudioPlaybackService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".TOGGLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/offsec/nethunter/AudioPlaybackService;->ACTION_TOGGLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/offsec/nethunter/AudioPlaybackService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/AudioPlaybackService$LocalBinder;-><init>(Lcom/offsec/nethunter/AudioPlaybackService;)V

    iput-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackService;->binder:Landroid/os/IBinder;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackService;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackService;->playWorker:Lcom/offsec/nethunter/AudioPlaybackWorker;

    const-wide/32 v0, 0x1e848

    iput-wide v0, p0, Lcom/offsec/nethunter/AudioPlaybackService;->headroomUsec:J

    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Lcom/offsec/nethunter/AudioPlaybackService;->latencyUsec:J

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackService;->playState:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method private createNotification(Lcom/offsec/nethunter/AudioPlayState;)Landroid/app/Notification;
    .locals 6

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/offsec/nethunter/AudioFragment;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sget-object v1, Lcom/offsec/nethunter/AudioPlaybackService$1;->$SwitchMap$com$offsec$nethunter$AudioPlayState:[I

    invoke-virtual {p1}, Lcom/offsec/nethunter/AudioPlayState;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v3, 0x2

    const v4, 0x7f110051

    if-eq p1, v3, :cond_3

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    const/4 v3, 0x4

    if-eq p1, v3, :cond_1

    const/4 v3, 0x5

    if-ne p1, v3, :cond_0

    const p1, 0x7f1101ad

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    const p1, 0x7f1101aa

    goto :goto_0

    :cond_2
    const p1, 0x7f1101a9

    goto :goto_0

    :cond_3
    const p1, 0x7f1101ab

    goto :goto_0

    :cond_4
    const p1, 0x7f1101ac

    const v4, 0x7f11004f

    :goto_0
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/AudioPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    const p1, 0x7f1101a8

    invoke-virtual {p0, p1, v3}, Lcom/offsec/nethunter/AudioPlaybackService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/offsec/nethunter/AudioPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f0c00a2

    invoke-direct {v2, v3, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v4}, Lcom/offsec/nethunter/AudioPlaybackService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f0904a1

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/offsec/nethunter/AudioPlaybackService;->togglePendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v3, 0x7f090117

    invoke-virtual {v2, v3, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    const v4, 0x7f1101ca

    invoke-virtual {p0, v4}, Lcom/offsec/nethunter/AudioPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroidx/core/app/NotificationCompat$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    const v3, 0x7f1101a7

    invoke-virtual {p0, v3}, Lcom/offsec/nethunter/AudioPlaybackService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const v0, 0x7f0800a1

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method private getBufferSizePref(Ljava/lang/String;J)J
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackService;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackService;->sharedPrefs:Landroid/content/SharedPreferences;

    const/16 v1, -0x3e8

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p1, v1, :cond_0

    return-wide p2

    :cond_0
    int-to-long p1, p1

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    return-wide p1

    :catch_1
    return-wide p2
.end method

.method private notifyState(Lcom/offsec/nethunter/AudioPlayState;)V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackService;->playState:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackService;->notifManager:Landroid/app/NotificationManager;

    const v1, 0x7f1101a8

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/AudioPlaybackService;->createNotification(Lcom/offsec/nethunter/AudioPlayState;)Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private stopWorker()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackService;->playWorker:Lcom/offsec/nethunter/AudioPlaybackWorker;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/offsec/nethunter/AudioPlaybackWorker;->stop()V

    iput-object v1, p0, Lcom/offsec/nethunter/AudioPlaybackService;->playWorker:Lcom/offsec/nethunter/AudioPlaybackWorker;

    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackService;->playWorkerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iput-object v1, p0, Lcom/offsec/nethunter/AudioPlaybackService;->playWorkerThread:Ljava/lang/Thread;

    :cond_1
    return-void
.end method


# virtual methods
.method public getAutostartPref()Z
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackService;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "auto_start"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBufferHeadroom()J
    .locals 2

    iget-wide v0, p0, Lcom/offsec/nethunter/AudioPlaybackService;->headroomUsec:J

    return-wide v0
.end method

.method public getError()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackService;->playWorker:Lcom/offsec/nethunter/AudioPlaybackWorker;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/offsec/nethunter/AudioPlaybackWorker;->getError()Ljava/lang/Throwable;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPlayState()Lcom/offsec/nethunter/AudioPlayState;
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackService;->playState:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/AudioPlayState;

    return-object v0
.end method

.method public getPortPref()I
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackService;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "port"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getServerPref()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackService;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "server"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTargetLatency()J
    .locals 2

    iget-wide v0, p0, Lcom/offsec/nethunter/AudioPlaybackService;->latencyUsec:J

    return-wide v0
.end method

.method public isStartable()Z
    .locals 2

    invoke-virtual {p0}, Lcom/offsec/nethunter/AudioPlaybackService;->getPlayState()Lcom/offsec/nethunter/AudioPlayState;

    move-result-object v0

    sget-object v1, Lcom/offsec/nethunter/AudioPlayState;->STOPPED:Lcom/offsec/nethunter/AudioPlayState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lcom/offsec/nethunter/AudioPlaybackService;->binder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 5

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackService;->handler:Landroid/os/Handler;

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/AudioPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackService;->notifManager:Landroid/app/NotificationManager;

    const-class v0, Lcom/offsec/nethunter/AudioPlaybackService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/offsec/nethunter/AudioPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/AudioPlaybackService;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "buffer_ms_ahead"

    const-wide/32 v2, 0x1e848

    invoke-direct {p0, v1, v2, v3}, Lcom/offsec/nethunter/AudioPlaybackService;->getBufferSizePref(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/offsec/nethunter/AudioPlaybackService;->headroomUsec:J

    const-string v1, "buffer_ms_behind"

    const-wide/32 v2, 0x7a120

    invoke-direct {p0, v1, v2, v3}, Lcom/offsec/nethunter/AudioPlaybackService;->getBufferSizePref(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/offsec/nethunter/AudioPlaybackService;->latencyUsec:J

    iget-object v1, p0, Lcom/offsec/nethunter/AudioPlaybackService;->playState:Landroidx/lifecycle/MutableLiveData;

    sget-object v2, Lcom/offsec/nethunter/AudioPlayState;->STOPPED:Lcom/offsec/nethunter/AudioPlayState;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v0, Lcom/offsec/nethunter/AudioPlaybackService;->ACTION_TOGGLE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f0902b4

    const/high16 v2, 0x4000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackService;->togglePendingIntent:Landroid/app/PendingIntent;

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/AudioPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "audio:wakelock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackService;->notifManager:Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/NotificationChannel;

    const v2, 0x7f1101ca

    invoke-virtual {p0, v2}, Lcom/offsec/nethunter/AudioPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1101a7

    invoke-virtual {p0, v3}, Lcom/offsec/nethunter/AudioPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 4

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-virtual {p0}, Lcom/offsec/nethunter/AudioPlaybackService;->stop()V

    invoke-direct {p0}, Lcom/offsec/nethunter/AudioPlaybackService;->stopWorker()V

    iget-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const-string v1, "AudioFragment"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iput-object v2, p0, Lcom/offsec/nethunter/AudioPlaybackService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const-string v0, "WakeLock released."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object v2, p0, Lcom/offsec/nethunter/AudioPlaybackService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackService;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/offsec/nethunter/AudioPlaybackService;->handler:Landroid/os/Handler;

    const-string v0, "Handler callbacks removed."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object v2, p0, Lcom/offsec/nethunter/AudioPlaybackService;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackService;->notifManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_2

    const v3, 0x7f1101a8

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    iput-object v2, p0, Lcom/offsec/nethunter/AudioPlaybackService;->notifManager:Landroid/app/NotificationManager;

    :cond_2
    iput-object v2, p0, Lcom/offsec/nethunter/AudioPlaybackService;->togglePendingIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackService;->playState:Landroidx/lifecycle/MutableLiveData;

    sget-object v2, Lcom/offsec/nethunter/AudioPlayState;->STOPPED:Lcom/offsec/nethunter/AudioPlayState;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    const-string v0, "AudioPlaybackService destroyed and cleaned up."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPlaybackBuffering(Lcom/offsec/nethunter/AudioPlaybackWorker;)V
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackService;->playWorker:Lcom/offsec/nethunter/AudioPlaybackWorker;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/offsec/nethunter/AudioPlayState;->BUFFERING:Lcom/offsec/nethunter/AudioPlayState;

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/AudioPlaybackService;->notifyState(Lcom/offsec/nethunter/AudioPlayState;)V

    :cond_0
    return-void
.end method

.method public onPlaybackError(Lcom/offsec/nethunter/AudioPlaybackWorker;Ljava/lang/Throwable;)V
    .locals 0

    iget-object p2, p0, Lcom/offsec/nethunter/AudioPlaybackService;->playWorker:Lcom/offsec/nethunter/AudioPlaybackWorker;

    if-ne p1, p2, :cond_0

    sget-object p1, Lcom/offsec/nethunter/AudioPlayState;->STOPPED:Lcom/offsec/nethunter/AudioPlayState;

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/AudioPlaybackService;->notifyState(Lcom/offsec/nethunter/AudioPlayState;)V

    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroidx/core/app/ServiceCompat;->stopForeground(Landroid/app/Service;I)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/AudioPlaybackService;->stopSelf()V

    :cond_0
    return-void
.end method

.method public onPlaybackStarted(Lcom/offsec/nethunter/AudioPlaybackWorker;)V
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackService;->playWorker:Lcom/offsec/nethunter/AudioPlaybackWorker;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/offsec/nethunter/AudioPlayState;->STARTED:Lcom/offsec/nethunter/AudioPlayState;

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/AudioPlaybackService;->notifyState(Lcom/offsec/nethunter/AudioPlayState;)V

    :cond_0
    return-void
.end method

.method public onPlaybackStopped(Lcom/offsec/nethunter/AudioPlaybackWorker;)V
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackService;->playWorker:Lcom/offsec/nethunter/AudioPlaybackWorker;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/offsec/nethunter/AudioPlayState;->STOPPED:Lcom/offsec/nethunter/AudioPlayState;

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/AudioPlaybackService;->notifyState(Lcom/offsec/nethunter/AudioPlayState;)V

    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroidx/core/app/ServiceCompat;->stopForeground(Landroid/app/Service;I)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/AudioPlaybackService;->stopSelf()V

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    if-eqz p1, :cond_1

    sget-object p2, Lcom/offsec/nethunter/AudioPlaybackService;->ACTION_TOGGLE:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/offsec/nethunter/AudioPlaybackService;->getPlayState()Lcom/offsec/nethunter/AudioPlayState;

    move-result-object p1

    sget-object p2, Lcom/offsec/nethunter/AudioPlayState;->STOPPED:Lcom/offsec/nethunter/AudioPlayState;

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/offsec/nethunter/AudioPlaybackService;->getServerPref()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/offsec/nethunter/AudioPlaybackService;->getPortPref()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/offsec/nethunter/AudioPlaybackService;->play(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/AudioPlaybackService;->stop()V

    :cond_1
    :goto_0
    const/4 p1, 0x2

    return p1
.end method

.method public play(Ljava/lang/String;I)V
    .locals 7

    invoke-virtual {p0}, Lcom/offsec/nethunter/AudioPlaybackService;->isStartable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackService;->playWorker:Lcom/offsec/nethunter/AudioPlaybackWorker;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/offsec/nethunter/AudioPlaybackService;->stopWorker()V

    :cond_0
    new-instance v0, Lcom/offsec/nethunter/AudioPlaybackWorker;

    iget-object v4, p0, Lcom/offsec/nethunter/AudioPlaybackService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v5, p0, Lcom/offsec/nethunter/AudioPlaybackService;->handler:Landroid/os/Handler;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/offsec/nethunter/AudioPlaybackWorker;-><init>(Ljava/lang/String;ILandroid/os/PowerManager$WakeLock;Landroid/os/Handler;Lcom/offsec/nethunter/AudioPlaybackWorker$Listener;)V

    iput-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackService;->playWorker:Lcom/offsec/nethunter/AudioPlaybackWorker;

    iget-wide p1, p0, Lcom/offsec/nethunter/AudioPlaybackService;->headroomUsec:J

    iget-wide v1, p0, Lcom/offsec/nethunter/AudioPlaybackService;->latencyUsec:J

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/offsec/nethunter/AudioPlaybackWorker;->setBufferUsec(JJ)V

    new-instance p1, Ljava/lang/Thread;

    iget-object p2, p0, Lcom/offsec/nethunter/AudioPlaybackService;->playWorker:Lcom/offsec/nethunter/AudioPlaybackWorker;

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/offsec/nethunter/AudioPlaybackService;->playWorkerThread:Ljava/lang/Thread;

    sget-object p1, Lcom/offsec/nethunter/AudioPlayState;->STARTING:Lcom/offsec/nethunter/AudioPlayState;

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/AudioPlaybackService;->createNotification(Lcom/offsec/nethunter/AudioPlayState;)Landroid/app/Notification;

    move-result-object p1

    const p2, 0x7f1101a8

    invoke-virtual {p0, p2, p1}, Lcom/offsec/nethunter/AudioPlaybackService;->startForeground(ILandroid/app/Notification;)V

    sget-object p1, Lcom/offsec/nethunter/AudioPlayState;->STARTING:Lcom/offsec/nethunter/AudioPlayState;

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/AudioPlaybackService;->notifyState(Lcom/offsec/nethunter/AudioPlayState;)V

    iget-object p1, p0, Lcom/offsec/nethunter/AudioPlaybackService;->playWorkerThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/offsec/nethunter/AudioPlaybackService;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/AudioPlaybackService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot start with playState == "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/AudioPlaybackService;->getPlayState()Lcom/offsec/nethunter/AudioPlayState;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public playState()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/offsec/nethunter/AudioPlayState;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackService;->playState:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public setBufferUsec(JJ)V
    .locals 1

    iput-wide p1, p0, Lcom/offsec/nethunter/AudioPlaybackService;->headroomUsec:J

    iput-wide p3, p0, Lcom/offsec/nethunter/AudioPlaybackService;->latencyUsec:J

    iget-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackService;->playWorker:Lcom/offsec/nethunter/AudioPlaybackWorker;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/offsec/nethunter/AudioPlaybackWorker;->setBufferUsec(JJ)V

    :cond_0
    iget-object p1, p0, Lcom/offsec/nethunter/AudioPlaybackService;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "buffer_ms_ahead"

    iget-wide p3, p0, Lcom/offsec/nethunter/AudioPlaybackService;->headroomUsec:J

    invoke-interface {p1, p2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "buffer_ms_behind"

    iget-wide p3, p0, Lcom/offsec/nethunter/AudioPlaybackService;->latencyUsec:J

    invoke-interface {p1, p2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setPrefs(Ljava/lang/String;IZ)V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackService;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "server"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "port"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "auto_start"

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public showNotification()V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackService;->notifManager:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Lcom/offsec/nethunter/AudioPlaybackService;->getPlayState()Lcom/offsec/nethunter/AudioPlayState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/offsec/nethunter/AudioPlaybackService;->createNotification(Lcom/offsec/nethunter/AudioPlayState;)Landroid/app/Notification;

    move-result-object v1

    const v2, 0x7f1101a8

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public stop()V
    .locals 1

    invoke-virtual {p0}, Lcom/offsec/nethunter/AudioPlaybackService;->getPlayState()Lcom/offsec/nethunter/AudioPlayState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/offsec/nethunter/AudioPlayState;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/offsec/nethunter/AudioPlayState;->STOPPING:Lcom/offsec/nethunter/AudioPlayState;

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/AudioPlaybackService;->notifyState(Lcom/offsec/nethunter/AudioPlayState;)V

    :cond_0
    invoke-direct {p0}, Lcom/offsec/nethunter/AudioPlaybackService;->stopWorker()V

    sget-object v0, Lcom/offsec/nethunter/AudioPlayState;->STOPPED:Lcom/offsec/nethunter/AudioPlayState;

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/AudioPlaybackService;->notifyState(Lcom/offsec/nethunter/AudioPlayState;)V

    return-void
.end method
