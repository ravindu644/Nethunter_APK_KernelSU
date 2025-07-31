.class public final Lcom/google/android/gms/location/CurrentLocationRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-location@@21.2.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/CurrentLocationRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/location/CurrentLocationRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:J

.field private final zzb:I

.field private final zzc:I

.field private final zzd:J

.field private final zze:Z

.field private final zzf:I

.field private final zzg:Landroid/os/WorkSource;

.field private final zzh:Lcom/google/android/gms/internal/location/zze;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/zzj;

    invoke-direct {v0}, Lcom/google/android/gms/location/zzj;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/CurrentLocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(JIIJZILandroid/os/WorkSource;Lcom/google/android/gms/internal/location/zze;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/location/CurrentLocationRequest;->zza:J

    iput p3, p0, Lcom/google/android/gms/location/CurrentLocationRequest;->zzb:I

    iput p4, p0, Lcom/google/android/gms/location/CurrentLocationRequest;->zzc:I

    iput-wide p5, p0, Lcom/google/android/gms/location/CurrentLocationRequest;->zzd:J

    iput-boolean p7, p0, Lcom/google/android/gms/location/CurrentLocationRequest;->zze:Z

    iput p8, p0, Lcom/google/android/gms/location/CurrentLocationRequest;->zzf:I

    iput-object p9, p0, Lcom/google/android/gms/location/CurrentLocationRequest;->zzg:Landroid/os/WorkSource;

    iput-object p10, p0, Lcom/google/android/gms/location/CurrentLocationRequest;->zzh:Lcom/google/android/gms/internal/location/zze;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lcom/google/android/gms/location/CurrentLocationRequest;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/location/CurrentLocationRequest;

    iget-wide v2, p0, Lcom/google/android/gms/location/CurrentLocationRequest;->zza:J

    iget-wide v4, p1, Lcom/google/android/gms/location/CurrentLocationRequest;->zza:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/location/CurrentLocationRequest;->zzb:I

    iget v2, p1, Lcom/google/android/gms/location/CurrentLocationRequest;->zzb:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/google/android/gms/location/CurrentLocationRequest;->zzc:I

    iget v2, p1, Lcom/google/android/gms/location/CurrentLocationRequest;->zzc:I

    if-ne v0, v2, :cond_1

    iget-wide v2, p0, Lcom/google/android/gms/location/CurrentLocationRequest;->zzd:J

    iget-wide v4, p1, Lcom/google/android/gms/location/CurrentLocationRequest;->zzd:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/location/CurrentLocationRequest;->zze:Z

    iget-boolean v2, p1, Lcom/google/android/gms/location/CurrentLocationRequest;->zze:Z

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/google/android/gms/location/CurrentLocationRequest;->zzf:I

    iget v2, p1, Lcom/google/android/gms/location/CurrentLocationRequest;->zzf:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/location/CurrentLocationRequest;->zzg:Landroid/os/WorkSource;

    iget-object v2, p1, Lcom/google/android/gms/location/CurrentLocationRequest;->zzg:Landroid/os/WorkSource;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/location/CurrentLocationRequest;->zzh:Lcom/google/android/gms/internal/location/zze;

    iget-object p1, p1, Lcom/google/android/gms/location/CurrentLocationRequest;->zzh:Lcom/google/android/gms/internal/location/zze;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public getDurationMillis()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/gms/location/CurrentLocationRequest;->zzd:J

    return-wide v0
.end method

.method public getGranularity()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget v0, p0, Lcom/google/android/gms/location/CurrentLocationRequest;->zzb:I

    return v0
.end method

.method public getMaxUpdateAgeMillis()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/gms/location/CurrentLocationRequest;->zza:J

    return-wide v0
.end method

.method public getPriority()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget v0, p0, Lcom/google/android/gms/location/CurrentLocationRequest;->zzc:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/google/android/gms/location/CurrentLocationRequest;->zza:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/location/CurrentLocationRequest;->zzb:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/location/CurrentLocationRequest;->zzc:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/location/CurrentLocationRequest;->zzd:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CurrentLocationRequest["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/location/CurrentLocationRequest;->zzc:I

    invoke-static {v1}, Lcom/google/android/gms/location/zzan;->zzb(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/gms/location/CurrentLocationRequest;->zza:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const-string v1, ", maxAge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/gms/location/CurrentLocationRequest;->zza:J

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/location/zzeo;->zzc(JLjava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    :cond_0
    iget-wide v1, p0, Lcom/google/android/gms/location/CurrentLocationRequest;->zzd:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/gms/location/CurrentLocationRequest;->zzd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget v1, p0, Lcom/google/android/gms/location/CurrentLocationRequest;->zzb:I

    const-string v2, ", "

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/location/CurrentLocationRequest;->zzb:I

    invoke-static {v1}, Lcom/google/android/gms/location/zzq;->zzb(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-boolean v1, p0, Lcom/google/android/gms/location/CurrentLocationRequest;->zze:Z

    if-eqz v1, :cond_3

    const-string v1, ", bypass"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget v1, p0, Lcom/google/android/gms/location/CurrentLocationRequest;->zzf:I

    if-eqz v1, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/location/CurrentLocationRequest;->zzf:I

    invoke-static {v1}, Lcom/google/android/gms/location/zzar;->zzb(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/location/CurrentLocationRequest;->zzg:Landroid/os/WorkSource;

    invoke-static {v1}, Lcom/google/android/gms/common/util/WorkSourceUtil;->isEmpty(Landroid/os/WorkSource;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, ", workSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/location/CurrentLocationRequest;->zzg:Landroid/os/WorkSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/location/CurrentLocationRequest;->zzh:Lcom/google/android/gms/internal/location/zze;

    if-eqz v1, :cond_6

    const-string v1, ", impersonation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/location/CurrentLocationRequest;->zzh:Lcom/google/android/gms/internal/location/zze;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_6
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

    invoke-virtual {p0}, Lcom/google/android/gms/location/CurrentLocationRequest;->getMaxUpdateAgeMillis()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/location/CurrentLocationRequest;->getGranularity()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/location/CurrentLocationRequest;->getPriority()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/location/CurrentLocationRequest;->getDurationMillis()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/android/gms/location/CurrentLocationRequest;->zze:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/location/CurrentLocationRequest;->zzg:Landroid/os/WorkSource;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x7

    iget v2, p0, Lcom/google/android/gms/location/CurrentLocationRequest;->zzf:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/location/CurrentLocationRequest;->zzh:Lcom/google/android/gms/internal/location/zze;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/location/CurrentLocationRequest;->zze:Z

    return v0
.end method

.method public final zzb()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget v0, p0, Lcom/google/android/gms/location/CurrentLocationRequest;->zzf:I

    return v0
.end method

.method public final zzc()Landroid/os/WorkSource;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/CurrentLocationRequest;->zzg:Landroid/os/WorkSource;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/location/zze;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/CurrentLocationRequest;->zzh:Lcom/google/android/gms/internal/location/zze;

    return-object v0
.end method
