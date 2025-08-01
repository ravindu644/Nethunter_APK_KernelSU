.class Lcom/offsec/nhterm/AccelerometerReader;
.super Ljava/lang/Object;
.source "Accelerometer.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nhterm/AccelerometerReader$GyroscopeListener;,
        Lcom/offsec/nhterm/AccelerometerReader$OrientationListener;
    }
.end annotation


# static fields
.field public static final gyro:Lcom/offsec/nhterm/AccelerometerReader$GyroscopeListener;

.field public static final orientation:Lcom/offsec/nhterm/AccelerometerReader$OrientationListener;


# instance fields
.field private _manager:Landroid/hardware/SensorManager;

.field public openedBySDL:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/offsec/nhterm/AccelerometerReader$GyroscopeListener;

    invoke-direct {v0}, Lcom/offsec/nhterm/AccelerometerReader$GyroscopeListener;-><init>()V

    sput-object v0, Lcom/offsec/nhterm/AccelerometerReader;->gyro:Lcom/offsec/nhterm/AccelerometerReader$GyroscopeListener;

    new-instance v0, Lcom/offsec/nhterm/AccelerometerReader$OrientationListener;

    invoke-direct {v0}, Lcom/offsec/nhterm/AccelerometerReader$OrientationListener;-><init>()V

    sput-object v0, Lcom/offsec/nhterm/AccelerometerReader;->orientation:Lcom/offsec/nhterm/AccelerometerReader$OrientationListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/offsec/nhterm/AccelerometerReader;->_manager:Landroid/hardware/SensorManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/offsec/nhterm/AccelerometerReader;->openedBySDL:Z

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/offsec/nhterm/AccelerometerReader;->_manager:Landroid/hardware/SensorManager;

    return-void
.end method

.method static synthetic access$000(FFF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/offsec/nhterm/AccelerometerReader;->nativeGyroscope(FFF)V

    return-void
.end method

.method static synthetic access$100(FFF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/offsec/nhterm/AccelerometerReader;->nativeOrientation(FFF)V

    return-void
.end method

.method private static native nativeAccelerometer(FFF)V
.end method

.method private static native nativeGyroscope(FFF)V
.end method

.method private static native nativeOrientation(FFF)V
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    sget-boolean v0, Lcom/offsec/nhterm/Globals;->HorizontalOrientation:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/offsec/nhterm/AccelerometerReader;->gyro:Lcom/offsec/nhterm/AccelerometerReader$GyroscopeListener;

    iget-boolean v0, v0, Lcom/offsec/nhterm/AccelerometerReader$GyroscopeListener;->invertedOrientation:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    neg-float v0, v0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v1

    invoke-static {v0, v2, p1}, Lcom/offsec/nhterm/AccelerometerReader;->nativeAccelerometer(FFF)V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    neg-float v2, v2

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v1

    invoke-static {v0, v2, p1}, Lcom/offsec/nhterm/AccelerometerReader;->nativeAccelerometer(FFF)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v3, v2

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v1

    invoke-static {v0, v2, p1}, Lcom/offsec/nhterm/AccelerometerReader;->nativeAccelerometer(FFF)V

    :goto_0
    return-void
.end method

.method public declared-synchronized start()V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/offsec/nhterm/Globals;->UseAccelerometerAsArrowKeys:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/offsec/nhterm/Globals;->AppUsesAccelerometer:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/offsec/nhterm/AccelerometerReader;->_manager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "SDL"

    const-string v2, "libSDL: starting accelerometer"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/offsec/nhterm/AccelerometerReader;->_manager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, p0, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_1
    sget-boolean v0, Lcom/offsec/nhterm/Globals;->AppUsesGyroscope:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/offsec/nhterm/Globals;->MoveMouseWithGyroscope:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/offsec/nhterm/AccelerometerReader;->_manager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_3

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "SDL"

    const-string v3, "libSDL: starting gyroscope"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/offsec/nhterm/AccelerometerReader;->_manager:Landroid/hardware/SensorManager;

    sget-object v3, Lcom/offsec/nhterm/AccelerometerReader;->gyro:Lcom/offsec/nhterm/AccelerometerReader$GyroscopeListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v3, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_3
    sget-boolean v0, Lcom/offsec/nhterm/Globals;->AppUsesOrientationSensor:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/offsec/nhterm/AccelerometerReader;->_manager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_4

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "SDL"

    const-string v3, "libSDL: starting orientation sensor"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/offsec/nhterm/AccelerometerReader;->_manager:Landroid/hardware/SensorManager;

    sget-object v3, Lcom/offsec/nhterm/AccelerometerReader;->orientation:Lcom/offsec/nhterm/AccelerometerReader$OrientationListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v3, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/offsec/nhterm/AccelerometerReader;->_manager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    const-string v0, "SDL"

    const-string v1, "libSDL: stopping accelerometer/gyroscope/orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/offsec/nhterm/AccelerometerReader;->_manager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/offsec/nhterm/AccelerometerReader;->_manager:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/offsec/nhterm/AccelerometerReader;->gyro:Lcom/offsec/nhterm/AccelerometerReader$GyroscopeListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/offsec/nhterm/AccelerometerReader;->_manager:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/offsec/nhterm/AccelerometerReader;->orientation:Lcom/offsec/nhterm/AccelerometerReader$OrientationListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
