.class public final Lcom/google/android/gms/location/GeofenceStatusCodes;
.super Lcom/google/android/gms/common/api/CommonStatusCodes;
.source "com.google.android.gms:play-services-location@@21.2.0"


# static fields
.field public static final GEOFENCE_INSUFFICIENT_LOCATION_PERMISSION:I = 0x3ec

.field public static final GEOFENCE_NOT_AVAILABLE:I = 0x3e8

.field public static final GEOFENCE_REQUEST_TOO_FREQUENT:I = 0x3ed

.field public static final GEOFENCE_TOO_MANY_GEOFENCES:I = 0x3e9

.field public static final GEOFENCE_TOO_MANY_PENDING_INTENTS:I = 0x3ea


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;-><init>()V

    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    invoke-static {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p0, "GEOFENCE_INSUFFICIENT_LOCATION_PERMISSION"

    return-object p0

    :pswitch_2
    const-string p0, "GEOFENCE_TOO_MANY_PENDING_INTENTS"

    return-object p0

    :pswitch_3
    const-string p0, "GEOFENCE_TOO_MANY_GEOFENCES"

    return-object p0

    :pswitch_4
    const-string p0, "GEOFENCE_NOT_AVAILABLE"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static zza(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x3ee

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0xd

    :cond_1
    :goto_0
    return p0
.end method
