.class final Lcom/google/android/gms/internal/location/zzev;
.super Lcom/google/android/gms/internal/location/zzet;
.source "com.google.android.gms:play-services-location@@21.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/location/zzex;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/location/zzex;I)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/location/zzex;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/location/zzet;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzev;->zza:Lcom/google/android/gms/internal/location/zzex;

    return-void
.end method


# virtual methods
.method protected final zza(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzev;->zza:Lcom/google/android/gms/internal/location/zzex;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/location/zzex;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
