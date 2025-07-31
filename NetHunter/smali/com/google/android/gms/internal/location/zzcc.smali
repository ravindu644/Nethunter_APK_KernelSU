.class final synthetic Lcom/google/android/gms/internal/location/zzcc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-location@@21.2.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/location/zzcc;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/location/zzcc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/location/zzcc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/location/zzcc;->zza:Lcom/google/android/gms/internal/location/zzcc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/internal/location/zzdz;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/location/zzdz;->zzz(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
