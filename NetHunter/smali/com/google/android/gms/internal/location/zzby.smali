.class final synthetic Lcom/google/android/gms/internal/location/zzby;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-location@@21.2.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/location/zzby;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/location/zzby;

    invoke-direct {v0}, Lcom/google/android/gms/internal/location/zzby;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/location/zzby;->zza:Lcom/google/android/gms/internal/location/zzby;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/internal/location/zzdz;

    new-instance v0, Lcom/google/android/gms/location/LastLocationRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/location/LastLocationRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/location/LastLocationRequest$Builder;->build()Lcom/google/android/gms/location/LastLocationRequest;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/location/zzdz;->zzq(Lcom/google/android/gms/location/LastLocationRequest;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
