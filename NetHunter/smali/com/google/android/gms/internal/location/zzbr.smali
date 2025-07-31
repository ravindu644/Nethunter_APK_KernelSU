.class final synthetic Lcom/google/android/gms/internal/location/zzbr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-location@@21.2.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/location/zzbr;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/location/zzbr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/location/zzbr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/location/zzbr;->zza:Lcom/google/android/gms/internal/location/zzbr;

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

    sget-object v0, Lcom/google/android/gms/internal/location/zzbi;->zzb:Lcom/google/android/gms/common/api/Api;

    invoke-static {}, Lcom/google/android/gms/location/zzac;->zza()Lcom/google/android/gms/location/zzad;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/location/zzdz;->zzp(Lcom/google/android/gms/location/zzad;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
