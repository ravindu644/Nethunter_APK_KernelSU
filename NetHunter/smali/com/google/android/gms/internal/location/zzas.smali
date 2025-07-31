.class final Lcom/google/android/gms/internal/location/zzas;
.super Lcom/google/android/gms/internal/location/zzba;
.source "com.google.android.gms:play-services-location@@21.2.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/common/api/internal/ListenerHolder;

.field final synthetic zzb:Lcom/google/android/gms/location/LocationRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/location/zzbb;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/location/LocationRequest;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/location/zzas;->zza:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    iput-object p4, p0, Lcom/google/android/gms/internal/location/zzas;->zzb:Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/location/zzba;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/location/zzdz;

    new-instance v0, Lcom/google/android/gms/internal/location/zzaz;

    iget-object v1, p0, Lcom/google/android/gms/internal/location/zzas;->zza:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/location/zzaz;-><init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/location/zzas;->zzb:Lcom/google/android/gms/location/LocationRequest;

    invoke-static {p0}, Lcom/google/android/gms/internal/location/zzbb;->zza(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/location/zzdz;->zzt(Lcom/google/android/gms/internal/location/zzdr;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
