.class abstract Lcom/google/android/gms/internal/location/zzet;
.super Lcom/google/android/gms/internal/location/zzfa;
.source "com.google.android.gms:play-services-location@@21.2.0"


# instance fields
.field private final zza:I

.field private zzb:I


# direct methods
.method protected constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/location/zzfa;-><init>()V

    const-string v0, "index"

    invoke-static {p2, p1, v0}, Lcom/google/android/gms/internal/location/zzer;->zzd(IILjava/lang/String;)I

    iput p1, p0, Lcom/google/android/gms/internal/location/zzet;->zza:I

    iput p2, p0, Lcom/google/android/gms/internal/location/zzet;->zzb:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/location/zzet;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/location/zzet;->zza:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPrevious()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/location/zzet;->zzb:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/zzet;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/location/zzet;->zzb:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/location/zzet;->zzb:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/location/zzet;->zza(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final nextIndex()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/location/zzet;->zzb:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/zzet;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/location/zzet;->zzb:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/location/zzet;->zzb:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/location/zzet;->zza(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final previousIndex()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/location/zzet;->zzb:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected abstract zza(I)Ljava/lang/Object;
.end method
