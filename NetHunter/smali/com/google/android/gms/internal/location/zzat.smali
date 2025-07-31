.class final Lcom/google/android/gms/internal/location/zzat;
.super Lcom/google/android/gms/internal/location/zzba;
.source "com.google.android.gms:play-services-location@@21.2.0"


# instance fields
.field final synthetic zza:Landroid/app/PendingIntent;

.field final synthetic zzb:Lcom/google/android/gms/location/LocationRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/location/zzbb;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;Lcom/google/android/gms/location/LocationRequest;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/location/zzat;->zza:Landroid/app/PendingIntent;

    iput-object p4, p0, Lcom/google/android/gms/internal/location/zzat;->zzb:Lcom/google/android/gms/location/LocationRequest;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzat;->zza:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/google/android/gms/internal/location/zzat;->zzb:Lcom/google/android/gms/location/LocationRequest;

    invoke-static {p0}, Lcom/google/android/gms/internal/location/zzbb;->zza(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/location/zzdz;->zzu(Landroid/app/PendingIntent;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
