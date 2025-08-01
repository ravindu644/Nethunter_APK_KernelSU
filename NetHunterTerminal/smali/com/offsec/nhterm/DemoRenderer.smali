.class Lcom/offsec/nhterm/DemoRenderer;
.super Lcom/offsec/nhterm/GLSurfaceView_SDL$Renderer;
.source "Video.java"


# static fields
.field public static final mRatelimitTouchEvents:Z = true


# instance fields
.field public accelerometer:Lcom/offsec/nhterm/AccelerometerReader;

.field private mClient:Lcom/offsec/nhterm/xorg/NeoXorgViewClient;

.field private mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mFirstTimeStart:Z

.field private mGl:Ljavax/microedition/khronos/opengles/GL10;

.field private mGlContextLost:Z

.field public mGlSurfaceCreated:Z

.field public mHeight:I

.field mLastPendingResize:I

.field mOrientationFrameHackyCounter:I

.field public mPaused:Z

.field public mWidth:I


# direct methods
.method public constructor <init>(Lcom/offsec/nhterm/xorg/NeoXorgViewClient;)V
    .locals 2

    invoke-direct {p0}, Lcom/offsec/nhterm/GLSurfaceView_SDL$Renderer;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/offsec/nhterm/DemoRenderer;->mLastPendingResize:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/offsec/nhterm/DemoRenderer;->accelerometer:Lcom/offsec/nhterm/AccelerometerReader;

    iput-object v1, p0, Lcom/offsec/nhterm/DemoRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    iput-object v1, p0, Lcom/offsec/nhterm/DemoRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iput-object v1, p0, Lcom/offsec/nhterm/DemoRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v1, p0, Lcom/offsec/nhterm/DemoRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v1, p0, Lcom/offsec/nhterm/DemoRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    iput-boolean v0, p0, Lcom/offsec/nhterm/DemoRenderer;->mGlContextLost:Z

    iput-boolean v0, p0, Lcom/offsec/nhterm/DemoRenderer;->mGlSurfaceCreated:Z

    iput-boolean v0, p0, Lcom/offsec/nhterm/DemoRenderer;->mPaused:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/offsec/nhterm/DemoRenderer;->mFirstTimeStart:Z

    iput v0, p0, Lcom/offsec/nhterm/DemoRenderer;->mWidth:I

    iput v0, p0, Lcom/offsec/nhterm/DemoRenderer;->mHeight:I

    iput v0, p0, Lcom/offsec/nhterm/DemoRenderer;->mOrientationFrameHackyCounter:I

    iput-object p1, p0, Lcom/offsec/nhterm/DemoRenderer;->mClient:Lcom/offsec/nhterm/xorg/NeoXorgViewClient;

    invoke-static {}, Lcom/offsec/nhterm/Clipboard;->get()Lcom/offsec/nhterm/Clipboard;

    move-result-object p1

    iget-object v0, p0, Lcom/offsec/nhterm/DemoRenderer;->mClient:Lcom/offsec/nhterm/xorg/NeoXorgViewClient;

    invoke-interface {v0}, Lcom/offsec/nhterm/xorg/NeoXorgViewClient;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/offsec/nhterm/DemoRenderer$1;

    invoke-direct {v1, p0}, Lcom/offsec/nhterm/DemoRenderer$1;-><init>(Lcom/offsec/nhterm/DemoRenderer;)V

    invoke-virtual {p1, v0, v1}, Lcom/offsec/nhterm/Clipboard;->setListener(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method private PowerOf2(I)I
    .locals 1

    const/4 v0, 0x1

    :goto_0
    if-ge v0, p1, :cond_0

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method static synthetic access$000(Lcom/offsec/nhterm/DemoRenderer;)Lcom/offsec/nhterm/xorg/NeoXorgViewClient;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nhterm/DemoRenderer;->mClient:Lcom/offsec/nhterm/xorg/NeoXorgViewClient;

    return-object p0
.end method

.method static synthetic access$101(Lcom/offsec/nhterm/DemoRenderer;)V
    .locals 0

    invoke-super {p0}, Lcom/offsec/nhterm/GLSurfaceView_SDL$Renderer;->ResetVideoSurface()V

    return-void
.end method

.method static synthetic access$201(Lcom/offsec/nhterm/DemoRenderer;II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/offsec/nhterm/GLSurfaceView_SDL$Renderer;->onWindowResize(II)V

    return-void
.end method

.method static synthetic access$301(Lcom/offsec/nhterm/DemoRenderer;)V
    .locals 0

    invoke-super {p0}, Lcom/offsec/nhterm/GLSurfaceView_SDL$Renderer;->ResetVideoSurface()V

    return-void
.end method

.method static synthetic access$401(Lcom/offsec/nhterm/DemoRenderer;II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/offsec/nhterm/GLSurfaceView_SDL$Renderer;->onWindowResize(II)V

    return-void
.end method

.method public static native nativeClipboardChanged()V
.end method

.method private native nativeDone()V
.end method

.method private native nativeGlContextLost()V
.end method

.method private native nativeInit(Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method private native nativeInitJavaCallbacks()V
.end method

.method private native nativeResize(III)V
.end method

.method public static native nativeTextInput(II)V
.end method

.method public static native nativeTextInputFinished()V
.end method


# virtual methods
.method public cloudLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public cloudSave(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public exitApp()V
    .locals 0

    invoke-direct {p0}, Lcom/offsec/nhterm/DemoRenderer;->nativeDone()V

    return-void
.end method

.method public getAdvertisementParams([I)V
    .locals 0

    return-void
.end method

.method public getClipboardText()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/offsec/nhterm/Clipboard;->get()Lcom/offsec/nhterm/Clipboard;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nhterm/DemoRenderer;->mClient:Lcom/offsec/nhterm/xorg/NeoXorgViewClient;

    invoke-interface {v1}, Lcom/offsec/nhterm/xorg/NeoXorgViewClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nhterm/Clipboard;->get(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideScreenKeyboard()V
    .locals 2

    new-instance v0, Lcom/offsec/nhterm/DemoRenderer$2Callback;

    invoke-direct {v0, p0}, Lcom/offsec/nhterm/DemoRenderer$2Callback;-><init>(Lcom/offsec/nhterm/DemoRenderer;)V

    iget-object v1, p0, Lcom/offsec/nhterm/DemoRenderer;->mClient:Lcom/offsec/nhterm/xorg/NeoXorgViewClient;

    iput-object v1, v0, Lcom/offsec/nhterm/DemoRenderer$2Callback;->client:Lcom/offsec/nhterm/xorg/NeoXorgViewClient;

    iget-object v1, p0, Lcom/offsec/nhterm/DemoRenderer;->mClient:Lcom/offsec/nhterm/xorg/NeoXorgViewClient;

    invoke-interface {v1, v0}, Lcom/offsec/nhterm/xorg/NeoXorgViewClient;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isScreenKeyboardShown()I
    .locals 1

    iget-object v0, p0, Lcom/offsec/nhterm/DemoRenderer;->mClient:Lcom/offsec/nhterm/xorg/NeoXorgViewClient;

    invoke-interface {v0}, Lcom/offsec/nhterm/xorg/NeoXorgViewClient;->isScreenKeyboardShown()Z

    move-result v0

    return v0
.end method

.method public native nativeGlContextLostAsyncEvent()V
.end method

.method public native nativeGlContextRecreated()V
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    iput-object p1, p0, Lcom/offsec/nhterm/DemoRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {p0}, Lcom/offsec/nhterm/DemoRenderer;->SwapBuffers()Z

    invoke-direct {p0}, Lcom/offsec/nhterm/DemoRenderer;->nativeInitJavaCallbacks()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/offsec/nhterm/DemoRenderer;->mGlContextLost:Z

    iget-object v0, p0, Lcom/offsec/nhterm/DemoRenderer;->mClient:Lcom/offsec/nhterm/xorg/NeoXorgViewClient;

    invoke-static {v0}, Lcom/offsec/nhterm/Settings;->Apply(Lcom/offsec/nhterm/xorg/NeoXorgViewClient;)V

    iget v0, p0, Lcom/offsec/nhterm/DemoRenderer;->mWidth:I

    iget v1, p0, Lcom/offsec/nhterm/DemoRenderer;->mHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DISPLAY_RESOLUTION_WIDTH"

    invoke-static {v1, v0}, Lcom/offsec/nhterm/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/offsec/nhterm/DemoRenderer;->mWidth:I

    iget v1, p0, Lcom/offsec/nhterm/DemoRenderer;->mHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DISPLAY_RESOLUTION_HEIGHT"

    invoke-static {v1, v0}, Lcom/offsec/nhterm/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/offsec/nhterm/NeoAccelerometerReader;

    iget-object v1, p0, Lcom/offsec/nhterm/DemoRenderer;->mClient:Lcom/offsec/nhterm/xorg/NeoXorgViewClient;

    invoke-interface {v1}, Lcom/offsec/nhterm/xorg/NeoXorgViewClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/offsec/nhterm/NeoAccelerometerReader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/offsec/nhterm/DemoRenderer;->accelerometer:Lcom/offsec/nhterm/AccelerometerReader;

    sget-boolean v0, Lcom/offsec/nhterm/Globals;->MoveMouseWithGyroscope:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/offsec/nhterm/DemoRenderer;->startAccelerometerGyroscope(I)V

    :cond_0
    sget v0, Lcom/offsec/nhterm/Globals;->AudioBufferConfig:I

    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    :cond_1
    sget-object v0, Lcom/offsec/nhterm/Globals;->CommandLine:Ljava/lang/String;

    sget-object v2, Lcom/offsec/nhterm/Globals;->DataDir:Ljava/lang/String;

    sget-boolean v3, Lcom/offsec/nhterm/Globals;->SwVideoMode:Z

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/offsec/nhterm/Globals;->MultiThreadedVideo:Z

    if-nez v3, :cond_4

    :cond_2
    sget-boolean v3, Lcom/offsec/nhterm/Globals;->CompatibilityHacksVideo:Z

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_0
    invoke-direct {p0, v2, v0, v1, p1}, Lcom/offsec/nhterm/DemoRenderer;->nativeInit(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "libSDL: DemoRenderer.onSurfaceChanged(): paused "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/offsec/nhterm/DemoRenderer;->mPaused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mFirstTimeStart "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/offsec/nhterm/DemoRenderer;->mFirstTimeStart:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " w "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " h "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDL"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ge p2, p3, :cond_0

    sget-boolean v0, Lcom/offsec/nhterm/Globals;->HorizontalOrientation:Z

    if-eqz v0, :cond_0

    move v2, p3

    move p3, p2

    move p2, v2

    :cond_0
    rem-int/lit8 v0, p2, 0x2

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/offsec/nhterm/DemoRenderer;->mWidth:I

    rem-int/lit8 v0, p3, 0x2

    sub-int/2addr p3, v0

    iput p3, p0, Lcom/offsec/nhterm/DemoRenderer;->mHeight:I

    iput-object p1, p0, Lcom/offsec/nhterm/DemoRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    sget-boolean p1, Lcom/offsec/nhterm/Globals;->KeepAspectRatio:Z

    invoke-direct {p0, p2, p3, p1}, Lcom/offsec/nhterm/DemoRenderer;->nativeResize(III)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "libSDL: DemoRenderer.onSurfaceCreated(): paused "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/offsec/nhterm/DemoRenderer;->mPaused:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mFirstTimeStart "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/offsec/nhterm/DemoRenderer;->mFirstTimeStart:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SDL"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/offsec/nhterm/DemoRenderer;->mGlSurfaceCreated:Z

    iput-object p1, p0, Lcom/offsec/nhterm/DemoRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    iget-boolean p1, p0, Lcom/offsec/nhterm/DemoRenderer;->mPaused:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/offsec/nhterm/DemoRenderer;->mFirstTimeStart:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/offsec/nhterm/DemoRenderer;->nativeGlContextRecreated()V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/offsec/nhterm/DemoRenderer;->mFirstTimeStart:Z

    return-void
.end method

.method public onSurfaceDestroyed()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "libSDL: DemoRenderer.onSurfaceDestroyed(): paused "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/offsec/nhterm/DemoRenderer;->mPaused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mFirstTimeStart "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/offsec/nhterm/DemoRenderer;->mFirstTimeStart:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDL"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/offsec/nhterm/DemoRenderer;->mGlSurfaceCreated:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/offsec/nhterm/DemoRenderer;->mGlContextLost:Z

    invoke-direct {p0}, Lcom/offsec/nhterm/DemoRenderer;->nativeGlContextLost()V

    return-void
.end method

.method public onWindowResize(II)V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nhterm/DemoRenderer;->mClient:Lcom/offsec/nhterm/xorg/NeoXorgViewClient;

    invoke-interface {v0}, Lcom/offsec/nhterm/xorg/NeoXorgViewClient;->isRunningOnOUYA()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "libSDL: DemoRenderer.onWindowResize(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDL"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/offsec/nhterm/DemoRenderer;->mLastPendingResize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/offsec/nhterm/DemoRenderer;->mLastPendingResize:I

    iget-object v1, p0, Lcom/offsec/nhterm/DemoRenderer;->mClient:Lcom/offsec/nhterm/xorg/NeoXorgViewClient;

    invoke-interface {v1}, Lcom/offsec/nhterm/xorg/NeoXorgViewClient;->getGLView()Lcom/offsec/nhterm/NeoGLView;

    move-result-object v1

    new-instance v2, Lcom/offsec/nhterm/DemoRenderer$2;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/offsec/nhterm/DemoRenderer$2;-><init>(Lcom/offsec/nhterm/DemoRenderer;III)V

    const-wide/16 p1, 0x7d0

    invoke-virtual {v1, v2, p1, p2}, Lcom/offsec/nhterm/NeoGLView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public openExternalApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_1

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    iget-object p1, p0, Lcom/offsec/nhterm/DemoRenderer;->mClient:Lcom/offsec/nhterm/xorg/NeoXorgViewClient;

    invoke-interface {p1}, Lcom/offsec/nhterm/xorg/NeoXorgViewClient;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "libSDL: cannot start external app: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SDL"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public requestNewAdvertisement()V
    .locals 0

    return-void
.end method

.method public restartMyself(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setAdvertisementPosition(II)V
    .locals 0

    return-void
.end method

.method public setAdvertisementVisible(I)V
    .locals 0

    return-void
.end method

.method public setClipboardText(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/offsec/nhterm/Clipboard;->get()Lcom/offsec/nhterm/Clipboard;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nhterm/DemoRenderer;->mClient:Lcom/offsec/nhterm/xorg/NeoXorgViewClient;

    invoke-interface {v1}, Lcom/offsec/nhterm/xorg/NeoXorgViewClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/offsec/nhterm/Clipboard;->set(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public setConfigOptionFromSDL(II)V
    .locals 0

    invoke-static {p1, p2}, Lcom/offsec/nhterm/Settings;->setConfigOptionFromSDL(II)V

    return-void
.end method

.method public setScreenKeyboardHintMessage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/offsec/nhterm/DemoRenderer;->mClient:Lcom/offsec/nhterm/xorg/NeoXorgViewClient;

    invoke-interface {v0, p1}, Lcom/offsec/nhterm/xorg/NeoXorgViewClient;->setScreenKeyboardHintMessage(Ljava/lang/String;)V

    return-void
.end method

.method public setSystemMousePointerVisible(I)V
    .locals 1

    iget-object v0, p0, Lcom/offsec/nhterm/DemoRenderer;->mClient:Lcom/offsec/nhterm/xorg/NeoXorgViewClient;

    invoke-interface {v0, p1}, Lcom/offsec/nhterm/xorg/NeoXorgViewClient;->setSystemMousePointerVisible(I)V

    return-void
.end method

.method public showInternalScreenKeyboard(I)V
    .locals 1

    iget-object v0, p0, Lcom/offsec/nhterm/DemoRenderer;->mClient:Lcom/offsec/nhterm/xorg/NeoXorgViewClient;

    invoke-interface {v0, p1}, Lcom/offsec/nhterm/xorg/NeoXorgViewClient;->showScreenKeyboardWithoutTextInputField(I)V

    return-void
.end method

.method public showScreenKeyboard(Ljava/lang/String;I)V
    .locals 1

    new-instance p2, Lcom/offsec/nhterm/DemoRenderer$1Callback;

    invoke-direct {p2, p0}, Lcom/offsec/nhterm/DemoRenderer$1Callback;-><init>(Lcom/offsec/nhterm/DemoRenderer;)V

    iget-object v0, p0, Lcom/offsec/nhterm/DemoRenderer;->mClient:Lcom/offsec/nhterm/xorg/NeoXorgViewClient;

    iput-object v0, p2, Lcom/offsec/nhterm/DemoRenderer$1Callback;->client:Lcom/offsec/nhterm/xorg/NeoXorgViewClient;

    iput-object p1, p2, Lcom/offsec/nhterm/DemoRenderer$1Callback;->oldText:Ljava/lang/String;

    iget-object p1, p0, Lcom/offsec/nhterm/DemoRenderer;->mClient:Lcom/offsec/nhterm/xorg/NeoXorgViewClient;

    invoke-interface {p1, p2}, Lcom/offsec/nhterm/xorg/NeoXorgViewClient;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showScreenKeyboardWithoutTextInputField()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nhterm/DemoRenderer;->mClient:Lcom/offsec/nhterm/xorg/NeoXorgViewClient;

    sget v1, Lcom/offsec/nhterm/Globals;->TextInputKeyboard:I

    invoke-interface {v0, v1}, Lcom/offsec/nhterm/xorg/NeoXorgViewClient;->showScreenKeyboardWithoutTextInputField(I)V

    return-void
.end method

.method public startAccelerometerGyroscope(I)V
    .locals 1

    iget-object v0, p0, Lcom/offsec/nhterm/DemoRenderer;->accelerometer:Lcom/offsec/nhterm/AccelerometerReader;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v0, Lcom/offsec/nhterm/AccelerometerReader;->openedBySDL:Z

    iget-object p1, p0, Lcom/offsec/nhterm/DemoRenderer;->accelerometer:Lcom/offsec/nhterm/AccelerometerReader;

    iget-boolean p1, p1, Lcom/offsec/nhterm/AccelerometerReader;->openedBySDL:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/offsec/nhterm/DemoRenderer;->mPaused:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/offsec/nhterm/DemoRenderer;->accelerometer:Lcom/offsec/nhterm/AccelerometerReader;

    invoke-virtual {p1}, Lcom/offsec/nhterm/AccelerometerReader;->start()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/offsec/nhterm/DemoRenderer;->accelerometer:Lcom/offsec/nhterm/AccelerometerReader;

    invoke-virtual {p1}, Lcom/offsec/nhterm/AccelerometerReader;->stop()V

    :goto_1
    return-void
.end method

.method public swapBuffers()I
    .locals 4

    invoke-super {p0}, Lcom/offsec/nhterm/GLSurfaceView_SDL$Renderer;->SwapBuffers()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/offsec/nhterm/Globals;->NonBlockingSwapBuffers:Z

    if-eqz v0, :cond_0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/offsec/nhterm/DemoRenderer;->mGlContextLost:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/offsec/nhterm/DemoRenderer;->mGlContextLost:Z

    iget-object v0, p0, Lcom/offsec/nhterm/DemoRenderer;->mClient:Lcom/offsec/nhterm/xorg/NeoXorgViewClient;

    invoke-interface {v0}, Lcom/offsec/nhterm/xorg/NeoXorgViewClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/offsec/nhterm/Settings;->SetupTouchscreenKeyboardGraphics(Landroid/content/Context;)V

    invoke-super {p0}, Lcom/offsec/nhterm/GLSurfaceView_SDL$Renderer;->SwapBuffers()Z

    :cond_1
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/offsec/nhterm/DemoRenderer;->mClient:Lcom/offsec/nhterm/xorg/NeoXorgViewClient;

    invoke-interface {v0}, Lcom/offsec/nhterm/xorg/NeoXorgViewClient;->isScreenKeyboardShown()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/offsec/nhterm/DemoRenderer;->mClient:Lcom/offsec/nhterm/xorg/NeoXorgViewClient;

    invoke-interface {v0}, Lcom/offsec/nhterm/xorg/NeoXorgViewClient;->isKeyboardWithoutTextInputShown()Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/16 v2, 0x32

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_2
    :goto_0
    iget v0, p0, Lcom/offsec/nhterm/DemoRenderer;->mOrientationFrameHackyCounter:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/offsec/nhterm/DemoRenderer;->mOrientationFrameHackyCounter:I

    const/16 v3, 0x64

    if-le v0, v3, :cond_3

    iput v1, p0, Lcom/offsec/nhterm/DemoRenderer;->mOrientationFrameHackyCounter:I

    iget-object v0, p0, Lcom/offsec/nhterm/DemoRenderer;->mClient:Lcom/offsec/nhterm/xorg/NeoXorgViewClient;

    invoke-interface {v0}, Lcom/offsec/nhterm/xorg/NeoXorgViewClient;->updateScreenOrientation()V

    :cond_3
    return v2

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
