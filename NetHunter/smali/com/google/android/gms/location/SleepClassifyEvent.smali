.class public Lcom/google/android/gms/location/SleepClassifyEvent;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-location@@21.2.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/location/SleepClassifyEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:I

.field private final zzb:I

.field private final zzc:I

.field private final zzd:I

.field private final zze:I

.field private final zzf:I

.field private final zzg:I

.field private final zzh:Z

.field private final zzi:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/zzao;

    invoke-direct {v0}, Lcom/google/android/gms/location/zzao;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/SleepClassifyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIIIIZI)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/SleepClassifyEvent;->zza:I

    iput p2, p0, Lcom/google/android/gms/location/SleepClassifyEvent;->zzb:I

    iput p3, p0, Lcom/google/android/gms/location/SleepClassifyEvent;->zzc:I

    iput p4, p0, Lcom/google/android/gms/location/SleepClassifyEvent;->zzd:I

    iput p5, p0, Lcom/google/android/gms/location/SleepClassifyEvent;->zze:I

    iput p6, p0, Lcom/google/android/gms/location/SleepClassifyEvent;->zzf:I

    iput p7, p0, Lcom/google/android/gms/location/SleepClassifyEvent;->zzg:I

    iput-boolean p8, p0, Lcom/google/android/gms/location/SleepClassifyEvent;->zzh:Z

    iput p9, p0, Lcom/google/android/gms/location/SleepClassifyEvent;->zzi:I

    return-void
.end method

.method public static extractEvents(Landroid/content/Intent;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/location/SleepClassifyEvent;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/google/android/gms/location/SleepClassifyEvent;->hasEvents(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.location.internal.EXTRA_SLEEP_CLASSIFY_RESULT"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-nez p0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/google/android/gms/location/SleepClassifyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->deserializeFromBytes([BLandroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/location/SleepClassifyEvent;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static hasEvents(Landroid/content/Intent;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "com.google.android.location.internal.EXTRA_SLEEP_CLASSIFY_RESULT"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/location/SleepClassifyEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/location/SleepClassifyEvent;

    iget v1, p0, Lcom/google/android/gms/location/SleepClassifyEvent;->zza:I

    iget v3, p1, Lcom/google/android/gms/location/SleepClassifyEvent;->zza:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/gms/location/SleepClassifyEvent;->zzb:I

    iget p1, p1, Lcom/google/android/gms/location/SleepClassifyEvent;->zzb:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getConfidence()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/SleepClassifyEvent;->zzb:I

    return v0
.end method

.method public getLight()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/SleepClassifyEvent;->zzd:I

    return v0
.end method

.method public getMotion()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/SleepClassifyEvent;->zzc:I

    return v0
.end method

.method public getTimestampMillis()J
    .locals 4

    iget v0, p0, Lcom/google/android/gms/location/SleepClassifyEvent;->zza:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/location/SleepClassifyEvent;->zza:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/location/SleepClassifyEvent;->zzb:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget v0, p0, Lcom/google/android/gms/location/SleepClassifyEvent;->zza:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/location/SleepClassifyEvent;->zzb:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/google/android/gms/location/SleepClassifyEvent;->zzc:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget v6, p0, Lcom/google/android/gms/location/SleepClassifyEvent;->zzd:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v1, v1, 0x6

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v5

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x7

    add-int/2addr v1, v7

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Conf:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Motion:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Light:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget p2, p0, Lcom/google/android/gms/location/SleepClassifyEvent;->zza:I

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 p2, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/location/SleepClassifyEvent;->getConfidence()I

    move-result v1

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 p2, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/location/SleepClassifyEvent;->getMotion()I

    move-result v1

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 p2, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/location/SleepClassifyEvent;->getLight()I

    move-result v1

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 p2, 0x5

    iget v1, p0, Lcom/google/android/gms/location/SleepClassifyEvent;->zze:I

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 p2, 0x6

    iget v1, p0, Lcom/google/android/gms/location/SleepClassifyEvent;->zzf:I

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 p2, 0x7

    iget v1, p0, Lcom/google/android/gms/location/SleepClassifyEvent;->zzg:I

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/16 p2, 0x8

    iget-boolean v1, p0, Lcom/google/android/gms/location/SleepClassifyEvent;->zzh:Z

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0x9

    iget v1, p0, Lcom/google/android/gms/location/SleepClassifyEvent;->zzi:I

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
