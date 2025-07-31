.class public final Lcom/google/android/gms/internal/location/zzei;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-location@@21.2.0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/location/zzei;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:I

.field private final zzb:Lcom/google/android/gms/internal/location/zzeg;

.field private final zzc:Lcom/google/android/gms/location/zzz;

.field private final zzd:Lcom/google/android/gms/location/zzw;

.field private final zze:Landroid/app/PendingIntent;

.field private final zzf:Lcom/google/android/gms/internal/location/zzr;

.field private final zzg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/location/zzej;

    invoke-direct {v0}, Lcom/google/android/gms/internal/location/zzej;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/location/zzei;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/location/zzeg;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/location/zzei;->zza:I

    iput-object p2, p0, Lcom/google/android/gms/internal/location/zzei;->zzb:Lcom/google/android/gms/internal/location/zzeg;

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    invoke-static {p3}, Lcom/google/android/gms/location/zzy;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/location/zzz;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/internal/location/zzei;->zzc:Lcom/google/android/gms/location/zzz;

    iput-object p5, p0, Lcom/google/android/gms/internal/location/zzei;->zze:Landroid/app/PendingIntent;

    if-eqz p4, :cond_1

    invoke-static {p4}, Lcom/google/android/gms/location/zzv;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/location/zzw;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, p1

    :goto_1
    iput-object p2, p0, Lcom/google/android/gms/internal/location/zzei;->zzd:Lcom/google/android/gms/location/zzw;

    if-eqz p6, :cond_3

    const-string p1, "com.google.android.gms.location.internal.IFusedLocationProviderCallback"

    invoke-interface {p6, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    instance-of p2, p1, Lcom/google/android/gms/internal/location/zzr;

    if-eqz p2, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/location/zzr;

    goto :goto_2

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/location/zzp;

    invoke-direct {p1, p6}, Lcom/google/android/gms/internal/location/zzp;-><init>(Landroid/os/IBinder;)V

    :cond_3
    :goto_2
    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzei;->zzf:Lcom/google/android/gms/internal/location/zzr;

    iput-object p7, p0, Lcom/google/android/gms/internal/location/zzei;->zzg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    iget v0, p0, Lcom/google/android/gms/internal/location/zzei;->zza:I

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzei;->zzb:Lcom/google/android/gms/internal/location/zzeg;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v0, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzei;->zzc:Lcom/google/android/gms/location/zzz;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/location/zzz;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    const/4 v4, 0x3

    invoke-static {p1, v4, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v0, 0x4

    iget-object v4, p0, Lcom/google/android/gms/internal/location/zzei;->zze:Landroid/app/PendingIntent;

    invoke-static {p1, v0, v4, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lcom/google/android/gms/internal/location/zzei;->zzd:Lcom/google/android/gms/location/zzw;

    if-nez p2, :cond_1

    move-object p2, v2

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/location/zzw;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    :goto_1
    const/4 v0, 0x5

    invoke-static {p1, v0, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    iget-object p2, p0, Lcom/google/android/gms/internal/location/zzei;->zzf:Lcom/google/android/gms/internal/location/zzr;

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {p2}, Lcom/google/android/gms/internal/location/zzr;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_2
    const/4 p2, 0x6

    invoke-static {p1, p2, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/16 p2, 0x8

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzei;->zzg:Ljava/lang/String;

    invoke-static {p1, p2, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
