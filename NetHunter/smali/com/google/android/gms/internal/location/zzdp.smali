.class final Lcom/google/android/gms/internal/location/zzdp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-location@@21.2.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/location/DeviceOrientation;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/location/zzdq;Lcom/google/android/gms/location/DeviceOrientation;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/location/zzdp;->zza:Lcom/google/android/gms/location/DeviceOrientation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic notifyListener(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/location/DeviceOrientationListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzdp;->zza:Lcom/google/android/gms/location/DeviceOrientation;

    invoke-interface {p1, v0}, Lcom/google/android/gms/location/DeviceOrientationListener;->onDeviceOrientationChanged(Lcom/google/android/gms/location/DeviceOrientation;)V

    return-void
.end method

.method public final onNotifyListenerFailed()V
    .locals 0

    return-void
.end method
