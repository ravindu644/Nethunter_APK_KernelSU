.class public final Lcom/offsec/nhterm/services/NeoTermService;
.super Landroid/app/Service;
.source "NeoTermService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nhterm/services/NeoTermService$NeoTermBinder;,
        Lcom/offsec/nhterm/services/NeoTermService$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNeoTermService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NeoTermService.kt\ncom/offsec/nhterm/services/NeoTermService\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,278:1\n1#2:279\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0018\u0000 92\u00020\u0001:\u00029:B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018J\u0008\u0010\u001a\u001a\u00020\u001bH\u0003J\u0006\u0010\u001c\u001a\u00020\u001dJ\u0008\u0010\u001e\u001a\u00020\u001fH\u0002J\u0008\u0010 \u001a\u00020\u001bH\u0002J\u0010\u0010!\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020#H\u0002J\u000e\u0010$\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020#J\u0016\u0010%\u001a\u00020\u000e2\u0006\u0010&\u001a\u00020\'2\u0006\u0010\"\u001a\u00020(J\u0012\u0010)\u001a\u0004\u0018\u00010*2\u0006\u0010+\u001a\u00020,H\u0016J\u0008\u0010-\u001a\u00020\u001bH\u0016J\u0008\u0010.\u001a\u00020\u001bH\u0016J \u0010/\u001a\u0002002\u0006\u0010+\u001a\u00020,2\u0006\u00101\u001a\u0002002\u0006\u00102\u001a\u000200H\u0016J\u0008\u00103\u001a\u00020\u001bH\u0002J\u000e\u00104\u001a\u0002002\u0006\u00105\u001a\u00020\u0005J\u000e\u00106\u001a\u0002002\u0006\u00105\u001a\u00020\u000eJ\u0006\u00107\u001a\u00020\u001bJ\u0008\u00108\u001a\u00020\u001bH\u0002R\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0018\u00010\u0008R\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0018\u00010\u000bR\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000e0\u0004j\u0008\u0012\u0004\u0012\u00020\u000e`\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00060\u0010R\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0017\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0014\u00a8\u0006;"
    }
    d2 = {
        "Lcom/offsec/nhterm/services/NeoTermService;",
        "Landroid/app/Service;",
        "()V",
        "mTerminalSessions",
        "Ljava/util/ArrayList;",
        "Lcom/offsec/nhterm/backend/TerminalSession;",
        "Lkotlin/collections/ArrayList;",
        "mWakeLock",
        "Landroid/os/PowerManager$WakeLock;",
        "Landroid/os/PowerManager;",
        "mWifiLock",
        "Landroid/net/wifi/WifiManager$WifiLock;",
        "Landroid/net/wifi/WifiManager;",
        "mXSessions",
        "Lcom/offsec/nhterm/component/session/XSession;",
        "serviceBinder",
        "Lcom/offsec/nhterm/services/NeoTermService$NeoTermBinder;",
        "sessions",
        "",
        "getSessions",
        "()Ljava/util/List;",
        "xSessions",
        "getXSessions",
        "Executer",
        "",
        "command",
        "acquireLock",
        "",
        "checkPrefix",
        "",
        "createNotification",
        "Landroid/app/Notification;",
        "createNotificationChannel",
        "createOrFindSession",
        "parameter",
        "Lcom/offsec/nhterm/component/session/ShellParameter;",
        "createTermSession",
        "createXSession",
        "activity",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lcom/offsec/nhterm/component/session/XParameter;",
        "onBind",
        "Landroid/os/IBinder;",
        "intent",
        "Landroid/content/Intent;",
        "onCreate",
        "onDestroy",
        "onStartCommand",
        "",
        "flags",
        "startId",
        "releaseLock",
        "removeTermSession",
        "sessionToRemove",
        "removeXSession",
        "resetApp",
        "updateNotification",
        "Companion",
        "NeoTermBinder",
        "nhterm_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final ACTION_ACQUIRE_LOCK:Ljava/lang/String;

.field private static final ACTION_RELEASE_LOCK:Ljava/lang/String;

.field private static final ACTION_SERVICE_STOP:Ljava/lang/String;

.field public static final Companion:Lcom/offsec/nhterm/services/NeoTermService$Companion;

.field private static final DEFAULT_CHANNEL_ID:Ljava/lang/String;

.field private static final NOTIFICATION_ID:I


# instance fields
.field private final mTerminalSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/offsec/nhterm/backend/TerminalSession;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private final mXSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/offsec/nhterm/component/session/XSession;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceBinder:Lcom/offsec/nhterm/services/NeoTermService$NeoTermBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/offsec/nhterm/services/NeoTermService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/offsec/nhterm/services/NeoTermService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/offsec/nhterm/services/NeoTermService;->Companion:Lcom/offsec/nhterm/services/NeoTermService$Companion;

    const-string v0, "neoterm.action.service.stop"

    sput-object v0, Lcom/offsec/nhterm/services/NeoTermService;->ACTION_SERVICE_STOP:Ljava/lang/String;

    const-string v0, "neoterm.action.service.lock.acquire"

    sput-object v0, Lcom/offsec/nhterm/services/NeoTermService;->ACTION_ACQUIRE_LOCK:Ljava/lang/String;

    const-string v0, "neoterm.action.service.lock.release"

    sput-object v0, Lcom/offsec/nhterm/services/NeoTermService;->ACTION_RELEASE_LOCK:Ljava/lang/String;

    const v0, 0xcb33

    sput v0, Lcom/offsec/nhterm/services/NeoTermService;->NOTIFICATION_ID:I

    const-string v0, "neoterm_notification_channel"

    sput-object v0, Lcom/offsec/nhterm/services/NeoTermService;->DEFAULT_CHANNEL_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/offsec/nhterm/services/NeoTermService$NeoTermBinder;

    invoke-direct {v0, p0}, Lcom/offsec/nhterm/services/NeoTermService$NeoTermBinder;-><init>(Lcom/offsec/nhterm/services/NeoTermService;)V

    iput-object v0, p0, Lcom/offsec/nhterm/services/NeoTermService;->serviceBinder:Lcom/offsec/nhterm/services/NeoTermService$NeoTermBinder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/offsec/nhterm/services/NeoTermService;->mTerminalSessions:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/offsec/nhterm/services/NeoTermService;->mXSessions:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$getACTION_ACQUIRE_LOCK$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/offsec/nhterm/services/NeoTermService;->ACTION_ACQUIRE_LOCK:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getACTION_RELEASE_LOCK$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/offsec/nhterm/services/NeoTermService;->ACTION_RELEASE_LOCK:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getACTION_SERVICE_STOP$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/offsec/nhterm/services/NeoTermService;->ACTION_SERVICE_STOP:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getDEFAULT_CHANNEL_ID$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/offsec/nhterm/services/NeoTermService;->DEFAULT_CHANNEL_ID:Ljava/lang/String;

    return-object v0
.end method

.method private final acquireLock()V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nhterm/services/NeoTermService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_2

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/offsec/nhterm/services/NeoTermService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "NeoTerm-Emulator:"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nhterm/services/NeoTermService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-virtual {p0}, Lcom/offsec/nhterm/services/NeoTermService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const/4 v1, 0x3

    const-string v2, "NeoTerm-Emulator"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nhterm/services/NeoTermService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    invoke-direct {p0}, Lcom/offsec/nhterm/services/NeoTermService;->updateNotification()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.net.wifi.WifiManager"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.os.PowerManager"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method private final createNotification()Landroid/app/Notification;
    .locals 9

    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/offsec/nhterm/ui/term/NeoTermActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v2, 0x0

    const/high16 v3, 0x4000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v4, p0, Lcom/offsec/nhterm/services/NeoTermService;->mTerminalSessions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, p0, Lcom/offsec/nhterm/services/NeoTermService;->mXSessions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    sget v5, Lcom/offsec/nhterm/R$string;->service_status_text:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v2

    invoke-virtual {p0, v5, v7}, Lcom/offsec/nhterm/services/NeoTermService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(R.string.servi\u2026tatus_text, sessionCount)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/offsec/nhterm/services/NeoTermService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_1

    sget v7, Lcom/offsec/nhterm/R$string;->service_lock_acquired:I

    invoke-virtual {p0, v7}, Lcom/offsec/nhterm/services/NeoTermService;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :cond_1
    new-instance v7, Landroidx/core/app/NotificationCompat$Builder;

    sget-object v8, Lcom/offsec/nhterm/services/NeoTermService;->DEFAULT_CHANNEL_ID:Ljava/lang/String;

    invoke-direct {v7, v1, v8}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v8, Lcom/offsec/nhterm/R$string;->app_name:I

    invoke-virtual {p0, v8}, Lcom/offsec/nhterm/services/NeoTermService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v7, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    sget v4, Lcom/offsec/nhterm/R$drawable;->ic_notification_icon:I

    invoke-virtual {v7, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v7, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v7, v6}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v7, v2}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    const/high16 v0, -0x1000000

    invoke-virtual {v7, v0}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, -0x1

    :goto_1
    invoke-virtual {v7, v6}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/offsec/nhterm/services/NeoTermService;

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v6, Lcom/offsec/nhterm/services/NeoTermService;->ACTION_SERVICE_STOP:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v6, "Intent(this, NeoTermServ\u2026tion(ACTION_SERVICE_STOP)"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v6, Lcom/offsec/nhterm/R$string;->exit:I

    invoke-virtual {p0, v6}, Lcom/offsec/nhterm/services/NeoTermService;->getString(I)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const v8, 0x108001d

    invoke-virtual {v7, v8, v6, v0}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    if-eqz v5, :cond_3

    sget-object v0, Lcom/offsec/nhterm/services/NeoTermService;->ACTION_RELEASE_LOCK:Ljava/lang/String;

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/offsec/nhterm/services/NeoTermService;->ACTION_ACQUIRE_LOCK:Ljava/lang/String;

    :goto_2
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v4, "Intent(this, NeoTermServ\u2026.setAction(newWakeAction)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v5, :cond_4

    sget v4, Lcom/offsec/nhterm/R$string;->service_release_lock:I

    goto :goto_3

    :cond_4
    sget v4, Lcom/offsec/nhterm/R$string;->service_acquire_lock:I

    :goto_3
    invoke-virtual {p0, v4}, Lcom/offsec/nhterm/services/NeoTermService;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "getString(\n      if (loc\u2026ervice_acquire_lock\n    )"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v5, :cond_5

    const v5, 0x108001f

    goto :goto_4

    :cond_5
    const v5, 0x108002f

    :goto_4
    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v7, v5, v4, v0}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v7}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const-string v1, "builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final createNotificationChannel()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/app/NotificationChannel;

    sget-object v1, Lcom/offsec/nhterm/services/NeoTermService;->DEFAULT_CHANNEL_ID:Ljava/lang/String;

    const-string v2, "NetHunter"

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v1, "NetHunter notifications"

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/offsec/nhterm/services/NeoTermService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final createOrFindSession(Lcom/offsec/nhterm/component/session/ShellParameter;)Lcom/offsec/nhterm/backend/TerminalSession;
    .locals 6

    invoke-virtual {p1}, Lcom/offsec/nhterm/component/session/ShellParameter;->willCreateNewSession()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/offsec/nhterm/utils/NLog;->INSTANCE:Lcom/offsec/nhterm/utils/NLog;

    const-string v2, "createOrFindSession: creating new session"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/offsec/nhterm/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/offsec/nhterm/utils/Terminals;->INSTANCE:Lcom/offsec/nhterm/utils/Terminals;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/offsec/nhterm/utils/Terminals;->createSession(Landroid/content/Context;Lcom/offsec/nhterm/component/session/ShellParameter;)Lcom/offsec/nhterm/backend/TerminalSession;

    move-result-object p1

    iget-object v0, p0, Lcom/offsec/nhterm/services/NeoTermService;->mTerminalSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/offsec/nhterm/component/session/ShellParameter;->getSessionId()Lcom/offsec/nhterm/bridge/SessionId;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v2, Lcom/offsec/nhterm/utils/NLog;->INSTANCE:Lcom/offsec/nhterm/utils/NLog;

    const-string v3, "createOrFindSession: find session by id "

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/offsec/nhterm/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/offsec/nhterm/services/NeoTermService;->mTerminalSessions:Ljava/util/ArrayList;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/offsec/nhterm/backend/TerminalSession;

    iget-object v4, v4, Lcom/offsec/nhterm/backend/TerminalSession;->mHandle:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/offsec/nhterm/bridge/SessionId;->getSessionId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    check-cast v3, Lcom/offsec/nhterm/backend/TerminalSession;

    if-eqz v3, :cond_7

    invoke-virtual {p1}, Lcom/offsec/nhterm/component/session/ShellParameter;->getInitialCommand()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-ne v0, v2, :cond_5

    const/4 v1, 0x1

    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/offsec/nhterm/component/session/ShellParameter;->getInitialCommand()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\n"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/offsec/nhterm/backend/TerminalSession;->write(Ljava/lang/String;)V

    :cond_6
    return-object v3

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cannot find session by given id"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final releaseLock()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nhterm/services/NeoTermService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/offsec/nhterm/services/NeoTermService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/offsec/nhterm/services/NeoTermService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    iput-object v0, p0, Lcom/offsec/nhterm/services/NeoTermService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-direct {p0}, Lcom/offsec/nhterm/services/NeoTermService;->updateNotification()V

    :cond_0
    return-void
.end method

.method private final updateNotification()V
    .locals 3

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/offsec/nhterm/services/NeoTermService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/app/NotificationManager;

    sget v1, Lcom/offsec/nhterm/services/NeoTermService;->NOTIFICATION_ID:I

    invoke-direct {p0}, Lcom/offsec/nhterm/services/NeoTermService;->createNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final Executer(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    const-string v1, "getRuntime().exec(command)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    check-cast v2, Ljava/io/Reader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final checkPrefix()Z
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.offsec.nhterm/files/usr"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final createTermSession(Lcom/offsec/nhterm/component/session/ShellParameter;)Lcom/offsec/nhterm/backend/TerminalSession;
    .locals 1

    const-string v0, "parameter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/offsec/nhterm/services/NeoTermService;->createOrFindSession(Lcom/offsec/nhterm/component/session/ShellParameter;)Lcom/offsec/nhterm/backend/TerminalSession;

    move-result-object p1

    invoke-direct {p0}, Lcom/offsec/nhterm/services/NeoTermService;->updateNotification()V

    return-object p1
.end method

.method public final createXSession(Landroidx/appcompat/app/AppCompatActivity;Lcom/offsec/nhterm/component/session/XParameter;)Lcom/offsec/nhterm/component/session/XSession;
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/offsec/nhterm/utils/Terminals;->INSTANCE:Lcom/offsec/nhterm/utils/Terminals;

    invoke-virtual {v0, p1, p2}, Lcom/offsec/nhterm/utils/Terminals;->createSession(Landroidx/appcompat/app/AppCompatActivity;Lcom/offsec/nhterm/component/session/XParameter;)Lcom/offsec/nhterm/component/session/XSession;

    move-result-object p1

    iget-object p2, p0, Lcom/offsec/nhterm/services/NeoTermService;->mXSessions:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/offsec/nhterm/services/NeoTermService;->updateNotification()V

    return-object p1
.end method

.method public final getSessions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/offsec/nhterm/backend/TerminalSession;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/offsec/nhterm/services/NeoTermService;->mTerminalSessions:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getXSessions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/offsec/nhterm/component/session/XSession;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/offsec/nhterm/services/NeoTermService;->mXSessions:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nhterm/services/NeoTermService;->serviceBinder:Lcom/offsec/nhterm/services/NeoTermService$NeoTermBinder;

    check-cast p1, Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Lcom/offsec/nhterm/services/NeoTermService;->checkPrefix()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/offsec/nhterm/services/NeoTermService;->resetApp()V

    :cond_0
    invoke-direct {p0}, Lcom/offsec/nhterm/services/NeoTermService;->createNotificationChannel()V

    sget v0, Lcom/offsec/nhterm/services/NeoTermService;->NOTIFICATION_ID:I

    invoke-direct {p0}, Lcom/offsec/nhterm/services/NeoTermService;->createNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/offsec/nhterm/services/NeoTermService;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/offsec/nhterm/services/NeoTermService;->stopForeground(Z)V

    iget-object v0, p0, Lcom/offsec/nhterm/services/NeoTermService;->mTerminalSessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lcom/offsec/nhterm/services/NeoTermService;->mTerminalSessions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/offsec/nhterm/backend/TerminalSession;

    invoke-virtual {v1}, Lcom/offsec/nhterm/backend/TerminalSession;->finishIfRunning()V

    move v1, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/offsec/nhterm/services/NeoTermService;->mTerminalSessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const-string p2, "intent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/offsec/nhterm/services/NeoTermService;->ACTION_SERVICE_STOP:Ljava/lang/String;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/offsec/nhterm/services/NeoTermService;->mTerminalSessions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    add-int/lit8 p3, p2, 0x1

    iget-object v0, p0, Lcom/offsec/nhterm/services/NeoTermService;->mTerminalSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/offsec/nhterm/backend/TerminalSession;

    invoke-virtual {p2}, Lcom/offsec/nhterm/backend/TerminalSession;->finishIfRunning()V

    move p2, p3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/offsec/nhterm/services/NeoTermService;->stopSelf()V

    goto :goto_1

    :cond_1
    sget-object p2, Lcom/offsec/nhterm/services/NeoTermService;->ACTION_ACQUIRE_LOCK:Ljava/lang/String;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/offsec/nhterm/services/NeoTermService;->acquireLock()V

    goto :goto_1

    :cond_2
    sget-object p2, Lcom/offsec/nhterm/services/NeoTermService;->ACTION_RELEASE_LOCK:Ljava/lang/String;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/offsec/nhterm/services/NeoTermService;->releaseLock()V

    :cond_3
    :goto_1
    const/4 p1, 0x2

    return p1
.end method

.method public final removeTermSession(Lcom/offsec/nhterm/backend/TerminalSession;)I
    .locals 1

    const-string v0, "sessionToRemove"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/offsec/nhterm/services/NeoTermService;->mTerminalSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/offsec/nhterm/services/NeoTermService;->mTerminalSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/offsec/nhterm/services/NeoTermService;->updateNotification()V

    :cond_0
    return p1
.end method

.method public final removeXSession(Lcom/offsec/nhterm/component/session/XSession;)I
    .locals 1

    const-string v0, "sessionToRemove"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/offsec/nhterm/services/NeoTermService;->mXSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/offsec/nhterm/services/NeoTermService;->mXSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/offsec/nhterm/services/NeoTermService;->updateNotification()V

    :cond_0
    return p1
.end method

.method public final resetApp()V
    .locals 3

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "mkdir -p  /data/data/com.offsec.nhterm/files/usr/"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    const-string v0, "/system/bin/rm -rf /data/data/com.offsec.nhterm/files/usr/bin"

    invoke-virtual {p0, v0}, Lcom/offsec/nhterm/services/NeoTermService;->Executer(Ljava/lang/String;)Ljava/lang/String;

    const-wide/16 v0, 0x4b0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const-string v1, "bin"

    const-string v2, "/data/data/com.offsec.nhterm/files/usr/bin/"

    invoke-static {v0, v1, v2}, Lcom/offsec/nhterm/utils/UtilsKt;->extractAssetsDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-wide/16 v0, 0x320

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    const-string v0, "/system/bin/chmod +x /data/data/com.offsec.nhterm/files/usr/bin/bash"

    invoke-virtual {p0, v0}, Lcom/offsec/nhterm/services/NeoTermService;->Executer(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "/system/bin/chmod +x /data/data/com.offsec.nhterm/files/usr/bin/kali"

    invoke-virtual {p0, v0}, Lcom/offsec/nhterm/services/NeoTermService;->Executer(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "/system/bin/chmod +x /data/data/com.offsec.nhterm/files/usr/bin/android-su"

    invoke-virtual {p0, v0}, Lcom/offsec/nhterm/services/NeoTermService;->Executer(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
