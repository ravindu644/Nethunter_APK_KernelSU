.class final Lcom/google/android/gms/internal/location/zzcp;
.super Lcom/google/android/gms/internal/location/zzcq;
.source "com.google.android.gms:play-services-location@@21.2.0"


# instance fields
.field final synthetic zza:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/location/zzcr;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/location/zzcp;->zza:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/location/zzcq;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzcp;->zza:Ljava/util/List;

    check-cast p1, Lcom/google/android/gms/internal/location/zzdz;

    invoke-static {v0}, Lcom/google/android/gms/internal/location/zzem;->zza(Ljava/util/List;)Lcom/google/android/gms/internal/location/zzem;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/internal/location/zzcr;->zza(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/location/zzdz;->zzF(Lcom/google/android/gms/internal/location/zzem;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
