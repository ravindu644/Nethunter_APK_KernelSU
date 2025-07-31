.class public Lcom/google/android/gms/location/LocationServices;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-location@@21.2.0"


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GeofencingApi:Lcom/google/android/gms/location/GeofencingApi;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SettingsApi:Lcom/google/android/gms/location/SettingsApi;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/location/zzbi;->zzb:Lcom/google/android/gms/common/api/Api;

    sput-object v0, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/location/zzbb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/location/zzbb;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    new-instance v0, Lcom/google/android/gms/internal/location/zzcr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/location/zzcr;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/LocationServices;->GeofencingApi:Lcom/google/android/gms/location/GeofencingApi;

    new-instance v0, Lcom/google/android/gms/internal/location/zzcz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/location/zzcz;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/LocationServices;->SettingsApi:Lcom/google/android/gms/location/SettingsApi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFusedLocationProviderClient(Landroid/app/Activity;)Lcom/google/android/gms/location/FusedLocationProviderClient;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/location/zzbi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/location/zzbi;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/location/zzbi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/location/zzbi;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getFusedOrientationProviderClient(Landroid/app/Activity;)Lcom/google/android/gms/location/FusedOrientationProviderClient;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/location/zzci;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/location/zzci;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static getFusedOrientationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/FusedOrientationProviderClient;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/location/zzci;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/location/zzci;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getGeofencingClient(Landroid/app/Activity;)Lcom/google/android/gms/location/GeofencingClient;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/location/zzct;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/location/zzct;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static getGeofencingClient(Landroid/content/Context;)Lcom/google/android/gms/location/GeofencingClient;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/location/zzct;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/location/zzct;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getSettingsClient(Landroid/app/Activity;)Lcom/google/android/gms/location/SettingsClient;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/location/zzda;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/location/zzda;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static getSettingsClient(Landroid/content/Context;)Lcom/google/android/gms/location/SettingsClient;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/location/zzda;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/location/zzda;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
