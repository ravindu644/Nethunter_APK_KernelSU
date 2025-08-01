.class Lcom/offsec/nhterm/AudioThread$RecordingThread;
.super Ljava/lang/Thread;
.source "Audio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nhterm/AudioThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordingThread"
.end annotation


# instance fields
.field mRecordBuffer:[B

.field private sleep:Z

.field private stopped:Z

.field final synthetic this$0:Lcom/offsec/nhterm/AudioThread;

.field private waitStarted:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/offsec/nhterm/AudioThread;)V
    .locals 1

    iput-object p1, p0, Lcom/offsec/nhterm/AudioThread$RecordingThread;->this$0:Lcom/offsec/nhterm/AudioThread;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/offsec/nhterm/AudioThread$RecordingThread;->stopped:Z

    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lcom/offsec/nhterm/AudioThread$RecordingThread;->waitStarted:Ljava/util/concurrent/Semaphore;

    iput-boolean v0, p0, Lcom/offsec/nhterm/AudioThread$RecordingThread;->sleep:Z

    return-void
.end method


# virtual methods
.method init(I)V
    .locals 1

    iget-object v0, p0, Lcom/offsec/nhterm/AudioThread$RecordingThread;->mRecordBuffer:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    if-eq v0, p1, :cond_1

    :cond_0
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/offsec/nhterm/AudioThread$RecordingThread;->mRecordBuffer:[B

    :cond_1
    return-void
.end method

.method public isStopped()Z
    .locals 1

    iget-boolean v0, p0, Lcom/offsec/nhterm/AudioThread$RecordingThread;->stopped:Z

    return v0
.end method

.method public pauseRecording()V
    .locals 1

    iget-boolean v0, p0, Lcom/offsec/nhterm/AudioThread$RecordingThread;->stopped:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nhterm/AudioThread$RecordingThread;->this$0:Lcom/offsec/nhterm/AudioThread;

    invoke-static {v0}, Lcom/offsec/nhterm/AudioThread;->access$000(Lcom/offsec/nhterm/AudioThread;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    :cond_0
    return-void
.end method

.method public resumeRecording()V
    .locals 1

    iget-boolean v0, p0, Lcom/offsec/nhterm/AudioThread$RecordingThread;->stopped:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nhterm/AudioThread$RecordingThread;->this$0:Lcom/offsec/nhterm/AudioThread;

    invoke-static {v0}, Lcom/offsec/nhterm/AudioThread;->access$000(Lcom/offsec/nhterm/AudioThread;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    :goto_0
    iget-object v0, p0, Lcom/offsec/nhterm/AudioThread$RecordingThread;->waitStarted:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    iget-object v0, p0, Lcom/offsec/nhterm/AudioThread$RecordingThread;->waitStarted:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/offsec/nhterm/AudioThread$RecordingThread;->stopped:Z

    iput-boolean v0, p0, Lcom/offsec/nhterm/AudioThread$RecordingThread;->sleep:Z

    :goto_1
    iget-boolean v1, p0, Lcom/offsec/nhterm/AudioThread$RecordingThread;->sleep:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/offsec/nhterm/AudioThread$RecordingThread;->this$0:Lcom/offsec/nhterm/AudioThread;

    invoke-static {v1}, Lcom/offsec/nhterm/AudioThread;->access$000(Lcom/offsec/nhterm/AudioThread;)Landroid/media/AudioRecord;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nhterm/AudioThread$RecordingThread;->mRecordBuffer:[B

    array-length v3, v2

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioRecord;->read([BII)I

    move-result v1

    iget-object v2, p0, Lcom/offsec/nhterm/AudioThread$RecordingThread;->mRecordBuffer:[B

    array-length v2, v2

    if-eq v1, v2, :cond_0

    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/offsec/nhterm/AudioThread$RecordingThread;->this$0:Lcom/offsec/nhterm/AudioThread;

    invoke-static {v1}, Lcom/offsec/nhterm/AudioThread;->access$100(Lcom/offsec/nhterm/AudioThread;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/offsec/nhterm/AudioThread$RecordingThread;->stopped:Z

    iget-object v0, p0, Lcom/offsec/nhterm/AudioThread$RecordingThread;->this$0:Lcom/offsec/nhterm/AudioThread;

    invoke-static {v0}, Lcom/offsec/nhterm/AudioThread;->access$000(Lcom/offsec/nhterm/AudioThread;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    goto :goto_0
.end method

.method public startRecording()V
    .locals 1

    iget-object v0, p0, Lcom/offsec/nhterm/AudioThread$RecordingThread;->this$0:Lcom/offsec/nhterm/AudioThread;

    invoke-static {v0}, Lcom/offsec/nhterm/AudioThread;->access$000(Lcom/offsec/nhterm/AudioThread;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    iget-object v0, p0, Lcom/offsec/nhterm/AudioThread$RecordingThread;->waitStarted:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public stopRecording()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/offsec/nhterm/AudioThread$RecordingThread;->sleep:Z

    :goto_0
    iget-boolean v0, p0, Lcom/offsec/nhterm/AudioThread$RecordingThread;->stopped:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_0
    return-void
.end method
