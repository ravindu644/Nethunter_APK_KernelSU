.class public final Lcom/google/android/gms/location/DeviceOrientation$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-location@@21.2.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/DeviceOrientation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final zza:[F

.field private zzb:F

.field private zzc:F

.field private zzd:J

.field private zze:B

.field private zzf:F

.field private zzg:F


# direct methods
.method public constructor <init>(Lcom/google/android/gms/location/DeviceOrientation;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->zze:B

    invoke-virtual {p1}, Lcom/google/android/gms/location/DeviceOrientation;->zzc()[F

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/DeviceOrientation;->zzb([F)V

    invoke-virtual {p1}, Lcom/google/android/gms/location/DeviceOrientation;->zzc()[F

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/location/DeviceOrientation;->zzc()[F

    move-result-object v1

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->zza:[F

    invoke-virtual {p1}, Lcom/google/android/gms/location/DeviceOrientation;->zzd()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/location/DeviceOrientation$Builder;->setHeadingDegrees(F)Lcom/google/android/gms/location/DeviceOrientation$Builder;

    invoke-virtual {p1}, Lcom/google/android/gms/location/DeviceOrientation;->zze()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/location/DeviceOrientation$Builder;->setHeadingErrorDegrees(F)Lcom/google/android/gms/location/DeviceOrientation$Builder;

    invoke-virtual {p1}, Lcom/google/android/gms/location/DeviceOrientation;->zzi()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/location/DeviceOrientation$Builder;->setConservativeHeadingErrorDegrees(F)Lcom/google/android/gms/location/DeviceOrientation$Builder;

    invoke-virtual {p1}, Lcom/google/android/gms/location/DeviceOrientation;->zzf()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/DeviceOrientation$Builder;->setElapsedRealtimeNs(J)Lcom/google/android/gms/location/DeviceOrientation$Builder;

    invoke-virtual {p1}, Lcom/google/android/gms/location/DeviceOrientation;->zzh()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->zzf:F

    invoke-virtual {p1}, Lcom/google/android/gms/location/DeviceOrientation;->zzg()B

    move-result p1

    iput-byte p1, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->zze:B

    return-void
.end method

.method public constructor <init>([FFFJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->zze:B

    invoke-static {p1}, Lcom/google/android/gms/location/DeviceOrientation;->zzb([F)V

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->zza:[F

    invoke-virtual {p0, p2}, Lcom/google/android/gms/location/DeviceOrientation$Builder;->setHeadingDegrees(F)Lcom/google/android/gms/location/DeviceOrientation$Builder;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/location/DeviceOrientation$Builder;->setHeadingErrorDegrees(F)Lcom/google/android/gms/location/DeviceOrientation$Builder;

    invoke-virtual {p0, p4, p5}, Lcom/google/android/gms/location/DeviceOrientation$Builder;->setElapsedRealtimeNs(J)Lcom/google/android/gms/location/DeviceOrientation$Builder;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->zzf:F

    const/high16 p1, 0x43340000    # 180.0f

    iput p1, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->zzg:F

    iput-byte v0, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->zze:B

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/location/DeviceOrientation;
    .locals 10

    new-instance v9, Lcom/google/android/gms/location/DeviceOrientation;

    iget-object v1, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->zza:[F

    iget v2, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->zzb:F

    iget v3, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->zzc:F

    iget-wide v4, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->zzd:J

    iget-byte v6, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->zze:B

    iget v7, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->zzf:F

    iget v8, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->zzg:F

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/location/DeviceOrientation;-><init>([FFFJBFF)V

    return-object v9
.end method

.method public clearConservativeHeadingErrorDegrees()Lcom/google/android/gms/location/DeviceOrientation$Builder;
    .locals 2

    const/high16 v0, 0x43340000    # 180.0f

    iput v0, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->zzg:F

    iget-byte v0, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->zze:B

    and-int/lit8 v0, v0, -0x41

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->zzf:F

    int-to-byte v0, v0

    and-int/lit8 v0, v0, -0x21

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->zze:B

    return-object p0
.end method

.method public setAttitude([F)Lcom/google/android/gms/location/DeviceOrientation$Builder;
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/location/DeviceOrientation;->zzb([F)V

    array-length v0, p1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->zza:[F

    invoke-static {p1, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method public setConservativeHeadingErrorDegrees(F)Lcom/google/android/gms/location/DeviceOrientation$Builder;
    .locals 4

    const/high16 v0, 0x43340000    # 180.0f

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v3, p1, v2

    if-ltz v3, :cond_0

    cmpg-float v3, p1, v0

    if-gtz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v3, "conservativeHeadingErrorDegrees should be between 0 and 180."

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/location/zzer;->zzb(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->zzg:F

    iget-byte v1, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->zze:B

    or-int/lit8 v1, v1, 0x40

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->zze:B

    sget-object v1, Lcom/google/android/gms/location/DeviceOrientation;->CREATOR:Landroid/os/Parcelable$Creator;

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    double-to-float v2, v0

    :goto_0
    iput v2, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->zzf:F

    iget-byte p1, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->zze:B

    or-int/lit8 p1, p1, 0x20

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->zze:B

    return-object p0
.end method

.method public setElapsedRealtimeNs(J)Lcom/google/android/gms/location/DeviceOrientation$Builder;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "elapsedRealtimeNs should be greater than or equal to 0."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/location/zzer;->zzb(ZLjava/lang/Object;)V

    iput-wide p1, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->zzd:J

    return-object p0
.end method

.method public setHeadingDegrees(F)Lcom/google/android/gms/location/DeviceOrientation$Builder;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x43b40000    # 360.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v0, "headingDegrees should be greater than or equal to 0 and less than 360."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/location/zzer;->zzb(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->zzb:F

    return-object p0
.end method

.method public setHeadingErrorDegrees(F)Lcom/google/android/gms/location/DeviceOrientation$Builder;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x43340000    # 180.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v0, "headingErrorDegrees should be between 0 and 180."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/location/zzer;->zzb(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->zzc:F

    return-object p0
.end method
