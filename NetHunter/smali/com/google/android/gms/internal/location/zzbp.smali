.class final synthetic Lcom/google/android/gms/internal/location/zzbp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-location@@21.2.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/location/CurrentLocationRequest;

.field private final synthetic zzb:Lcom/google/android/gms/tasks/CancellationToken;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/location/CurrentLocationRequest;Lcom/google/android/gms/tasks/CancellationToken;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzbp;->zza:Lcom/google/android/gms/location/CurrentLocationRequest;

    iput-object p2, p0, Lcom/google/android/gms/internal/location/zzbp;->zzb:Lcom/google/android/gms/tasks/CancellationToken;

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/internal/location/zzdz;

    sget-object v0, Lcom/google/android/gms/internal/location/zzbi;->zzb:Lcom/google/android/gms/common/api/Api;

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzbp;->zza:Lcom/google/android/gms/location/CurrentLocationRequest;

    iget-object v1, p0, Lcom/google/android/gms/internal/location/zzbp;->zzb:Lcom/google/android/gms/tasks/CancellationToken;

    invoke-virtual {p1, v0, v1, p2}, Lcom/google/android/gms/internal/location/zzdz;->zzr(Lcom/google/android/gms/location/CurrentLocationRequest;Lcom/google/android/gms/tasks/CancellationToken;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
