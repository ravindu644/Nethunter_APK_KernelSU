.class final synthetic Lcom/google/android/gms/internal/location/zzce;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-location@@21.2.0"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/location/zzce;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/location/zzce;

    invoke-direct {v0}, Lcom/google/android/gms/internal/location/zzce;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/location/zzce;->zza:Lcom/google/android/gms/internal/location/zzce;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic execute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
