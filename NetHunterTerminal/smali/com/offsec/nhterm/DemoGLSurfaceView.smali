.class Lcom/offsec/nhterm/DemoGLSurfaceView;
.super Lcom/offsec/nhterm/GLSurfaceView_SDL;
.source "Video.java"


# instance fields
.field mClient:Lcom/offsec/nhterm/xorg/NeoXorgViewClient;

.field mRenderer:Lcom/offsec/nhterm/DemoRenderer;


# direct methods
.method public constructor <init>(Lcom/offsec/nhterm/xorg/NeoXorgViewClient;)V
    .locals 7

    invoke-interface {p1}, Lcom/offsec/nhterm/xorg/NeoXorgViewClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/offsec/nhterm/GLSurfaceView_SDL;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/offsec/nhterm/DemoGLSurfaceView;->mClient:Lcom/offsec/nhterm/xorg/NeoXorgViewClient;

    sget v2, Lcom/offsec/nhterm/Globals;->VideoDepthBpp:I

    sget-boolean v3, Lcom/offsec/nhterm/Globals;->NeedDepthBuffer:Z

    sget-boolean v4, Lcom/offsec/nhterm/Globals;->NeedStencilBuffer:Z

    sget-boolean v5, Lcom/offsec/nhterm/Globals;->NeedGles2:Z

    sget-boolean v6, Lcom/offsec/nhterm/Globals;->NeedGles3:Z

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/offsec/nhterm/DemoGLSurfaceView;->setEGLConfigChooser(IZZZZ)V

    new-instance v0, Lcom/offsec/nhterm/DemoRenderer;

    invoke-direct {v0, p1}, Lcom/offsec/nhterm/DemoRenderer;-><init>(Lcom/offsec/nhterm/xorg/NeoXorgViewClient;)V

    iput-object v0, p0, Lcom/offsec/nhterm/DemoGLSurfaceView;->mRenderer:Lcom/offsec/nhterm/DemoRenderer;

    invoke-virtual {p0, v0}, Lcom/offsec/nhterm/DemoGLSurfaceView;->setRenderer(Lcom/offsec/nhterm/GLSurfaceView_SDL$Renderer;)V

    invoke-interface {p1}, Lcom/offsec/nhterm/xorg/NeoXorgViewClient;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/offsec/nhterm/DifferentTouchInput;->registerInputManagerCallbacks(Landroid/content/Context;)V

    return-void
.end method

.method public static native nativeGamepadAnalogJoystickInput(FFFFFFFFI)V
.end method

.method public static native nativeHardwareMouseDetected(I)V
.end method

.method public static native nativeKey(IIII)I
.end method

.method public static native nativeMotionEvent(IIIIII)V
.end method

.method public static native nativeMouseButtonsPressed(II)V
.end method

.method public static native nativeMouseWheel(II)V
.end method

.method public static native nativeScreenKeyboardShown(I)V
.end method

.method public static native nativeScreenVisibleRect(IIII)V
.end method


# virtual methods
.method public exitApp()V
    .locals 1

    iget-object v0, p0, Lcom/offsec/nhterm/DemoGLSurfaceView;->mRenderer:Lcom/offsec/nhterm/DemoRenderer;

    invoke-virtual {v0}, Lcom/offsec/nhterm/DemoRenderer;->exitApp()V

    return-void
.end method

.method public isPaused()Z
    .locals 1

    iget-object v0, p0, Lcom/offsec/nhterm/DemoGLSurfaceView;->mRenderer:Lcom/offsec/nhterm/DemoRenderer;

    iget-boolean v0, v0, Lcom/offsec/nhterm/DemoRenderer;->mPaused:Z

    return v0
.end method

.method public limitEventRate(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/offsec/nhterm/DemoGLSurfaceView;->mRenderer:Lcom/offsec/nhterm/DemoRenderer;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/offsec/nhterm/DemoGLSurfaceView;->mRenderer:Lcom/offsec/nhterm/DemoRenderer;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :try_start_1
    const-string v0, "SDL"

    const-string v1, "DemoGLSurfaceView::limitEventRate(): Who dared to interrupt my slumber?"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    :goto_0
    monitor-exit p1

    :cond_1
    return-void

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    sget-object v0, Lcom/offsec/nhterm/DifferentTouchInput;->touchInput:Lcom/offsec/nhterm/DifferentTouchInput;

    invoke-virtual {v0, p1}, Lcom/offsec/nhterm/DifferentTouchInput;->processGenericEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, p1}, Lcom/offsec/nhterm/DemoGLSurfaceView;->limitEventRate(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v0

    const/16 v2, 0x2002

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    const/4 p1, 0x2

    invoke-static {p1, v1}, Lcom/offsec/nhterm/DemoGLSurfaceView;->nativeMouseButtonsPressed(II)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/offsec/nhterm/DemoGLSurfaceView;->mClient:Lcom/offsec/nhterm/xorg/NeoXorgViewClient;

    invoke-interface {v0}, Lcom/offsec/nhterm/xorg/NeoXorgViewClient;->isKeyboardWithoutTextInputShown()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v2

    invoke-static {v2}, Lcom/offsec/nhterm/DifferentTouchInput;->processGamepadDeviceId(Landroid/view/InputDevice;)I

    move-result v2

    invoke-static {p1, v1, v0, v2}, Lcom/offsec/nhterm/DemoGLSurfaceView;->nativeKey(IIII)I

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0, p1, p2}, Lcom/offsec/nhterm/GLSurfaceView_SDL;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-static {v1, p2, v2, p1}, Lcom/offsec/nhterm/DemoGLSurfaceView;->nativeKey(IIII)I

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-static {v1, p1, v2, p1}, Lcom/offsec/nhterm/DemoGLSurfaceView;->nativeKey(IIII)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p2
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v0

    const/16 v3, 0x2002

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_0

    const/4 p1, 0x2

    invoke-static {p1, v2}, Lcom/offsec/nhterm/DemoGLSurfaceView;->nativeMouseButtonsPressed(II)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/offsec/nhterm/DemoGLSurfaceView;->mClient:Lcom/offsec/nhterm/xorg/NeoXorgViewClient;

    invoke-interface {v0}, Lcom/offsec/nhterm/xorg/NeoXorgViewClient;->isKeyboardWithoutTextInputShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/offsec/nhterm/DemoGLSurfaceView;->mClient:Lcom/offsec/nhterm/xorg/NeoXorgViewClient;

    invoke-interface {p1, v2}, Lcom/offsec/nhterm/xorg/NeoXorgViewClient;->showScreenKeyboardWithoutTextInputField(I)V

    return v1

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v3

    invoke-static {v3}, Lcom/offsec/nhterm/DifferentTouchInput;->processGamepadDeviceId(Landroid/view/InputDevice;)I

    move-result v3

    invoke-static {p1, v2, v0, v3}, Lcom/offsec/nhterm/DemoGLSurfaceView;->nativeKey(IIII)I

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0, p1, p2}, Lcom/offsec/nhterm/GLSurfaceView_SDL;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public onPause()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "libSDL: DemoGLSurfaceView.onPause(): mRenderer.mGlSurfaceCreated "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/offsec/nhterm/DemoGLSurfaceView;->mRenderer:Lcom/offsec/nhterm/DemoRenderer;

    iget-boolean v1, v1, Lcom/offsec/nhterm/DemoRenderer;->mGlSurfaceCreated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mRenderer.mPaused "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/offsec/nhterm/DemoGLSurfaceView;->mRenderer:Lcom/offsec/nhterm/DemoRenderer;

    iget-boolean v1, v1, Lcom/offsec/nhterm/DemoRenderer;->mPaused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/offsec/nhterm/DemoGLSurfaceView;->mRenderer:Lcom/offsec/nhterm/DemoRenderer;

    iget-boolean v1, v1, Lcom/offsec/nhterm/DemoRenderer;->mPaused:Z

    if-eqz v1, :cond_0

    const-string v1, " - not doing anything"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDL"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/offsec/nhterm/DemoGLSurfaceView;->mRenderer:Lcom/offsec/nhterm/DemoRenderer;

    iget-boolean v0, v0, Lcom/offsec/nhterm/DemoRenderer;->mPaused:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/offsec/nhterm/DemoGLSurfaceView;->mRenderer:Lcom/offsec/nhterm/DemoRenderer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/offsec/nhterm/DemoRenderer;->mPaused:Z

    invoke-super {p0}, Lcom/offsec/nhterm/GLSurfaceView_SDL;->onPause()V

    iget-object v0, p0, Lcom/offsec/nhterm/DemoGLSurfaceView;->mRenderer:Lcom/offsec/nhterm/DemoRenderer;

    invoke-virtual {v0}, Lcom/offsec/nhterm/DemoRenderer;->nativeGlContextLostAsyncEvent()V

    iget-object v0, p0, Lcom/offsec/nhterm/DemoGLSurfaceView;->mRenderer:Lcom/offsec/nhterm/DemoRenderer;

    iget-object v0, v0, Lcom/offsec/nhterm/DemoRenderer;->accelerometer:Lcom/offsec/nhterm/AccelerometerReader;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/offsec/nhterm/DemoGLSurfaceView;->mRenderer:Lcom/offsec/nhterm/DemoRenderer;

    iget-object v0, v0, Lcom/offsec/nhterm/DemoRenderer;->accelerometer:Lcom/offsec/nhterm/AccelerometerReader;

    invoke-virtual {v0}, Lcom/offsec/nhterm/AccelerometerReader;->stop()V

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "libSDL: DemoGLSurfaceView.onResume(): mRenderer.mGlSurfaceCreated "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/offsec/nhterm/DemoGLSurfaceView;->mRenderer:Lcom/offsec/nhterm/DemoRenderer;

    iget-boolean v1, v1, Lcom/offsec/nhterm/DemoRenderer;->mGlSurfaceCreated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mRenderer.mPaused "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/offsec/nhterm/DemoGLSurfaceView;->mRenderer:Lcom/offsec/nhterm/DemoRenderer;

    iget-boolean v1, v1, Lcom/offsec/nhterm/DemoRenderer;->mPaused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/offsec/nhterm/DemoGLSurfaceView;->mRenderer:Lcom/offsec/nhterm/DemoRenderer;

    iget-boolean v1, v1, Lcom/offsec/nhterm/DemoRenderer;->mPaused:Z

    if-nez v1, :cond_0

    const-string v1, " - not doing anything"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDL"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/offsec/nhterm/DemoGLSurfaceView;->mRenderer:Lcom/offsec/nhterm/DemoRenderer;

    iget-boolean v0, v0, Lcom/offsec/nhterm/DemoRenderer;->mPaused:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/offsec/nhterm/DemoGLSurfaceView;->mRenderer:Lcom/offsec/nhterm/DemoRenderer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/offsec/nhterm/DemoRenderer;->mPaused:Z

    invoke-super {p0}, Lcom/offsec/nhterm/GLSurfaceView_SDL;->onResume()V

    iget-object v0, p0, Lcom/offsec/nhterm/DemoGLSurfaceView;->mRenderer:Lcom/offsec/nhterm/DemoRenderer;

    iget-boolean v0, v0, Lcom/offsec/nhterm/DemoRenderer;->mGlSurfaceCreated:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/offsec/nhterm/DemoGLSurfaceView;->mRenderer:Lcom/offsec/nhterm/DemoRenderer;

    iget-boolean v0, v0, Lcom/offsec/nhterm/DemoRenderer;->mPaused:Z

    if-eqz v0, :cond_3

    :cond_2
    sget-boolean v0, Lcom/offsec/nhterm/Globals;->NonBlockingSwapBuffers:Z

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/offsec/nhterm/DemoGLSurfaceView;->mRenderer:Lcom/offsec/nhterm/DemoRenderer;

    invoke-virtual {v0}, Lcom/offsec/nhterm/DemoRenderer;->nativeGlContextRecreated()V

    :cond_4
    iget-object v0, p0, Lcom/offsec/nhterm/DemoGLSurfaceView;->mRenderer:Lcom/offsec/nhterm/DemoRenderer;

    iget-object v0, v0, Lcom/offsec/nhterm/DemoRenderer;->accelerometer:Lcom/offsec/nhterm/AccelerometerReader;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/offsec/nhterm/DemoGLSurfaceView;->mRenderer:Lcom/offsec/nhterm/DemoRenderer;

    iget-object v0, v0, Lcom/offsec/nhterm/DemoRenderer;->accelerometer:Lcom/offsec/nhterm/AccelerometerReader;

    iget-boolean v0, v0, Lcom/offsec/nhterm/AccelerometerReader;->openedBySDL:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/offsec/nhterm/DemoGLSurfaceView;->mRenderer:Lcom/offsec/nhterm/DemoRenderer;

    iget-object v0, v0, Lcom/offsec/nhterm/DemoRenderer;->accelerometer:Lcom/offsec/nhterm/AccelerometerReader;

    invoke-virtual {v0}, Lcom/offsec/nhterm/AccelerometerReader;->start()V

    :cond_5
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/offsec/nhterm/DemoGLSurfaceView;->getX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/offsec/nhterm/DemoGLSurfaceView;->getX()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0}, Lcom/offsec/nhterm/DemoGLSurfaceView;->getY()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_0
    sget-object v0, Lcom/offsec/nhterm/DifferentTouchInput;->touchInput:Lcom/offsec/nhterm/DifferentTouchInput;

    invoke-virtual {v0, p1}, Lcom/offsec/nhterm/DifferentTouchInput;->process(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, p1}, Lcom/offsec/nhterm/DemoGLSurfaceView;->limitEventRate(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1
.end method
