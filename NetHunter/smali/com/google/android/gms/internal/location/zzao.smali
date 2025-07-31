.class final synthetic Lcom/google/android/gms/internal/location/zzao;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-location@@21.2.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/location/zzaj;

.field private final synthetic zzb:Landroid/app/PendingIntent;

.field private final synthetic zzc:Lcom/google/android/gms/location/SleepSegmentRequest;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/location/zzaj;Landroid/app/PendingIntent;Lcom/google/android/gms/location/SleepSegmentRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzao;->zza:Lcom/google/android/gms/internal/location/zzaj;

    iput-object p2, p0, Lcom/google/android/gms/internal/location/zzao;->zzb:Landroid/app/PendingIntent;

    iput-object p3, p0, Lcom/google/android/gms/internal/location/zzao;->zzc:Lcom/google/android/gms/location/SleepSegmentRequest;

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzao;->zza:Lcom/google/android/gms/internal/location/zzaj;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/internal/location/zzg;

    new-instance v1, Lcom/google/android/gms/internal/location/zzah;

    invoke-direct {v1, v0, p2}, Lcom/google/android/gms/internal/location/zzah;-><init>(Lcom/google/android/gms/internal/location/zzaj;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/location/zzg;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/location/zzv;

    iget-object p2, p0, Lcom/google/android/gms/internal/location/zzao;->zzb:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzao;->zzc:Lcom/google/android/gms/location/SleepSegmentRequest;

    invoke-interface {p1, p2, v0, v1}, Lcom/google/android/gms/internal/location/zzv;->zzm(Landroid/app/PendingIntent;Lcom/google/android/gms/location/SleepSegmentRequest;Lcom/google/android/gms/common/api/internal/IStatusCallback;)V

    return-void
.end method
