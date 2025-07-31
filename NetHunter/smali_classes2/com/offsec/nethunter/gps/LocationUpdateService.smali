.class public Lcom/offsec/nethunter/gps/LocationUpdateService;
.super Landroid/app/Service;
.source "LocationUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/gps/LocationUpdateService$ServiceBinder;
    }
.end annotation


# static fields
.field public static final CHANNEL_ID:Ljava/lang/String; = "NethunterLocationUpdateChannel"

.field public static final NOTIFY_ID:I = 0x3ec

.field private static final TAG:Ljava/lang/String; = "LocationUpdateService"

.field private static instance:Lcom/offsec/nethunter/gps/LocationUpdateService; = null

.field private static final notificationText:Ljava/lang/String;

.field private static final notificationTitle:Ljava/lang/String; = "GPS Provider running"


# instance fields
.field private final binder:Landroid/os/IBinder;

.field private dSock:Ljava/net/DatagramSocket;

.field private firstupdate:Z

.field private fusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

.field private lastLocationAccuracy:D

.field private lastLocationLatitude:D

.field private lastLocationLongitude:D

.field private lastLocationSats:I

.field private lastLocationSourcePublished:Ljava/lang/String;

.field private lastLocationSourceReceived:Ljava/lang/String;

.field private lastLocationTime:Ljava/util/Date;

.field private lastNotificationText:Ljava/lang/String;

.field private final locationListener:Lcom/google/android/gms/location/LocationListener;

.field private locationUpdatesStarted:Z

.field private final nmeaListener:Landroid/location/GpsStatus$NmeaListener;

.field private final resetListenersTimerTask:Ljava/lang/Runnable;

.field private resetListenersTimerTaskHandler:Landroid/os/Handler;

.field private final timerTask:Ljava/lang/Runnable;

.field private timerTaskHandler:Landroid/os/Handler;

.field private udpDestAddr:Ljava/net/InetAddress;

.field private updateReceiver:Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetlastLocationLatitude(Lcom/offsec/nethunter/gps/LocationUpdateService;)D
    .locals 2

    iget-wide v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationLatitude:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgettimerTask(Lcom/offsec/nethunter/gps/LocationUpdateService;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->timerTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettimerTaskHandler(Lcom/offsec/nethunter/gps/LocationUpdateService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->timerTaskHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateNotification(Lcom/offsec/nethunter/gps/LocationUpdateService;)V
    .locals 0

    invoke-direct {p0}, Lcom/offsec/nethunter/gps/LocationUpdateService;->updateNotification()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sending GPS data to udp://127.0.0.1:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/offsec/nethunter/utils/NhPaths;->GPS_PORT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/offsec/nethunter/gps/LocationUpdateService;->notificationText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "None"

    iput-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationSourceReceived:Ljava/lang/String;

    iput-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationSourcePublished:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastNotificationText:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationLatitude:D

    iput-wide v1, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationLongitude:D

    const/4 v3, 0x0

    iput v3, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationSats:I

    iput-wide v1, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationAccuracy:D

    iput-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->udpDestAddr:Ljava/net/InetAddress;

    iput-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->dSock:Ljava/net/DatagramSocket;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationTime:Ljava/util/Date;

    iput-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->timerTaskHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->resetListenersTimerTaskHandler:Landroid/os/Handler;

    new-instance v0, Lcom/offsec/nethunter/gps/LocationUpdateService$ServiceBinder;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/gps/LocationUpdateService$ServiceBinder;-><init>(Lcom/offsec/nethunter/gps/LocationUpdateService;)V

    iput-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->binder:Landroid/os/IBinder;

    iput-boolean v3, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->locationUpdatesStarted:Z

    new-instance v0, Lcom/offsec/nethunter/gps/LocationUpdateService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/gps/LocationUpdateService$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/gps/LocationUpdateService;)V

    iput-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->resetListenersTimerTask:Ljava/lang/Runnable;

    new-instance v0, Lcom/offsec/nethunter/gps/LocationUpdateService$1;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/gps/LocationUpdateService$1;-><init>(Lcom/offsec/nethunter/gps/LocationUpdateService;)V

    iput-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->timerTask:Ljava/lang/Runnable;

    new-instance v0, Lcom/offsec/nethunter/gps/LocationUpdateService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/gps/LocationUpdateService$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/gps/LocationUpdateService;)V

    iput-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->nmeaListener:Landroid/location/GpsStatus$NmeaListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->firstupdate:Z

    new-instance v0, Lcom/offsec/nethunter/gps/LocationUpdateService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/gps/LocationUpdateService$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/gps/LocationUpdateService;)V

    iput-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->locationListener:Lcom/google/android/gms/location/LocationListener;

    return-void
.end method

.method private checksum(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    xor-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static formatPosition(Landroid/location/Location;)Ljava/lang/String;
    .locals 14

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/16 v4, 0x53

    goto :goto_0

    :cond_0
    const/16 v4, 0x4e

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    cmpg-double p0, v5, v2

    if-gez p0, :cond_1

    const/16 p0, 0x57

    goto :goto_1

    :cond_1
    const/16 p0, 0x45

    :goto_1
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Object;

    double-to-int v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-wide/high16 v9, 0x404e000000000000L    # 60.0

    mul-double v0, v0, v9

    double-to-int v7, v0

    rem-int/lit8 v7, v7, 0x3c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v11, 0x1

    aput-object v7, v6, v11

    const-wide v12, 0x40c3880000000000L    # 10000.0

    mul-double v0, v0, v12

    double-to-int v0, v0

    rem-int/lit16 v0, v0, 0x2710

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v6, v1

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/4 v4, 0x3

    aput-object v0, v6, v4

    const-string v0, "%02d%02d.%04d,%c"

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v5, v5, [Ljava/lang/Object;

    double-to-int v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    mul-double v2, v2, v9

    double-to-int v6, v2

    rem-int/lit8 v6, v6, 0x3c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    mul-double v2, v2, v12

    double-to-int v2, v2

    rem-int/lit16 v2, v2, 0x2710

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    aput-object p0, v5, v4

    const-string p0, "%03d%02d.%04d,%c"

    invoke-static {p0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatTime(Landroid/location/Location;)Ljava/lang/String;
    .locals 4

    const-string v0, "HHmmss"

    invoke-static {v0}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    new-instance v1, Lorg/joda/time/DateTime;

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/joda/time/DateTime;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadableInstant;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initTimers()V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->timerTaskHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->resetListenersTimerTaskHandler:Landroid/os/Handler;

    return-void
.end method

.method private initializeUdpComponents()V
    .locals 4

    iget-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->udpDestAddr:Ljava/net/InetAddress;

    const-string v1, "LocationUpdateService"

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "127.0.0.1"

    invoke-static {v0}, Ljava/net/Inet4Address;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->udpDestAddr:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UnknownHostException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->dSock:Ljava/net/DatagramSocket;

    if-nez v0, :cond_1

    :try_start_1
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->dSock:Ljava/net/DatagramSocket;
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SocketException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->dSock:Ljava/net/DatagramSocket;

    :cond_1
    :goto_1
    return-void
.end method

.method public static isInstanceCreated()Z
    .locals 1

    sget-object v0, Lcom/offsec/nethunter/gps/LocationUpdateService;->instance:Lcom/offsec/nethunter/gps/LocationUpdateService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private nmeaSentenceFromLocation(Landroid/location/Location;)Ljava/lang/String;
    .locals 8

    invoke-static {p1}, Lcom/offsec/nethunter/gps/LocationUpdateService;->formatTime(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/offsec/nethunter/gps/LocationUpdateService;->formatPosition(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x4033000000000000L    # 19.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "%.4f"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    aput-object v1, v4, v2

    const/4 v0, 0x2

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/gps/LocationUpdateService;->formatSatellites(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    const/4 v0, 0x4

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/gps/LocationUpdateService;->formatAltitude(Landroid/location/Location;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v0

    const-string p1, "GPGGA,%s,%s,1,%s,%s,%s,,,,"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/gps/LocationUpdateService;->checksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "$"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private publishLocation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 v3, 0x0

    :try_start_0
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    aget-object v5, v0, v4

    const/4 v6, 0x3

    aget-object v7, v0, v6

    const/4 v8, 0x4

    aget-object v8, v0, v8

    const/4 v9, 0x5

    aget-object v9, v0, v9

    const/4 v10, 0x7

    aget-object v10, v0, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/16 v11, 0x8

    aget-object v0, v0, v11

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-double v11, v0

    const-wide/high16 v13, 0x4033000000000000L    # 19.0

    mul-double v11, v11, v13

    invoke-virtual {v5, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    float-to-double v4, v4

    int-to-double v13, v0

    const-wide/high16 v15, 0x404e000000000000L    # 60.0

    div-double/2addr v4, v15

    add-double/2addr v13, v4

    invoke-virtual {v8, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v8, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    float-to-double v4, v4

    int-to-double v2, v0

    div-double/2addr v4, v15

    add-double/2addr v2, v4

    const-string v0, "S"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    if-eqz v0, :cond_0

    mul-double v13, v13, v4

    :cond_0
    const-string v0, "W"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    mul-double v2, v2, v4

    :cond_1
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iput-wide v13, v1, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationLatitude:D

    iput-wide v2, v1, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationLongitude:D

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput v10, v1, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationSats:I

    iput-wide v11, v1, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationAccuracy:D

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, v1, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationTime:Ljava/util/Date;

    move-object/from16 v0, p2

    iput-object v0, v1, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationSourcePublished:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    nop

    :goto_0
    iget-object v0, v1, Lcom/offsec/nethunter/gps/LocationUpdateService;->updateReceiver:Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;

    if-eqz v0, :cond_3

    iget-boolean v2, v1, Lcom/offsec/nethunter/gps/LocationUpdateService;->firstupdate:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/offsec/nethunter/gps/LocationUpdateService;->firstupdate:Z

    invoke-interface {v0}, Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;->onFirstPositionUpdate()V

    :cond_2
    iget-object v0, v1, Lcom/offsec/nethunter/gps/LocationUpdateService;->updateReceiver:Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;

    move-object/from16 v2, p1

    invoke-interface {v0, v2}, Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;->onPositionUpdate(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object/from16 v2, p1

    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/offsec/nethunter/gps/LocationUpdateService;->sendUdpPacket(Ljava/lang/String;)V

    return-void
.end method

.method private requestPostNotificationsPermission(Landroid/content/Context;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/Activity;

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private sendUdpPacket(Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Lcom/offsec/nethunter/gps/LocationUpdateService;->initializeUdpComponents()V

    iget-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->udpDestAddr:Ljava/net/InetAddress;

    const-string v1, "LocationUpdateService"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->dSock:Ljava/net/DatagramSocket;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    new-instance v0, Ljava/net/DatagramPacket;

    array-length v2, p1

    iget-object v3, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->udpDestAddr:Ljava/net/InetAddress;

    sget v4, Lcom/offsec/nethunter/utils/NhPaths;->GPS_PORT:I

    invoke-direct {v0, p1, v2, v3, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    iget-object p1, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->dSock:Ljava/net/DatagramSocket;

    invoke-virtual {p1, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "IOException: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->dSock:Ljava/net/DatagramSocket;

    iput-object p1, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->udpDestAddr:Ljava/net/InetAddress;

    :goto_0
    return-void

    :cond_1
    :goto_1
    const-string p1, "UDP destination address or socket is null. Packet not sent."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startTimers()V
    .locals 4

    iget-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->timerTask:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->resetListenersTimerTaskHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->resetListenersTimerTask:Ljava/lang/Runnable;

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopLocationUpdates()V
    .locals 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->locationUpdatesStarted:Z

    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/gps/LocationUpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    :try_start_0
    const-class v2, Landroid/location/LocationManager;

    const-string v3, "removeNmeaListener"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/location/GpsStatus$NmeaListener;

    aput-object v6, v5, v0

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->nmeaListener:Landroid/location/GpsStatus$NmeaListener;

    aput-object v4, v3, v0

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LocationUpdateService"

    const-string v1, "removeNmeaListener success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->fusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iget-object v1, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->locationListener:Lcom/google/android/gms/location/LocationListener;

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/FusedLocationProviderClient;->removeLocationUpdates(Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private stopTimers()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->timerTaskHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->timerTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->resetListenersTimerTaskHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->resetListenersTimerTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateNotification()V
    .locals 11

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationTime:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0xa

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const-string v0, "current"

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x3c

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "s"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0xe10

    cmp-long v6, v0, v4

    if-gez v6, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v0, v2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "m"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "h"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationLatitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-wide v4, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationLongitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-wide v5, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationAccuracy:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const/4 v2, 0x3

    iget-object v5, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationSourcePublished:Ljava/lang/String;

    aput-object v5, v1, v2

    const/4 v2, 0x4

    aput-object v0, v1, v2

    iget v2, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationSats:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x5

    aput-object v2, v1, v5

    const-string v2, "Latitude: %1.5f  Longitude: %1.5f  +/- %1.1fm  Source: %s  Age: %s  Satellites: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastNotificationText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    :cond_3
    iput-object v1, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastNotificationText:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/offsec/nethunter/gps/LocationUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v2

    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "menuFragment"

    const v7, 0x7f09027b

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p0}, Landroidx/core/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroidx/core/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;

    const/high16 v5, 0xc000000

    invoke-virtual {v6, v3, v5}, Landroidx/core/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v5

    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/offsec/nethunter/gps/LocationUpdateService;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f0c0051

    invoke-direct {v6, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    new-array v7, v4, [Ljava/lang/Object;

    iget-wide v8, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationLatitude:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v3

    const-string v8, "%1.5f"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const v9, 0x7f09027e

    invoke-virtual {v6, v9, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    new-array v7, v4, [Ljava/lang/Object;

    iget-wide v9, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationLongitude:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v3

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f09027f

    invoke-virtual {v6, v8, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    new-array v7, v4, [Ljava/lang/Object;

    iget-wide v8, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationAccuracy:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v3

    const-string v8, "%1.1fm"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f09027c

    invoke-virtual {v6, v8, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v7, 0x7f090281

    iget-object v8, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationSourcePublished:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v7, 0x7f09027d

    invoke-virtual {v6, v7, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationSourcePublished:Ljava/lang/String;

    const-string v7, "GPS"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v7, 0x7f090280

    if-eqz v0, :cond_4

    new-array v0, v4, [Ljava/lang/Object;

    iget v4, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationSats:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const-string v4, "%d"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    const-string v0, "-"

    invoke-virtual {v6, v7, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_1
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/gps/LocationUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v7, "NethunterLocationUpdateChannel"

    invoke-direct {v0, v4, v7}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const v3, 0x7f0800a1

    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroidx/core/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    new-instance v3, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;

    invoke-direct {v3}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;-><init>()V

    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroidx/core/app/NotificationCompat$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v3, "GPS Provider running"

    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const-string v3, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p0, v3}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const-string v4, "LocationUpdateService"

    if-eqz v3, :cond_5

    const-string v0, "POST_NOTIFICATIONS permission not granted. Notification not sent."

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    const/16 v3, 0x3ec

    invoke-virtual {v2, v3, v0}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Notification Sent: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public formatAltitude(Landroid/location/Location;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "%.4f,M"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatSatellites(Landroid/location/Location;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "satellites"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v1, "gps"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-nez v0, :cond_2

    const-string p1, ""

    goto :goto_1

    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_3
    const-string p1, "4"

    return-object p1
.end method

.method synthetic lambda$new$0$com-offsec-nethunter-gps-LocationUpdateService()V
    .locals 2

    const-string v0, "LocationUpdateService"

    const-string v1, "Restarting listeners"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/offsec/nethunter/gps/LocationUpdateService;->stopLocationUpdates()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/gps/LocationUpdateService;->requestUpdates(Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;)V

    return-void
.end method

.method synthetic lambda$new$1$com-offsec-nethunter-gps-LocationUpdateService(JLjava/lang/String;)V
    .locals 1

    const-string p1, "$GPGGA"

    invoke-virtual {p3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const-string p2, "GPS"

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationSourcePublished:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p3}, Lcom/offsec/nethunter/gps/LocationUpdateService;->sendUdpPacket(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string p1, ","

    invoke-virtual {p3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x6

    :try_start_0
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Real NMEA: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LocationUpdateService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "NmeaListener"

    iput-object p1, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationSourceReceived:Ljava/lang/String;

    invoke-direct {p0, p3, p2}, Lcom/offsec/nethunter/gps/LocationUpdateService;->publishLocation(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$new$2$com-offsec-nethunter-gps-LocationUpdateService(Landroid/location/Location;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/gps/LocationUpdateService;->nmeaSentenceFromLocation(Landroid/location/Location;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Constructed NMEA: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationUpdateService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationSourceReceived:Ljava/lang/String;

    const-string v1, "LocationListener"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Network"

    invoke-direct {p0, p1, v0}, Lcom/offsec/nethunter/gps/LocationUpdateService;->publishLocation(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object v1, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationSourceReceived:Ljava/lang/String;

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "LocationUpdateService"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/gps/LocationUpdateService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object p1, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->binder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sput-object p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->instance:Lcom/offsec/nethunter/gps/LocationUpdateService;

    invoke-direct {p0}, Lcom/offsec/nethunter/gps/LocationUpdateService;->initTimers()V

    invoke-static {p0}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->fusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "NethunterPersistentChannelService"

    const/4 v2, 0x2

    const-string v3, "NethunterLocationUpdateChannel"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/gps/LocationUpdateService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "LocationUpdateService"

    const-string v1, "OnDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-object v0, Lcom/offsec/nethunter/gps/LocationUpdateService;->instance:Lcom/offsec/nethunter/gps/LocationUpdateService;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->firstupdate:Z

    invoke-direct {p0}, Lcom/offsec/nethunter/gps/LocationUpdateService;->stopTimers()V

    invoke-direct {p0}, Lcom/offsec/nethunter/gps/LocationUpdateService;->stopLocationUpdates()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const-string p1, "LocationUpdateService"

    const-string p2, "onStartCommand"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/gps/LocationUpdateService;->requestUpdates(Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;)V

    const/4 p1, 0x2

    return p1
.end method

.method public requestUpdates(Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;)V
    .locals 2

    const-string v0, "LocationUpdateService"

    const-string v1, "In requestUpdates"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->updateReceiver:Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;

    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/offsec/nethunter/gps/LocationUpdateService;->startLocationUpdates()V

    :cond_1
    return-void
.end method

.method public startLocationUpdates()V
    .locals 8

    iget-boolean v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->locationUpdatesStarted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->locationUpdatesStarted:Z

    const-string v1, "In startLocationUpdates"

    const-string v2, "LocationUpdateService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/google/android/gms/location/LocationRequest$Builder;

    const/16 v3, 0x64

    const-wide/16 v4, 0x1f4

    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/gms/location/LocationRequest$Builder;-><init>(IJ)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/location/LocationRequest$Builder;->setMinUpdateIntervalMillis(J)Lcom/google/android/gms/location/LocationRequest$Builder;

    move-result-object v1

    const-wide/16 v3, 0x258

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/location/LocationRequest$Builder;->setMaxUpdateDelayMillis(J)Lcom/google/android/gms/location/LocationRequest$Builder;

    move-result-object v1

    const-wide/32 v3, 0x6ddd00

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/location/LocationRequest$Builder;->setDurationMillis(J)Lcom/google/android/gms/location/LocationRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/location/LocationRequest$Builder;->build()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    const-string v3, "Requesting permissions marshmallow"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v3}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v3}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->fusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    if-nez v3, :cond_1

    invoke-static {p0}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v3

    iput-object v3, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->fusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    :cond_1
    iget-object v3, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->fusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iget-object v5, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->locationListener:Lcom/google/android/gms/location/LocationListener;

    const/4 v6, 0x0

    invoke-interface {v3, v1, v5, v6}, Lcom/google/android/gms/location/FusedLocationProviderClient;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)Lcom/google/android/gms/tasks/Task;

    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/gps/LocationUpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    :try_start_0
    const-class v3, Landroid/location/LocationManager;

    const-string v5, "addNmeaListener"

    new-array v6, v0, [Ljava/lang/Class;

    const-class v7, Landroid/location/GpsStatus$NmeaListener;

    aput-object v7, v6, v4

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->nmeaListener:Landroid/location/GpsStatus$NmeaListener;

    aput-object v5, v0, v4

    invoke-virtual {v3, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "addNmeaListener success"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failed to add NMEA listener: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/gps/LocationUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "menuFragment"

    const v5, 0x7f09027b

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p0}, Landroidx/core/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/core/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;

    const/high16 v1, 0xc000000

    invoke-virtual {v3, v4, v1}, Landroidx/core/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/gps/LocationUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "NethunterLocationUpdateChannel"

    invoke-direct {v3, v5, v6}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    const v4, 0x7f0800a1

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    sget-object v4, Lcom/offsec/nethunter/gps/LocationUpdateService;->notificationText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    new-instance v4, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;

    invoke-direct {v4}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;-><init>()V

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    const-string v4, "GPS Provider running"

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    const/16 v3, 0x3ec

    invoke-virtual {v0, v3, v1}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    invoke-virtual {p0, v3, v1}, Lcom/offsec/nethunter/gps/LocationUpdateService;->startForeground(ILandroid/app/Notification;)V

    const-string v0, "starting Notification Update Timer"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/offsec/nethunter/gps/LocationUpdateService;->startTimers()V

    return-void
.end method

.method public stopUpdates()V
    .locals 2

    const-string v0, "LocationUpdateService"

    const-string v1, "In stopUpdates"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/offsec/nethunter/gps/LocationUpdateService;->stopSelf()V

    return-void
.end method
