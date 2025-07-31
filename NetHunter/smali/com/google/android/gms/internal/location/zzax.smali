.class final Lcom/google/android/gms/internal/location/zzax;
.super Lcom/google/android/gms/internal/location/zzba;
.source "com.google.android.gms:play-services-location@@21.2.0"


# instance fields
.field final synthetic zza:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/location/zzbb;Lcom/google/android/gms/common/api/GoogleApiClient;Z)V
    .locals 0

    iput-boolean p3, p0, Lcom/google/android/gms/internal/location/zzax;->zza:Z

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/location/zzba;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/location/zzax;->zza:Z

    check-cast p1, Lcom/google/android/gms/internal/location/zzdz;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/location/zzbb;->zza(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/location/zzdz;->zzy(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/location/zzbb;->zza(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/location/zzdz;->zzz(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
