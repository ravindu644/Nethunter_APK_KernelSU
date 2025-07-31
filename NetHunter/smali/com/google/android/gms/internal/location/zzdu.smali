.class final Lcom/google/android/gms/internal/location/zzdu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-location@@21.2.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/location/zzdv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/location/zzdv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzdu;->zza:Lcom/google/android/gms/internal/location/zzdv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic notifyListener(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/location/LocationCallback;

    iget-object p1, p0, Lcom/google/android/gms/internal/location/zzdu;->zza:Lcom/google/android/gms/internal/location/zzdv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/location/zzdv;->zzh()Lcom/google/android/gms/internal/location/zzdr;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/location/zzdr;->zzc()V

    return-void
.end method

.method public final onNotifyListenerFailed()V
    .locals 0

    return-void
.end method
