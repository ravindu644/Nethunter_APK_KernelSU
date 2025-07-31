.class final synthetic Lcom/google/android/gms/internal/location/zzec;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-location@@21.2.0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnTokenCanceledListener;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/location/zzdz;

.field private final synthetic zzb:Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/location/zzdz;Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzec;->zza:Lcom/google/android/gms/internal/location/zzdz;

    iput-object p2, p0, Lcom/google/android/gms/internal/location/zzec;->zzb:Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    return-void
.end method


# virtual methods
.method public final synthetic onCanceled()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzec;->zza:Lcom/google/android/gms/internal/location/zzdz;

    iget-object v1, p0, Lcom/google/android/gms/internal/location/zzec;->zzb:Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    :try_start_0
    new-instance v2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/location/zzdz;->zzw(Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;ZLcom/google/android/gms/tasks/TaskCompletionSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
