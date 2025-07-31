.class public final Lcom/google/android/gms/location/GeofencingRequest$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-location@@21.2.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/GeofencingRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Ljava/util/List;

.field private zzb:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/location/GeofencingRequest$Builder;->zza:Ljava/util/List;

    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/gms/location/GeofencingRequest$Builder;->zzb:I

    return-void
.end method


# virtual methods
.method public addGeofence(Lcom/google/android/gms/location/Geofence;)Lcom/google/android/gms/location/GeofencingRequest$Builder;
    .locals 2

    instance-of v0, p1, Lcom/google/android/gms/internal/location/zzek;

    const-string v1, "Geofence must be created using Geofence.Builder."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/location/GeofencingRequest$Builder;->zza:Ljava/util/List;

    check-cast p1, Lcom/google/android/gms/internal/location/zzek;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addGeofences(Ljava/util/List;)Lcom/google/android/gms/location/GeofencingRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/location/Geofence;",
            ">;)",
            "Lcom/google/android/gms/location/GeofencingRequest$Builder;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/Geofence;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/location/GeofencingRequest$Builder;->addGeofence(Lcom/google/android/gms/location/Geofence;)Lcom/google/android/gms/location/GeofencingRequest$Builder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public build()Lcom/google/android/gms/location/GeofencingRequest;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/location/GeofencingRequest$Builder;->zza:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "No geofence has been added to this request."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/location/GeofencingRequest;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gms/location/GeofencingRequest$Builder;->zza:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget v2, p0, Lcom/google/android/gms/location/GeofencingRequest$Builder;->zzb:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/location/GeofencingRequest;-><init>(Ljava/util/List;ILjava/lang/String;)V

    return-object v0
.end method

.method public setInitialTrigger(I)Lcom/google/android/gms/location/GeofencingRequest$Builder;
    .locals 0

    and-int/lit8 p1, p1, 0x7

    iput p1, p0, Lcom/google/android/gms/location/GeofencingRequest$Builder;->zzb:I

    return-object p0
.end method
