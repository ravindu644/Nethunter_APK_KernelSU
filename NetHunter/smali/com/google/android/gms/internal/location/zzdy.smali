.class final Lcom/google/android/gms/internal/location/zzdy;
.super Lcom/google/android/gms/location/zzy;
.source "com.google.android.gms:play-services-location@@21.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/location/zzdr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/location/zzdr;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/location/zzy;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzdy;->zza:Lcom/google/android/gms/internal/location/zzdr;

    return-void
.end method


# virtual methods
.method final zzc(Lcom/google/android/gms/common/api/internal/ListenerHolder;)Lcom/google/android/gms/internal/location/zzdy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzdy;->zza:Lcom/google/android/gms/internal/location/zzdr;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/location/zzdr;->zzb(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    return-object p0
.end method

.method public final zzd(Landroid/location/Location;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzdy;->zza:Lcom/google/android/gms/internal/location/zzdr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/location/zzdr;->zza()Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/location/zzdw;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/location/zzdw;-><init>(Lcom/google/android/gms/internal/location/zzdy;Landroid/location/Location;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->notifyListener(Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;)V

    return-void
.end method

.method public final zze()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzdy;->zza:Lcom/google/android/gms/internal/location/zzdr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/location/zzdr;->zza()Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/location/zzdx;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/location/zzdx;-><init>(Lcom/google/android/gms/internal/location/zzdy;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->notifyListener(Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;)V

    return-void
.end method

.method final zzf()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzdy;->zza:Lcom/google/android/gms/internal/location/zzdr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/location/zzdr;->zza()Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->clear()V

    return-void
.end method

.method final synthetic zzg()Lcom/google/android/gms/internal/location/zzdr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzdy;->zza:Lcom/google/android/gms/internal/location/zzdr;

    return-object v0
.end method
