.class public final Lcom/google/android/gms/location/CurrentLocationRequest$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-location@@21.2.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/CurrentLocationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zza:J

.field private zzb:I

.field private zzc:I

.field private zzd:J

.field private final zze:Z

.field private final zzf:I

.field private final zzg:Landroid/os/WorkSource;

.field private final zzh:Lcom/google/android/gms/internal/location/zze;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;->zza:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;->zzb:I

    const/16 v1, 0x66

    iput v1, p0, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;->zzc:I

    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p0, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;->zzd:J

    iput-boolean v0, p0, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;->zze:Z

    iput v0, p0, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;->zzf:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;->zzg:Landroid/os/WorkSource;

    iput-object v0, p0, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;->zzh:Lcom/google/android/gms/internal/location/zze;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/location/CurrentLocationRequest;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/location/CurrentLocationRequest;->getMaxUpdateAgeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;->zza:J

    invoke-virtual {p1}, Lcom/google/android/gms/location/CurrentLocationRequest;->getGranularity()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;->zzb:I

    invoke-virtual {p1}, Lcom/google/android/gms/location/CurrentLocationRequest;->getPriority()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;->zzc:I

    invoke-virtual {p1}, Lcom/google/android/gms/location/CurrentLocationRequest;->getDurationMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;->zzd:J

    invoke-virtual {p1}, Lcom/google/android/gms/location/CurrentLocationRequest;->zza()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;->zze:Z

    invoke-virtual {p1}, Lcom/google/android/gms/location/CurrentLocationRequest;->zzb()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;->zzf:I

    new-instance v0, Landroid/os/WorkSource;

    invoke-virtual {p1}, Lcom/google/android/gms/location/CurrentLocationRequest;->zzc()Landroid/os/WorkSource;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    iput-object v0, p0, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;->zzg:Landroid/os/WorkSource;

    invoke-virtual {p1}, Lcom/google/android/gms/location/CurrentLocationRequest;->zzd()Lcom/google/android/gms/internal/location/zze;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;->zzh:Lcom/google/android/gms/internal/location/zze;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/location/CurrentLocationRequest;
    .locals 12

    new-instance v11, Lcom/google/android/gms/location/CurrentLocationRequest;

    iget-wide v1, p0, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;->zza:J

    iget v3, p0, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;->zzb:I

    iget v4, p0, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;->zzc:I

    iget-wide v5, p0, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;->zzd:J

    new-instance v9, Landroid/os/WorkSource;

    iget-object v0, p0, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;->zzg:Landroid/os/WorkSource;

    invoke-direct {v9, v0}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    iget-boolean v7, p0, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;->zze:Z

    iget v8, p0, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;->zzf:I

    iget-object v10, p0, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;->zzh:Lcom/google/android/gms/internal/location/zze;

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/location/CurrentLocationRequest;-><init>(JIIJZILandroid/os/WorkSource;Lcom/google/android/gms/internal/location/zze;)V

    return-object v11
.end method

.method public setDurationMillis(J)Lcom/google/android/gms/location/CurrentLocationRequest$Builder;
    .locals 3

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

    iput-wide p1, p0, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;->zzd:J

    return-object p0
.end method

.method public setGranularity(I)Lcom/google/android/gms/location/CurrentLocationRequest$Builder;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/location/zzq;->zza(I)I

    iput p1, p0, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;->zzb:I

    return-object p0
.end method

.method public setMaxUpdateAgeMillis(J)Lcom/google/android/gms/location/CurrentLocationRequest$Builder;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "maxUpdateAgeMillis must be greater than or equal to 0"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-wide p1, p0, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;->zza:J

    return-object p0
.end method

.method public setPriority(I)Lcom/google/android/gms/location/CurrentLocationRequest$Builder;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/location/zzan;->zza(I)I

    iput p1, p0, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;->zzc:I

    return-object p0
.end method
