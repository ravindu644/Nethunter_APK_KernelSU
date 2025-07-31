.class public Lcom/offsec/nethunter/AudioPlaybackWorker;
.super Ljava/lang/Object;
.source "AudioPlaybackWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/AudioPlaybackWorker$Listener;
    }
.end annotation


# static fields
.field private static final LOOPS_PER_SECOND:I = 0x8


# instance fields
.field private audioBuffer:[B

.field private audioData:Ljava/io/InputStream;

.field private audioTrack:Landroid/media/AudioTrack;

.field private bufferPos:I

.field private byteRate:I

.field private chunkSize:I

.field private error:Ljava/lang/Throwable;

.field private final handler:Landroid/os/Handler;

.field private volatile headroomUsec:J

.field private final host:Ljava/lang/String;

.field private volatile latencyUsec:J

.field private final listener:Lcom/offsec/nethunter/AudioPlaybackWorker$Listener;

.field private numSkip:I

.field private final port:I

.field private sock:Ljava/net/Socket;

.field private volatile stopped:Z

.field private waitingForBufferFill:Z

.field private final wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Ljava/lang/String;ILandroid/os/PowerManager$WakeLock;Landroid/os/Handler;Lcom/offsec/nethunter/AudioPlaybackWorker$Listener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->stopped:Z

    const-wide/16 v0, 0x7d

    iput-wide v0, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->headroomUsec:J

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->latencyUsec:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->waitingForBufferFill:Z

    iput-object p1, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->host:Ljava/lang/String;

    iput p2, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->port:I

    iput-object p3, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->wakeLock:Landroid/os/PowerManager$WakeLock;

    iput-object p4, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->handler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->listener:Lcom/offsec/nethunter/AudioPlaybackWorker$Listener;

    return-void
.end method

.method private cleanup()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->audioBuffer:[B

    iget-object v1, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->audioData:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    iput-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->audioData:Ljava/io/InputStream;

    :cond_0
    iget-object v1, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->sock:Ljava/net/Socket;

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    iput-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->sock:Ljava/net/Socket;

    :cond_1
    iget-object v1, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V

    :cond_2
    iget-object v1, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    iput-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->audioTrack:Landroid/media/AudioTrack;

    :cond_3
    return-void
.end method

.method private connect()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->host:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    array-length v1, v0

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    aget-object v3, v0, v2

    const/4 v4, 0x1

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    :try_start_1
    iput-object v5, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->sock:Ljava/net/Socket;

    iget-boolean v5, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->stopped:Z

    if-nez v5, :cond_0

    new-instance v5, Ljava/net/Socket;

    invoke-direct {v5}, Ljava/net/Socket;-><init>()V

    iput-object v5, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->sock:Ljava/net/Socket;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v5, v1, v4, v1}, Ljava/net/Socket;->setPerformancePreferences(III)V

    iget-object v5, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->sock:Ljava/net/Socket;

    new-instance v6, Ljava/net/InetSocketAddress;

    iget v7, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->port:I

    invoke-direct {v6, v3, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v5, v6}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :cond_0
    :try_start_3
    new-instance v3, Lcom/offsec/nethunter/exception/AudioStoppedException;

    invoke-direct {v3}, Lcom/offsec/nethunter/exception/AudioStoppedException;-><init>()V

    throw v3

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v3

    :try_start_5
    iget-object v5, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->sock:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    invoke-virtual {v3, v5}, Ljava/io/IOException;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    array-length v5, v0

    sub-int/2addr v5, v4

    if-eq v2, v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    throw v3

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never happen"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/net/UnknownHostException;

    const-string v1, "No addresses returned by InetAddress.getAllByName()"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private manageBufferSize()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->latencyUsec:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-ltz v5, :cond_2

    iget-wide v2, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->headroomUsec:J

    add-long/2addr v2, v0

    iget v5, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->byteRate:I

    int-to-long v6, v5

    mul-long v6, v6, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr v6, v0

    int-to-long v8, v5

    mul-long v8, v8, v2

    div-long/2addr v8, v0

    long-to-int v0, v8

    iget-object v1, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->audioData:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    int-to-long v2, v1

    cmp-long v5, v2, v6

    if-lez v5, :cond_0

    iput-boolean v4, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->waitingForBufferFill:Z

    :cond_0
    if-le v1, v0, :cond_3

    iget v0, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->numSkip:I

    add-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr v0, v6

    iget-object v2, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->audioData:Ljava/io/InputStream;

    invoke-virtual {v2, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    iget v5, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->bufferPos:I

    int-to-long v5, v5

    add-long/2addr v5, v2

    const-wide/16 v7, 0x3

    and-long/2addr v5, v7

    long-to-int v6, v5

    if-eqz v6, :cond_1

    rsub-int/lit8 v5, v6, 0x4

    iput v5, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->numSkip:I

    goto :goto_0

    :cond_1
    iput v4, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->numSkip:I

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "skipped: wantSkip="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " actual="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " numSkip="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->numSkip:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bufferPos="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->bufferPos:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Worker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->bufferPos:I

    goto :goto_1

    :cond_2
    iput-boolean v4, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->waitingForBufferFill:Z

    :cond_3
    :goto_1
    return-void
.end method

.method private readFromSocket()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->chunkSize:I

    iget v1, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->bufferPos:I

    sub-int/2addr v0, v1

    iget-object v2, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->audioData:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->audioBuffer:[B

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ltz v0, :cond_0

    iget v1, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->bufferPos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->bufferPos:I

    return-void

    :cond_0
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "Connection closed"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setup()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x2ee00

    iput v0, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->byteRate:I

    const/16 v0, 0xc

    const/4 v1, 0x2

    const v2, 0xbb80

    invoke-static {v2, v0, v1}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v8

    iget v0, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->byteRate:I

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->chunkSize:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setup: minBufferSize="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-double v1, v8

    iget v3, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->byteRate:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "us) chunkSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->chunkSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioPlaybackWorker"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/offsec/nethunter/AudioPlaybackWorker;->connect()V

    iget-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->sock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->audioData:Ljava/io/InputStream;

    new-instance v0, Landroid/media/AudioTrack;

    const/4 v4, 0x3

    const v5, 0xbb80

    const/16 v6, 0xc

    const/4 v7, 0x2

    const/4 v9, 0x1

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->bufferPos:I

    iput v0, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->numSkip:I

    iget v0, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->chunkSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->audioBuffer:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not initialize AudioTrack. state == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeToAudioTrack()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->numSkip:I

    iget v1, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->bufferPos:I

    sub-int/2addr v1, v0

    and-int/lit8 v1, v1, -0x4

    const/4 v2, 0x0

    if-lez v1, :cond_0

    iget-object v3, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->audioTrack:Landroid/media/AudioTrack;

    iget-object v4, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->audioBuffer:[B

    invoke-virtual {v3, v4, v0, v1}, Landroid/media/AudioTrack;->write([BII)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ltz v1, :cond_2

    if-lez v1, :cond_1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->bufferPos:I

    sub-int/2addr v1, v0

    iget-object v3, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->audioBuffer:[B

    invoke-static {v3, v0, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v1, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->bufferPos:I

    iput v2, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->numSkip:I

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "audioTrack.write() returned "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getError()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method synthetic lambda$run$0$com-offsec-nethunter-AudioPlaybackWorker()V
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->listener:Lcom/offsec/nethunter/AudioPlaybackWorker$Listener;

    invoke-interface {v0, p0}, Lcom/offsec/nethunter/AudioPlaybackWorker$Listener;->onPlaybackStarted(Lcom/offsec/nethunter/AudioPlaybackWorker;)V

    return-void
.end method

.method synthetic lambda$run$1$com-offsec-nethunter-AudioPlaybackWorker()V
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->listener:Lcom/offsec/nethunter/AudioPlaybackWorker$Listener;

    invoke-interface {v0, p0}, Lcom/offsec/nethunter/AudioPlaybackWorker$Listener;->onPlaybackBuffering(Lcom/offsec/nethunter/AudioPlaybackWorker;)V

    return-void
.end method

.method synthetic lambda$run$2$com-offsec-nethunter-AudioPlaybackWorker()V
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->listener:Lcom/offsec/nethunter/AudioPlaybackWorker$Listener;

    invoke-interface {v0, p0}, Lcom/offsec/nethunter/AudioPlaybackWorker$Listener;->onPlaybackStopped(Lcom/offsec/nethunter/AudioPlaybackWorker;)V

    return-void
.end method

.method synthetic lambda$run$3$com-offsec-nethunter-AudioPlaybackWorker()V
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->listener:Lcom/offsec/nethunter/AudioPlaybackWorker$Listener;

    invoke-interface {v0, p0}, Lcom/offsec/nethunter/AudioPlaybackWorker$Listener;->onPlaybackStopped(Lcom/offsec/nethunter/AudioPlaybackWorker;)V

    return-void
.end method

.method synthetic lambda$run$4$com-offsec-nethunter-AudioPlaybackWorker()V
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->listener:Lcom/offsec/nethunter/AudioPlaybackWorker$Listener;

    invoke-interface {v0, p0}, Lcom/offsec/nethunter/AudioPlaybackWorker$Listener;->onPlaybackStopped(Lcom/offsec/nethunter/AudioPlaybackWorker;)V

    return-void
.end method

.method synthetic lambda$run$5$com-offsec-nethunter-AudioPlaybackWorker(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->listener:Lcom/offsec/nethunter/AudioPlaybackWorker$Listener;

    invoke-interface {v0, p0, p1}, Lcom/offsec/nethunter/AudioPlaybackWorker$Listener;->onPlaybackError(Lcom/offsec/nethunter/AudioPlaybackWorker;Ljava/lang/Throwable;)V

    return-void
.end method

.method public run()V
    .locals 5

    :try_start_0
    invoke-direct {p0}, Lcom/offsec/nethunter/AudioPlaybackWorker;->setup()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->stopped:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    invoke-direct {p0}, Lcom/offsec/nethunter/AudioPlaybackWorker;->manageBufferSize()V

    iget-boolean v2, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->waitingForBufferFill:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/offsec/nethunter/AudioPlaybackWorker;->readFromSocket()V

    invoke-direct {p0}, Lcom/offsec/nethunter/AudioPlaybackWorker;->writeToAudioTrack()V

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/offsec/nethunter/AudioPlaybackWorker$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/offsec/nethunter/AudioPlaybackWorker$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/AudioPlaybackWorker;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/offsec/nethunter/AudioPlaybackWorker$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/offsec/nethunter/AudioPlaybackWorker$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/AudioPlaybackWorker;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    :cond_2
    const-wide/16 v2, 0x7d

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/offsec/nethunter/AudioPlaybackWorker$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/AudioPlaybackWorker$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/AudioPlaybackWorker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lcom/offsec/nethunter/exception/AudioStoppedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    iget-boolean v1, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->stopped:Z

    if-eqz v1, :cond_4

    instance-of v1, v0, Ljava/net/SocketException;

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/offsec/nethunter/AudioPlaybackWorker$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/AudioPlaybackWorker$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/AudioPlaybackWorker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_4
    const-string v1, "AudioPlaybackWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopWithError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->error:Ljava/lang/Throwable;

    iget-object v1, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/offsec/nethunter/AudioPlaybackWorker$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0}, Lcom/offsec/nethunter/AudioPlaybackWorker$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/AudioPlaybackWorker;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :catch_1
    iget-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/offsec/nethunter/AudioPlaybackWorker$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/AudioPlaybackWorker$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/AudioPlaybackWorker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-direct {p0}, Lcom/offsec/nethunter/AudioPlaybackWorker;->cleanup()V

    return-void

    :goto_2
    invoke-direct {p0}, Lcom/offsec/nethunter/AudioPlaybackWorker;->cleanup()V

    throw v0
.end method

.method public setBufferUsec(JJ)V
    .locals 0

    iput-wide p1, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->headroomUsec:J

    iput-wide p3, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->latencyUsec:J

    return-void
.end method

.method public stop()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->stopped:Z

    iget-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackWorker;->sock:Ljava/net/Socket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
