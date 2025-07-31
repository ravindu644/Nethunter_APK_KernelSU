.class final synthetic Lcom/google/android/gms/internal/location/zzdc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-location@@21.2.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/location/zzdc;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/location/zzdc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/location/zzdc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/location/zzdc;->zza:Lcom/google/android/gms/internal/location/zzdc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/internal/location/zzdz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/location/zzdz;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/location/zzv;

    new-instance v0, Lcom/google/android/gms/internal/location/zzdm;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/location/zzdm;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/location/zzv;->zzE(Lcom/google/android/gms/internal/location/zzo;)V

    return-void
.end method
