.class public Lcom/google/android/gms/location/DeviceOrientation;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-location@@21.2.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/DeviceOrientation$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/location/DeviceOrientation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:[F

.field private final zzb:F

.field private final zzc:F

.field private final zzd:J

.field private final zze:B

.field private final zzf:F

.field private final zzg:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/zzm;

    invoke-direct {v0}, Lcom/google/android/gms/location/zzm;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/DeviceOrientation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>([FFFJBFF)V
    .locals 5

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/location/DeviceOrientation;->zzj([F)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v3, p2, v2

    if-ltz v3, :cond_0

    const/high16 v3, 0x43b40000    # 360.0f

    cmpg-float v3, p2, v3

    if-gez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Lcom/google/android/gms/internal/location/zzer;->zza(Z)V

    const/high16 v3, 0x43340000    # 180.0f

    cmpl-float v4, p3, v2

    if-ltz v4, :cond_1

    cmpg-float v4, p3, v3

    if-gtz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Lcom/google/android/gms/internal/location/zzer;->zza(Z)V

    cmpl-float v2, p8, v2

    if-ltz v2, :cond_2

    cmpg-float v2, p8, v3

    if-gtz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-static {v2}, Lcom/google/android/gms/internal/location/zzer;->zza(Z)V

    const-wide/16 v2, 0x0

    cmp-long v4, p4, v2

    if-ltz v4, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    invoke-static {v0}, Lcom/google/android/gms/internal/location/zzer;->zza(Z)V

    iput-object p1, p0, Lcom/google/android/gms/location/DeviceOrientation;->zza:[F

    iput p2, p0, Lcom/google/android/gms/location/DeviceOrientation;->zzb:F

    iput p3, p0, Lcom/google/android/gms/location/DeviceOrientation;->zzc:F

    iput p7, p0, Lcom/google/android/gms/location/DeviceOrientation;->zzf:F

    iput p8, p0, Lcom/google/android/gms/location/DeviceOrientation;->zzg:F

    iput-wide p4, p0, Lcom/google/android/gms/location/DeviceOrientation;->zzd:J

    or-int/lit8 p1, p6, 0x10

    int-to-byte p1, p1

    or-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    or-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/gms/location/DeviceOrientation;->zze:B

    return-void
.end method

.method static synthetic zzb([F)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/location/DeviceOrientation;->zzj([F)V

    return-void
.end method

.method private static zzj([F)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Input attitude array should be of length 4."

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/location/zzer;->zzb(ZLjava/lang/Object;)V

    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_1

    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x2

    aget v2, p0, v2

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x3

    aget p0, p0, v2

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string p0, "Input attitude cannot contain NaNs."

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/location/zzer;->zzb(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/location/DeviceOrientation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/location/DeviceOrientation;

    invoke-virtual {p0}, Lcom/google/android/gms/location/DeviceOrientation;->zza()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/location/DeviceOrientation;->zza()Z

    move-result v3

    if-ne v1, v3, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/location/DeviceOrientation;->zza()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/location/DeviceOrientation;->zzf:F

    iget v3, p1, Lcom/google/android/gms/location/DeviceOrientation;->zzf:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/location/DeviceOrientation;->hasConservativeHeadingErrorDegrees()Z

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/location/DeviceOrientation;->hasConservativeHeadingErrorDegrees()Z

    move-result v4

    if-ne v3, v4, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/location/DeviceOrientation;->hasConservativeHeadingErrorDegrees()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/location/DeviceOrientation;->getConservativeHeadingErrorDegrees()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/location/DeviceOrientation;->getConservativeHeadingErrorDegrees()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_1
    iget v4, p0, Lcom/google/android/gms/location/DeviceOrientation;->zzb:F

    iget v5, p1, Lcom/google/android/gms/location/DeviceOrientation;->zzb:F

    invoke-static {v4, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_6

    iget v4, p0, Lcom/google/android/gms/location/DeviceOrientation;->zzc:F

    iget v5, p1, Lcom/google/android/gms/location/DeviceOrientation;->zzc:F

    invoke-static {v4, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_6

    if-eqz v1, :cond_6

    if-eqz v3, :cond_6

    iget-wide v3, p0, Lcom/google/android/gms/location/DeviceOrientation;->zzd:J

    iget-wide v5, p1, Lcom/google/android/gms/location/DeviceOrientation;->zzd:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/location/DeviceOrientation;->zza:[F

    iget-object p1, p1, Lcom/google/android/gms/location/DeviceOrientation;->zza:[F

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p1

    if-eqz p1, :cond_6

    return v0

    :cond_6
    return v2
.end method

.method public getAttitude()[F
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/DeviceOrientation;->zza:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public getConservativeHeadingErrorDegrees()F
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget v0, p0, Lcom/google/android/gms/location/DeviceOrientation;->zzg:F

    return v0
.end method

.method public getElapsedRealtimeNs()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/gms/location/DeviceOrientation;->zzd:J

    return-wide v0
.end method

.method public getHeadingDegrees()F
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget v0, p0, Lcom/google/android/gms/location/DeviceOrientation;->zzb:F

    return v0
.end method

.method public getHeadingErrorDegrees()F
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget v0, p0, Lcom/google/android/gms/location/DeviceOrientation;->zzc:F

    return v0
.end method

.method public hasConservativeHeadingErrorDegrees()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-byte v0, p0, Lcom/google/android/gms/location/DeviceOrientation;->zze:B

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/location/DeviceOrientation;->zzb:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/location/DeviceOrientation;->zzc:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/location/DeviceOrientation;->zzg:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/location/DeviceOrientation;->zzd:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/location/DeviceOrientation;->zza:[F

    aput-object v2, v0, v1

    iget-byte v1, p0, Lcom/google/android/gms/location/DeviceOrientation;->zze:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeviceOrientation[attitude="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/location/DeviceOrientation;->zza:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", headingDegrees="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/location/DeviceOrientation;->zzb:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", headingErrorDegrees="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/location/DeviceOrientation;->zzc:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/location/DeviceOrientation;->hasConservativeHeadingErrorDegrees()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", conservativeHeadingErrorDegrees="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/location/DeviceOrientation;->zzg:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ", elapsedRealtimeNs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/gms/location/DeviceOrientation;->zzd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    invoke-virtual {p0}, Lcom/google/android/gms/location/DeviceOrientation;->getAttitude()[F

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloatArray(Landroid/os/Parcel;I[FZ)V

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/location/DeviceOrientation;->getHeadingDegrees()F

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/location/DeviceOrientation;->getHeadingErrorDegrees()F

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/location/DeviceOrientation;->getElapsedRealtimeNs()J

    move-result-wide v1

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/4 v0, 0x7

    iget-byte v1, p0, Lcom/google/android/gms/location/DeviceOrientation;->zze:B

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByte(Landroid/os/Parcel;IB)V

    const/16 v0, 0x8

    iget v1, p0, Lcom/google/android/gms/location/DeviceOrientation;->zzf:F

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/gms/location/DeviceOrientation;->getConservativeHeadingErrorDegrees()F

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-byte v0, p0, Lcom/google/android/gms/location/DeviceOrientation;->zze:B

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final synthetic zzc()[F
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/DeviceOrientation;->zza:[F

    return-object v0
.end method

.method final synthetic zzd()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/DeviceOrientation;->zzb:F

    return v0
.end method

.method final synthetic zze()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/DeviceOrientation;->zzc:F

    return v0
.end method

.method final synthetic zzf()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/DeviceOrientation;->zzd:J

    return-wide v0
.end method

.method final synthetic zzg()B
    .locals 1

    iget-byte v0, p0, Lcom/google/android/gms/location/DeviceOrientation;->zze:B

    return v0
.end method

.method final synthetic zzh()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/DeviceOrientation;->zzf:F

    return v0
.end method

.method final synthetic zzi()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/DeviceOrientation;->zzg:F

    return v0
.end method
