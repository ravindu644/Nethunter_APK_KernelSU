.class Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;
.super Ljava/lang/Thread;
.source "GLSurfaceView_SDL.java"

# interfaces
.implements Lcom/offsec/nhterm/GLSurfaceView_SDL$SwapBuffersCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nhterm/GLSurfaceView_SDL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GLThread"
.end annotation


# instance fields
.field private mDone:Z

.field private mEglHelper:Lcom/offsec/nhterm/GLSurfaceView_SDL$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mGL:Ljavax/microedition/khronos/opengles/GL10;

.field private mHasSurface:Z

.field private mHeight:I

.field private mNeedStart:Z

.field private mPaused:Z

.field private mRenderMode:I

.field private mRenderer:Lcom/offsec/nhterm/GLSurfaceView_SDL$Renderer;

.field private mRequestRender:Z

.field private mResetVideoSurface:Z

.field private mWidth:I

.field final synthetic this$0:Lcom/offsec/nhterm/GLSurfaceView_SDL;


# direct methods
.method constructor <init>(Lcom/offsec/nhterm/GLSurfaceView_SDL;Lcom/offsec/nhterm/GLSurfaceView_SDL$Renderer;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->this$0:Lcom/offsec/nhterm/GLSurfaceView_SDL;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mNeedStart:Z

    iput-boolean p1, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mResetVideoSurface:Z

    iput-boolean p1, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mDone:Z

    iput p1, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mWidth:I

    iput p1, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mHeight:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mRequestRender:Z

    iput p1, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mRenderMode:I

    iput-object p2, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mRenderer:Lcom/offsec/nhterm/GLSurfaceView_SDL$Renderer;

    invoke-virtual {p2, p0}, Lcom/offsec/nhterm/GLSurfaceView_SDL$Renderer;->setSwapBuffersCallback(Lcom/offsec/nhterm/GLSurfaceView_SDL$SwapBuffersCallback;)V

    const-string p1, "GLThread"

    invoke-virtual {p0, p1}, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private getEvent()Ljava/lang/Runnable;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    monitor-exit p0

    return-object v0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private needToWait()Z
    .locals 6

    iget-object v0, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->this$0:Lcom/offsec/nhterm/GLSurfaceView_SDL;

    invoke-static {v0}, Lcom/offsec/nhterm/GLSurfaceView_SDL;->access$400(Lcom/offsec/nhterm/GLSurfaceView_SDL;)Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mDone:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    monitor-exit p0

    return v2

    :cond_1
    sget-boolean v0, Lcom/offsec/nhterm/Globals;->HorizontalOrientation:Z

    iget v3, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mWidth:I

    iget v4, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mHeight:I

    if-le v3, v4, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    if-eq v0, v5, :cond_3

    monitor-exit p0

    return v1

    :cond_3
    iget-boolean v0, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mPaused:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mHasSurface:Z

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    if-lez v3, :cond_6

    if-lez v4, :cond_6

    iget-boolean v0, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mRequestRender:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mRenderMode:I

    if-ne v0, v1, :cond_6

    :cond_5
    monitor-exit p0

    return v2

    :cond_6
    monitor-exit p0

    return v1

    :cond_7
    :goto_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public ResetVideoSurface()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mResetVideoSurface:Z

    return-void
.end method

.method public SwapBuffers()Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mPaused:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mRenderer:Lcom/offsec/nhterm/GLSurfaceView_SDL$Renderer;

    invoke-virtual {v3}, Lcom/offsec/nhterm/GLSurfaceView_SDL$Renderer;->onSurfaceDestroyed()V

    iget-object v3, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mEglHelper:Lcom/offsec/nhterm/GLSurfaceView_SDL$EglHelper;

    invoke-virtual {v3}, Lcom/offsec/nhterm/GLSurfaceView_SDL$EglHelper;->finish()V

    iput-boolean v4, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mNeedStart:Z

    sget-boolean v3, Lcom/offsec/nhterm/Globals;->NonBlockingSwapBuffers:Z

    if-eqz v3, :cond_1

    monitor-exit p0

    return v0

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_0
    invoke-direct {p0}, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->needToWait()Z

    move-result v3

    if-eqz v3, :cond_2

    monitor-enter p0

    const-wide/16 v5, 0x1f4

    :try_start_1
    invoke-virtual {p0, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    :try_start_2
    const-string v3, "SDL"

    const-string v5, "GLSurfaceView_SDL::GLThread::SwapBuffers(): Who dared to interrupt my slumber?"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    :goto_1
    monitor-exit p0

    goto :goto_0

    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    monitor-enter p0

    :try_start_3
    iget-boolean v3, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mDone:Z

    if-eqz v3, :cond_3

    monitor-exit p0

    return v0

    :cond_3
    iget v3, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mWidth:I

    iget v5, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mHeight:I

    iget-object v6, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->this$0:Lcom/offsec/nhterm/GLSurfaceView_SDL;

    invoke-static {v6, v0}, Lcom/offsec/nhterm/GLSurfaceView_SDL;->access$302(Lcom/offsec/nhterm/GLSurfaceView_SDL;Z)Z

    iput-boolean v0, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mRequestRender:Z

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-boolean v6, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mNeedStart:Z

    if-eqz v6, :cond_4

    iget-object v1, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mEglHelper:Lcom/offsec/nhterm/GLSurfaceView_SDL$EglHelper;

    invoke-virtual {v1}, Lcom/offsec/nhterm/GLSurfaceView_SDL$EglHelper;->start()V

    iput-boolean v0, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mNeedStart:Z

    const/4 v1, 0x1

    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    if-eqz v6, :cond_5

    iget-object v2, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mEglHelper:Lcom/offsec/nhterm/GLSurfaceView_SDL$EglHelper;

    iget-object v6, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->this$0:Lcom/offsec/nhterm/GLSurfaceView_SDL;

    invoke-virtual {v6}, Lcom/offsec/nhterm/GLSurfaceView_SDL;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/offsec/nhterm/GLSurfaceView_SDL$EglHelper;->createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/opengles/GL10;

    iput-object v2, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v2, 0x1

    :cond_5
    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mRenderer:Lcom/offsec/nhterm/GLSurfaceView_SDL$Renderer;

    iget-object v6, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v7, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mEglHelper:Lcom/offsec/nhterm/GLSurfaceView_SDL$EglHelper;

    iget-object v7, v7, Lcom/offsec/nhterm/GLSurfaceView_SDL$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {v1, v6, v7}, Lcom/offsec/nhterm/GLSurfaceView_SDL$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    const/4 v1, 0x0

    :cond_6
    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mRenderer:Lcom/offsec/nhterm/GLSurfaceView_SDL$Renderer;

    iget-object v6, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v2, v6, v3, v5}, Lcom/offsec/nhterm/GLSurfaceView_SDL$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    const/4 v2, 0x0

    :cond_7
    iget-boolean v3, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mResetVideoSurface:Z

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mEglHelper:Lcom/offsec/nhterm/GLSurfaceView_SDL$EglHelper;

    invoke-virtual {v3}, Lcom/offsec/nhterm/GLSurfaceView_SDL$EglHelper;->swap()Z

    move-result v3

    if-eqz v3, :cond_8

    return v4

    :cond_8
    iput-boolean v0, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mResetVideoSurface:Z

    iget-object v3, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mRenderer:Lcom/offsec/nhterm/GLSurfaceView_SDL$Renderer;

    invoke-virtual {v3}, Lcom/offsec/nhterm/GLSurfaceView_SDL$Renderer;->onSurfaceDestroyed()V

    iget-object v3, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mEglHelper:Lcom/offsec/nhterm/GLSurfaceView_SDL$EglHelper;

    invoke-virtual {v3}, Lcom/offsec/nhterm/GLSurfaceView_SDL$EglHelper;->finish()V

    iput-boolean v4, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mNeedStart:Z

    sget-boolean v3, Lcom/offsec/nhterm/Globals;->NonBlockingSwapBuffers:Z

    if-eqz v3, :cond_0

    return v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method public getRenderMode()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mRenderMode:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPause()V
    .locals 2

    const-string v0, "SDL"

    const-string v1, "GLSurfaceView_SDL::onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mPaused:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onResume()V
    .locals 2

    const-string v0, "SDL"

    const-string v1, "GLSurfaceView_SDL::onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mPaused:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onWindowResize(II)V
    .locals 3

    const-string v0, "SDL"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GLSurfaceView_SDL::onWindowResize(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mWidth:I

    iput p2, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mHeight:I

    iget-object v0, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->this$0:Lcom/offsec/nhterm/GLSurfaceView_SDL;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/offsec/nhterm/GLSurfaceView_SDL;->access$302(Lcom/offsec/nhterm/GLSurfaceView_SDL;Z)Z

    iget-object v0, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mRenderer:Lcom/offsec/nhterm/GLSurfaceView_SDL$Renderer;

    invoke-virtual {v0, p1, p2}, Lcom/offsec/nhterm/GLSurfaceView_SDL$Renderer;->onWindowResize(II)V

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public requestExitAndWait()V
    .locals 2

    const-string v0, "SDL"

    const-string v1, "GLSurfaceView_SDL::requestExitAndWait()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mDone:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public requestRender()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mRequestRender:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/offsec/nhterm/GLSurfaceView_SDL;->access$200()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/offsec/nhterm/GLSurfaceView_SDL$EglHelper;

    iget-object v1, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->this$0:Lcom/offsec/nhterm/GLSurfaceView_SDL;

    invoke-direct {v0, v1}, Lcom/offsec/nhterm/GLSurfaceView_SDL$EglHelper;-><init>(Lcom/offsec/nhterm/GLSurfaceView_SDL;)V

    iput-object v0, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mEglHelper:Lcom/offsec/nhterm/GLSurfaceView_SDL$EglHelper;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mNeedStart:Z

    iget-object v1, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->this$0:Lcom/offsec/nhterm/GLSurfaceView_SDL;

    invoke-static {v1, v0}, Lcom/offsec/nhterm/GLSurfaceView_SDL;->access$302(Lcom/offsec/nhterm/GLSurfaceView_SDL;Z)Z

    invoke-virtual {p0}, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->SwapBuffers()Z

    iget-object v0, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mRenderer:Lcom/offsec/nhterm/GLSurfaceView_SDL$Renderer;

    iget-object v1, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v0, v1}, Lcom/offsec/nhterm/GLSurfaceView_SDL$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v0, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mEglHelper:Lcom/offsec/nhterm/GLSurfaceView_SDL$EglHelper;

    invoke-virtual {v0}, Lcom/offsec/nhterm/GLSurfaceView_SDL$EglHelper;->finish()V

    invoke-static {}, Lcom/offsec/nhterm/GLSurfaceView_SDL;->access$200()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    :catch_0
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    if-ltz p1, :cond_1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mRenderMode:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "renderMode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public surfaceCreated()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mHasSurface:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceDestroyed()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/offsec/nhterm/GLSurfaceView_SDL$GLThread;->mHasSurface:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
