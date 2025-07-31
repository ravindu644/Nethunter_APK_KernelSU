.class public Lcom/offsec/nethunter/gps/GpsPosition;
.super Ljava/lang/Object;
.source "GpsPosition.java"


# instance fields
.field private final altitude:F

.field private final direction:F

.field private final latitude:F

.field private final longitude:F

.field private final quality:I

.field public final time:F

.field private final velocity:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/offsec/nethunter/gps/GpsPosition;->time:F

    iput v0, p0, Lcom/offsec/nethunter/gps/GpsPosition;->latitude:F

    iput v0, p0, Lcom/offsec/nethunter/gps/GpsPosition;->longitude:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/offsec/nethunter/gps/GpsPosition;->quality:I

    iput v0, p0, Lcom/offsec/nethunter/gps/GpsPosition;->direction:F

    iput v0, p0, Lcom/offsec/nethunter/gps/GpsPosition;->altitude:F

    iput v0, p0, Lcom/offsec/nethunter/gps/GpsPosition;->velocity:F

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const/4 v4, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string v2, "GpsPosition: latitude: %f, longitude: %f, time: %f, quality: %d, direction: %f, altitude: %f, velocity: %f"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateIsfixed()V
    .locals 0

    return-void
.end method
