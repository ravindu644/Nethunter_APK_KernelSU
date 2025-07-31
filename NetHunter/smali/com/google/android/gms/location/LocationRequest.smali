.class public final Lcom/google/android/gms/location/LocationRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-location@@21.2.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/LocationRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/location/LocationRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIORITY_BALANCED_POWER_ACCURACY:I = 0x66
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRIORITY_HIGH_ACCURACY:I = 0x64
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRIORITY_LOW_POWER:I = 0x68
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRIORITY_NO_POWER:I = 0x69
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private zza:I

.field private zzb:J

.field private zzc:J

.field private zzd:J

.field private zze:J

.field private zzf:I

.field private zzg:F

.field private zzh:Z

.field private zzi:J

.field private final zzj:I

.field private final zzk:I

.field private final zzl:Z

.field private final zzm:Landroid/os/WorkSource;

.field private final zzn:Lcom/google/android/gms/internal/location/zze;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/zzaf;

    invoke-direct {v0}, Lcom/google/android/gms/location/zzaf;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 22
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x66

    const-wide/32 v2, 0x36ee80

    const-wide/32 v4, 0x927c0

    const-wide/16 v6, 0x0

    const-wide v10, 0x7fffffffffffffffL

    move-wide v8, v10

    const v12, 0x7fffffff

    const/4 v13, 0x0

    const/4 v14, 0x1

    const-wide/32 v15, 0x36ee80

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    new-instance v21, Landroid/os/WorkSource;

    move-object/from16 v20, v21

    invoke-direct/range {v21 .. v21}, Landroid/os/WorkSource;-><init>()V

    const/16 v21, 0x0

    invoke-direct/range {v0 .. v21}, Lcom/google/android/gms/location/LocationRequest;-><init>(IJJJJJIFZJIIZLandroid/os/WorkSource;Lcom/google/android/gms/internal/location/zze;)V

    return-void
.end method

.method constructor <init>(IJJJJJIFZJIIZLandroid/os/WorkSource;Lcom/google/android/gms/internal/location/zze;)V
    .locals 7

    move-object v0, p0

    move v1, p1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput v1, v0, Lcom/google/android/gms/location/LocationRequest;->zza:I

    const/16 v2, 0x69

    const-wide v3, 0x7fffffffffffffffL

    if-ne v1, v2, :cond_0

    iput-wide v3, v0, Lcom/google/android/gms/location/LocationRequest;->zzb:J

    move-wide v1, p2

    goto :goto_0

    :cond_0
    move-wide v1, p2

    iput-wide v1, v0, Lcom/google/android/gms/location/LocationRequest;->zzb:J

    :goto_0
    move-wide v5, p4

    iput-wide v5, v0, Lcom/google/android/gms/location/LocationRequest;->zzc:J

    move-wide v5, p6

    iput-wide v5, v0, Lcom/google/android/gms/location/LocationRequest;->zzd:J

    cmp-long v5, p8, v3

    if-nez v5, :cond_1

    move-wide/from16 v3, p10

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v3, p8, v3

    const-wide/16 v5, 0x1

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    move-wide/from16 v5, p10

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :goto_1
    iput-wide v3, v0, Lcom/google/android/gms/location/LocationRequest;->zze:J

    move/from16 v3, p12

    iput v3, v0, Lcom/google/android/gms/location/LocationRequest;->zzf:I

    move/from16 v3, p13

    iput v3, v0, Lcom/google/android/gms/location/LocationRequest;->zzg:F

    move/from16 v3, p14

    iput-boolean v3, v0, Lcom/google/android/gms/location/LocationRequest;->zzh:Z

    const-wide/16 v3, -0x1

    cmp-long v5, p15, v3

    if-eqz v5, :cond_2

    move-wide/from16 v1, p15

    :cond_2
    iput-wide v1, v0, Lcom/google/android/gms/location/LocationRequest;->zzi:J

    move/from16 v1, p17

    iput v1, v0, Lcom/google/android/gms/location/LocationRequest;->zzj:I

    move/from16 v1, p18

    iput v1, v0, Lcom/google/android/gms/location/LocationRequest;->zzk:I

    move/from16 v1, p19

    iput-boolean v1, v0, Lcom/google/android/gms/location/LocationRequest;->zzl:Z

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/google/android/gms/location/LocationRequest;->zzm:Landroid/os/WorkSource;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/google/android/gms/location/LocationRequest;->zzn:Lcom/google/android/gms/internal/location/zze;

    return-void
.end method

.method public static create()Lcom/google/android/gms/location/LocationRequest;
    .locals 23
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v22, Lcom/google/android/gms/location/LocationRequest;

    move-object/from16 v0, v22

    const/16 v1, 0x66

    const-wide/32 v2, 0x36ee80

    const-wide/32 v4, 0x927c0

    const-wide/16 v6, 0x0

    const-wide v10, 0x7fffffffffffffffL

    move-wide v8, v10

    const v12, 0x7fffffff

    const/4 v13, 0x0

    const/4 v14, 0x1

    const-wide/32 v15, 0x36ee80

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    new-instance v21, Landroid/os/WorkSource;

    move-object/from16 v20, v21

    invoke-direct/range {v21 .. v21}, Landroid/os/WorkSource;-><init>()V

    const/16 v21, 0x0

    invoke-direct/range {v0 .. v21}, Lcom/google/android/gms/location/LocationRequest;-><init>(IJJJJJIFZJIIZLandroid/os/WorkSource;Lcom/google/android/gms/internal/location/zze;)V

    return-object v22
.end method

.method private static zze(J)Ljava/lang/String;
    .locals 3

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const-string p0, "\u221e"

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/location/zzeo;->zzb(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lcom/google/android/gms/location/LocationRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/gms/location/LocationRequest;

    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->zza:I

    iget v2, p1, Lcom/google/android/gms/location/LocationRequest;->zza:I

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationRequest;->isPassive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->zzb:J

    iget-wide v4, p1, Lcom/google/android/gms/location/LocationRequest;->zzb:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->zzc:J

    iget-wide v4, p1, Lcom/google/android/gms/location/LocationRequest;->zzc:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationRequest;->isBatched()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationRequest;->isBatched()Z

    move-result v2

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationRequest;->isBatched()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->zzd:J

    iget-wide v4, p1, Lcom/google/android/gms/location/LocationRequest;->zzd:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->zze:J

    iget-wide v4, p1, Lcom/google/android/gms/location/LocationRequest;->zze:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzf:I

    iget v2, p1, Lcom/google/android/gms/location/LocationRequest;->zzf:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzg:F

    iget v2, p1, Lcom/google/android/gms/location/LocationRequest;->zzg:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzh:Z

    iget-boolean v2, p1, Lcom/google/android/gms/location/LocationRequest;->zzh:Z

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzj:I

    iget v2, p1, Lcom/google/android/gms/location/LocationRequest;->zzj:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzk:I

    iget v2, p1, Lcom/google/android/gms/location/LocationRequest;->zzk:I

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzl:Z

    iget-boolean v2, p1, Lcom/google/android/gms/location/LocationRequest;->zzl:Z

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzm:Landroid/os/WorkSource;

    iget-object v2, p1, Lcom/google/android/gms/location/LocationRequest;->zzm:Landroid/os/WorkSource;

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzn:Lcom/google/android/gms/internal/location/zze;

    iget-object p1, p1, Lcom/google/android/gms/location/LocationRequest;->zzn:Lcom/google/android/gms/internal/location/zze;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public getDurationMillis()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->zze:J

    return-wide v0
.end method

.method public getExpirationTime()J
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->zze:J

    add-long v4, v0, v2

    xor-long/2addr v0, v4

    xor-long/2addr v2, v4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v6, v0, v2

    if-gez v6, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    :cond_0
    return-wide v4
.end method

.method public getFastestInterval()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationRequest;->getMinUpdateIntervalMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getGranularity()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzj:I

    return v0
.end method

.method public getInterval()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIntervalMillis()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzb:J

    return-wide v0
.end method

.method public getMaxUpdateAgeMillis()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzi:J

    return-wide v0
.end method

.method public getMaxUpdateDelayMillis()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzd:J

    return-wide v0
.end method

.method public getMaxUpdates()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzf:I

    return v0
.end method

.method public getMaxWaitTime()J
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzd:J

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->zzb:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinUpdateDistanceMeters()F
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzg:F

    return v0
.end method

.method public getMinUpdateIntervalMillis()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzc:J

    return-wide v0
.end method

.method public getNumUpdates()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationRequest;->getMaxUpdates()I

    move-result v0

    return v0
.end method

.method public getPriority()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->zza:I

    return v0
.end method

.method public getSmallestDisplacement()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationRequest;->getMinUpdateDistanceMeters()F

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->zza:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/location/LocationRequest;->zzb:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/location/LocationRequest;->zzc:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/location/LocationRequest;->zzm:Landroid/os/WorkSource;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isBatched()Z
    .locals 6
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzd:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v2, 0x1

    shr-long/2addr v0, v2

    iget-wide v3, p0, Lcom/google/android/gms/location/LocationRequest;->zzb:J

    cmp-long v5, v0, v3

    if-ltz v5, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFastestIntervalExplicitlySet()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public isPassive()Z
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->zza:I

    const/16 v1, 0x69

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isWaitForAccurateLocation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzh:Z

    return v0
.end method

.method public setExpirationDuration(J)Lcom/google/android/gms/location/LocationRequest;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "durationMillis must be greater than 0"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-wide p1, p0, Lcom/google/android/gms/location/LocationRequest;->zze:J

    return-object p0
.end method

.method public setExpirationTime(J)Lcom/google/android/gms/location/LocationRequest;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/location/LocationRequest;->zze:J

    return-object p0
.end method

.method public setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-wide/16 v4, 0x0

    cmp-long v2, p1, v4

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "illegal fastest interval: %d"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput-wide p1, p0, Lcom/google/android/gms/location/LocationRequest;->zzc:J

    return-object p0
.end method

.method public setInterval(J)Lcom/google/android/gms/location/LocationRequest;
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "intervalMillis must be greater than or equal to 0"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzc:J

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->zzb:J

    const-wide/16 v4, 0x6

    div-long v6, v2, v4

    cmp-long v8, v0, v6

    if-nez v8, :cond_1

    div-long v0, p1, v4

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzc:J

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzi:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    iput-wide p1, p0, Lcom/google/android/gms/location/LocationRequest;->zzi:J

    :cond_2
    iput-wide p1, p0, Lcom/google/android/gms/location/LocationRequest;->zzb:J

    return-object p0
.end method

.method public setMaxWaitTime(J)Lcom/google/android/gms/location/LocationRequest;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-wide/16 v4, 0x0

    cmp-long v2, p1, v4

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "illegal max wait time: %d"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput-wide p1, p0, Lcom/google/android/gms/location/LocationRequest;->zzd:J

    return-object p0
.end method

.method public setNumUpdates(I)Lcom/google/android/gms/location/LocationRequest;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-lez p1, :cond_0

    iput p1, p0, Lcom/google/android/gms/location/LocationRequest;->zzf:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x14

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "invalid numUpdates: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPriority(I)Lcom/google/android/gms/location/LocationRequest;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/location/zzan;->zza(I)I

    iput p1, p0, Lcom/google/android/gms/location/LocationRequest;->zza:I

    return-object p0
.end method

.method public setSmallestDisplacement(F)Lcom/google/android/gms/location/LocationRequest;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iput p1, p0, Lcom/google/android/gms/location/LocationRequest;->zzg:F

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x16

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "invalid displacement: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWaitForAccurateLocation(Z)Lcom/google/android/gms/location/LocationRequest;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/google/android/gms/location/LocationRequest;->zzh:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationRequest;->isPassive()Z

    move-result v1

    const-string v2, "/"

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->zza:I

    invoke-static {v1}, Lcom/google/android/gms/location/zzan;->zzb(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/google/android/gms/location/LocationRequest;->zzd:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/gms/location/LocationRequest;->zzd:J

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/location/zzeo;->zzc(JLjava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationRequest;->isBatched()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lcom/google/android/gms/location/LocationRequest;->zzb:J

    invoke-static {v3, v4, v0}, Lcom/google/android/gms/internal/location/zzeo;->zzc(JLjava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/gms/location/LocationRequest;->zzd:J

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/location/zzeo;->zzc(JLjava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-wide v1, p0, Lcom/google/android/gms/location/LocationRequest;->zzb:J

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/location/zzeo;->zzc(JLjava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->zza:I

    invoke-static {v1}, Lcom/google/android/gms/location/zzan;->zzb(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationRequest;->isPassive()Z

    move-result v1

    if-nez v1, :cond_3

    iget-wide v1, p0, Lcom/google/android/gms/location/LocationRequest;->zzc:J

    iget-wide v3, p0, Lcom/google/android/gms/location/LocationRequest;->zzb:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    :cond_3
    const-string v1, ", minUpdateInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/gms/location/LocationRequest;->zzc:J

    invoke-static {v1, v2}, Lcom/google/android/gms/location/LocationRequest;->zze(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->zzg:F

    float-to-double v1, v1

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_5

    const-string v1, ", minUpdateDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->zzg:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationRequest;->isPassive()Z

    move-result v1

    const-wide v2, 0x7fffffffffffffffL

    if-eqz v1, :cond_6

    iget-wide v4, p0, Lcom/google/android/gms/location/LocationRequest;->zzi:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_6
    iget-wide v4, p0, Lcom/google/android/gms/location/LocationRequest;->zzi:J

    iget-wide v6, p0, Lcom/google/android/gms/location/LocationRequest;->zzb:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_7

    :goto_2
    const-string v1, ", maxUpdateAge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/google/android/gms/location/LocationRequest;->zzi:J

    invoke-static {v4, v5}, Lcom/google/android/gms/location/LocationRequest;->zze(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-wide v4, p0, Lcom/google/android/gms/location/LocationRequest;->zze:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_8

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/gms/location/LocationRequest;->zze:J

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/location/zzeo;->zzc(JLjava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    :cond_8
    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->zzf:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_9

    const-string v1, ", maxUpdates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->zzf:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_9
    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->zzk:I

    const-string v2, ", "

    if-eqz v1, :cond_a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->zzk:I

    invoke-static {v1}, Lcom/google/android/gms/location/zzar;->zzb(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->zzj:I

    if-eqz v1, :cond_b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->zzj:I

    invoke-static {v1}, Lcom/google/android/gms/location/zzq;->zzb(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    iget-boolean v1, p0, Lcom/google/android/gms/location/LocationRequest;->zzh:Z

    if-eqz v1, :cond_c

    const-string v1, ", waitForAccurateLocation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    iget-boolean v1, p0, Lcom/google/android/gms/location/LocationRequest;->zzl:Z

    if-eqz v1, :cond_d

    const-string v1, ", bypass"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/location/LocationRequest;->zzm:Landroid/os/WorkSource;

    invoke-static {v1}, Lcom/google/android/gms/common/util/WorkSourceUtil;->isEmpty(Landroid/os/WorkSource;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/location/LocationRequest;->zzm:Landroid/os/WorkSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/location/LocationRequest;->zzn:Lcom/google/android/gms/internal/location/zze;

    if-eqz v1, :cond_f

    const-string v1, ", impersonation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/location/LocationRequest;->zzn:Lcom/google/android/gms/internal/location/zze;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_f
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationRequest;->getPriority()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationRequest;->getMinUpdateIntervalMillis()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationRequest;->getMaxUpdates()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationRequest;->getMinUpdateDistanceMeters()F

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationRequest;->getMaxUpdateDelayMillis()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationRequest;->isWaitForAccurateLocation()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationRequest;->getDurationMillis()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationRequest;->getMaxUpdateAgeMillis()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationRequest;->getGranularity()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/16 v1, 0xd

    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->zzk:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/16 v1, 0xf

    iget-boolean v2, p0, Lcom/google/android/gms/location/LocationRequest;->zzl:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/location/LocationRequest;->zzm:Landroid/os/WorkSource;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/android/gms/location/LocationRequest;->zzn:Lcom/google/android/gms/internal/location/zze;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzk:I

    return v0
.end method

.method public final zzb()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzl:Z

    return v0
.end method

.method public final zzc()Landroid/os/WorkSource;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzm:Landroid/os/WorkSource;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/location/zze;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzn:Lcom/google/android/gms/internal/location/zze;

    return-object v0
.end method
