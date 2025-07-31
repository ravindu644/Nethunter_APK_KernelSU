.class public final Lcom/google/android/gms/location/DeviceOrientationRequest$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-location@@21.2.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/DeviceOrientationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zza:J

.field private final zzb:Z


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/location/DeviceOrientationRequest$Builder;->zzb:Z

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/location/DeviceOrientationRequest$Builder;->setSamplingPeriodMicros(J)Lcom/google/android/gms/location/DeviceOrientationRequest$Builder;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/location/DeviceOrientationRequest;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/location/DeviceOrientationRequest;->zza()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/location/DeviceOrientationRequest$Builder;->zza:J

    invoke-virtual {p1}, Lcom/google/android/gms/location/DeviceOrientationRequest;->zzb()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/location/DeviceOrientationRequest$Builder;->zzb:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/location/DeviceOrientationRequest;
    .locals 4

    new-instance v0, Lcom/google/android/gms/location/DeviceOrientationRequest;

    iget-wide v1, p0, Lcom/google/android/gms/location/DeviceOrientationRequest$Builder;->zza:J

    iget-boolean v3, p0, Lcom/google/android/gms/location/DeviceOrientationRequest$Builder;->zzb:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/location/DeviceOrientationRequest;-><init>(JZ)V

    return-object v0
.end method

.method public setSamplingPeriodMicros(J)Lcom/google/android/gms/location/DeviceOrientationRequest$Builder;
    .locals 4

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-ltz v3, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v3, p1, v0

    if-gez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x66

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid interval: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " should be greater than or equal to 0. Note: Long.MAX_VALUE is not a valid interval."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/location/zzer;->zzb(ZLjava/lang/Object;)V

    iput-wide p1, p0, Lcom/google/android/gms/location/DeviceOrientationRequest$Builder;->zza:J

    return-object p0
.end method
